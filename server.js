const express = require('express');
const compression = require('compression');
const path = require('path');
const fs = require('fs');

const app = express();
const PORT = process.env.PORT || 3000;
const BASE_URL = 'https://web-production-bcafe.up.railway.app';
const BUILD_VERSION = '2026-03-05-v4'; // bump on each deploy to verify caching

// ---------- Security headers ----------
app.disable('x-powered-by');
app.use((req, res, next) => {
  res.setHeader('X-Content-Type-Options', 'nosniff');
  res.setHeader('X-Frame-Options', 'DENY');
  res.setHeader('Referrer-Policy', 'strict-origin-when-cross-origin');
  res.setHeader('Permissions-Policy', 'camera=(), microphone=(), geolocation=()');
  next();
});

// Enable gzip/deflate compression for all responses.
// This is the single biggest performance win: main.dart.js goes from ~17 MB to ~4 MB.
app.use(compression({
  level: 6,            // balanced speed vs ratio (1=fastest, 9=smallest)
  threshold: 1024,     // only compress responses > 1 KB
  filter: (req, res) => {
    // Compress everything except already-compressed formats
    if (req.headers['x-no-compression']) return false;
    return compression.filter(req, res);
  },
}));

// Resolve env var by name, tolerating leading/trailing whitespace in key names.
// Railway stored some variables with accidental spaces in their names
// (e.g. " SUPABASE_ANON_KEY" instead of "SUPABASE_ANON_KEY").
function env(name) {
  if (process.env[name]) return process.env[name];
  for (const key of Object.keys(process.env)) {
    if (key.trim() === name) return process.env[key];
  }
  return '';
}

// ---------- SEO: Route-specific meta tags ----------
const SEO_ROUTES = {
  '/': {
    title: 'Navia | Discover, Compare & Apply to Universities Worldwide',
    description: 'Discover, compare, and apply to 18,000+ universities worldwide. AI-powered recommendations for students everywhere. Free to start — no credit card required.',
  },
  '/universities': {
    title: 'Browse 18,000+ Universities | Navia',
    description: 'Search and filter universities worldwide. Compare tuition, acceptance rates, rankings, and programs to find your perfect fit.',
  },
  '/find-your-path': {
    title: 'Find Your Path | AI-Powered University Matching | Navia',
    description: 'Not sure where to apply? Our AI analyzes your academic profile, interests, and goals to recommend universities and programs tailored to you.',
  },
  '/about': {
    title: 'About Navia | Navigate Your Future',
    description: 'Navia helps students discover, compare, and apply to universities worldwide with AI-powered recommendations and application tracking.',
  },
  '/contact': {
    title: 'Contact Us | Navia',
    description: 'Get in touch with the Navia team. We\'re here to help with your university application journey.',
  },
  '/privacy': {
    title: 'Privacy Policy | Navia',
    description: 'Learn how Navia protects your personal data and privacy. Read our complete privacy policy.',
  },
  '/terms': {
    title: 'Terms of Service | Navia',
    description: 'Read the terms and conditions for using the Navia platform.',
  },
  '/help': {
    title: 'Help Center | Navia',
    description: 'Find answers to common questions about using Navia for your university applications.',
  },
  '/scholarships': {
    title: 'Scholarships for Students | Navia',
    description: 'Discover scholarships available for students at universities worldwide.',
  },
  '/programs': {
    title: 'University Programs | Navia',
    description: 'Browse and compare university programs across disciplines and countries.',
  },
  '/cookies': {
    title: 'Cookie Policy | Navia',
    description: 'Learn about how Navia uses cookies and similar technologies.',
  },
  '/accessibility': {
    title: 'Accessibility | Navia',
    description: 'Navia is committed to making our platform accessible to all users.',
  },
};

// Known valid route prefixes — used to distinguish real pages from 404s
const KNOWN_ROUTE_PREFIXES = [
  '/',
  '/universities',
  '/find-your-path',
  '/about',
  '/contact',
  '/privacy',
  '/terms',
  '/help',
  '/scholarships',
  '/programs',
  '/cookies',
  '/accessibility',
  // Authenticated routes (not indexed, but valid 200s)
  '/login',
  '/register',
  '/forgot-password',
  '/email-verification',
  '/onboarding',
  '/biometric-setup',
  '/admin',
  '/student',
  '/institution',
  '/parent',
  '/counselor',
  '/recommender',
  '/profile',
  '/settings',
];

// Read index.html template once at startup for meta-tag injection
const INDEX_HTML_PATH = path.join(__dirname, 'build', 'web', 'index.html');
let indexHtmlTemplate = '';
try {
  indexHtmlTemplate = fs.readFileSync(INDEX_HTML_PATH, 'utf8');
} catch (e) {
  console.warn('Could not read index.html template at startup — will read on demand');
}

function getIndexHtml() {
  if (!indexHtmlTemplate) {
    try {
      indexHtmlTemplate = fs.readFileSync(INDEX_HTML_PATH, 'utf8');
    } catch (e) {
      return null;
    }
  }
  return indexHtmlTemplate;
}

// Inject route-specific <title> and meta description into the HTML
function injectMeta(html, routeMeta) {
  if (!routeMeta) return html;

  // Replace <title>
  html = html.replace(
    /<title>[^<]*<\/title>/,
    `<title>${routeMeta.title}</title>`
  );

  // Replace meta description
  html = html.replace(
    /<meta name="description" content="[^"]*">/,
    `<meta name="description" content="${routeMeta.description}">`
  );

  // Replace OG title
  html = html.replace(
    /<meta property="og:title" content="[^"]*">/,
    `<meta property="og:title" content="${routeMeta.title}">`
  );

  // Replace OG description
  html = html.replace(
    /<meta property="og:description" content="[^"]*">/,
    `<meta property="og:description" content="${routeMeta.description}">`
  );

  // Replace Twitter title
  html = html.replace(
    /<meta name="twitter:title" content="[^"]*">/,
    `<meta name="twitter:title" content="${routeMeta.title}">`
  );

  // Replace Twitter description
  html = html.replace(
    /<meta name="twitter:description" content="[^"]*">/,
    `<meta name="twitter:description" content="${routeMeta.description}">`
  );

  return html;
}

// ---------- robots.txt ----------
app.get('/robots.txt', (req, res) => {
  res.type('text/plain');
  res.send(
`User-agent: *
Allow: /
Disallow: /admin/
Disallow: /student/
Disallow: /institution/
Disallow: /parent/
Disallow: /counselor/
Disallow: /recommender/
Disallow: /login
Disallow: /register
Disallow: /forgot-password
Disallow: /email-verification
Disallow: /onboarding
Disallow: /biometric-setup
Disallow: /profile/
Disallow: /settings/
Disallow: /env-config.js
Sitemap: ${BASE_URL}/sitemap.xml
`);
});

// ---------- sitemap.xml ----------
app.get('/sitemap.xml', (req, res) => {
  const today = new Date().toISOString().split('T')[0];

  const urls = [
    { loc: '/',              changefreq: 'daily',   priority: '1.0' },
    { loc: '/universities',  changefreq: 'weekly',  priority: '0.9' },
    { loc: '/find-your-path',changefreq: 'monthly', priority: '0.8' },
    { loc: '/about',         changefreq: 'monthly', priority: '0.7' },
    { loc: '/contact',       changefreq: 'monthly', priority: '0.7' },
    { loc: '/scholarships',  changefreq: 'weekly',  priority: '0.7' },
    { loc: '/programs',      changefreq: 'weekly',  priority: '0.7' },
    { loc: '/help',          changefreq: 'monthly', priority: '0.5' },
    { loc: '/privacy',       changefreq: 'monthly', priority: '0.5' },
    { loc: '/terms',         changefreq: 'monthly', priority: '0.5' },
    { loc: '/cookies',       changefreq: 'monthly', priority: '0.5' },
    { loc: '/accessibility', changefreq: 'monthly', priority: '0.5' },
  ];

  const urlEntries = urls.map(u =>
`  <url>
    <loc>${BASE_URL}${u.loc}</loc>
    <lastmod>${today}</lastmod>
    <changefreq>${u.changefreq}</changefreq>
    <priority>${u.priority}</priority>
  </url>`
  ).join('\n');

  res.type('application/xml');
  res.send(
`<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urlEntries}
</urlset>
`);
});

// Health check endpoint for Railway
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'healthy', version: BUILD_VERSION, timestamp: new Date().toISOString() });
});

// Runtime config: expose env vars to Flutter web app as a JS global.
// Loaded synchronously by index.html before flutter_bootstrap.js.
app.get('/env-config.js', (req, res) => {
  res.setHeader('Content-Type', 'application/javascript');
  res.setHeader('Cache-Control', 'no-store');
  res.send(
    `window.FLOW_CONFIG={` +
    `SUPABASE_URL:${JSON.stringify(env('SUPABASE_URL'))},` +
    `SUPABASE_ANON_KEY:${JSON.stringify(env('SUPABASE_ANON_KEY'))},` +
    `API_BASE_URL:${JSON.stringify(env('API_BASE_URL'))}` +
    `};`
  );
});

// PWA manifest — served directly because Docker's .dockerignore excludes
// *.json from the build context and Flutter may not copy it to build/web/.
app.get('/manifest.json', (req, res) => {
  res.json({
    name: 'Navia — Navigate Your Future',
    short_name: 'Navia',
    start_url: '/',
    display: 'standalone',
    background_color: '#0D1117',
    theme_color: '#2EC4B6',
    description: 'Discover, compare, and apply to universities worldwide. AI-powered recommendations for students everywhere.',
    orientation: 'portrait-primary',
    prefer_related_applications: false,
    icons: [
      { src: 'icons/Icon-192.png', sizes: '192x192', type: 'image/png' },
      { src: 'icons/Icon-512.png', sizes: '512x512', type: 'image/png' },
      { src: 'icons/Icon-maskable-192.png', sizes: '192x192', type: 'image/png', purpose: 'maskable' },
      { src: 'icons/Icon-maskable-512.png', sizes: '512x512', type: 'image/png', purpose: 'maskable' }
    ]
  });
});

// Serve static files from Flutter web build with aggressive caching.
// Flutter's build output uses content-hashed filenames (main.dart.js includes a hash
// in the service worker manifest), so hashed assets can be cached forever.
app.use(express.static(path.join(__dirname, 'build', 'web'), {
  maxAge: '7d',          // default: cache static assets for 7 days
  immutable: false,      // let browser revalidate after maxAge
  etag: true,            // enable ETag for conditional requests
  lastModified: true,
  setHeaders: (res, filePath) => {
    if (filePath.endsWith('.json')) {
      res.setHeader('Content-Type', 'application/json');
    }
    // Long-cache immutable assets (WASM, hashed JS chunks, fonts)
    if (filePath.endsWith('.wasm') || filePath.endsWith('.woff2') || filePath.endsWith('.woff')) {
      res.setHeader('Cache-Control', 'public, max-age=31536000, immutable');
    }
    // Cache images and icons for 30 days
    else if (/\.(png|jpg|jpeg|gif|ico|svg|webp)$/.test(filePath)) {
      res.setHeader('Cache-Control', 'public, max-age=2592000');
    }
    // Flutter bootstrap & service worker must never be cached — they contain
    // the version hash that triggers cache invalidation for all other assets.
    // If these are stale, the browser serves old main.dart.js for days.
    else if (filePath.endsWith('flutter_bootstrap.js') || filePath.endsWith('flutter_service_worker.js')) {
      res.setHeader('Cache-Control', 'no-cache');
    }
    // Cache other JS/CSS for 7 days (service worker handles versioned invalidation)
    else if (filePath.endsWith('.js') || filePath.endsWith('.css')) {
      res.setHeader('Cache-Control', 'public, max-age=604800');
    }
    // HTML must always be revalidated
    else if (filePath.endsWith('.html')) {
      res.setHeader('Cache-Control', 'no-cache');
    }
  }
}));

// SPA catch-all: serve index.html with route-specific meta tags or 404 status
app.get('*', (req, res, next) => {
  // If the request has a file extension, it's a missing static file — skip
  if (path.extname(req.path)) {
    return next();
  }

  const html = getIndexHtml();
  if (!html) {
    return res.status(500).send('Server error: index.html not found');
  }

  // Check if the path matches a known route
  const normalizedPath = req.path.replace(/\/+$/, '') || '/';
  const isKnownRoute = KNOWN_ROUTE_PREFIXES.some(prefix => {
    if (prefix === '/') return normalizedPath === '/';
    return normalizedPath === prefix || normalizedPath.startsWith(prefix + '/');
  });

  // Inject route-specific meta tags if available
  const routeMeta = SEO_ROUTES[normalizedPath];
  const finalHtml = injectMeta(html, routeMeta);

  // Known routes get 200, unknown routes get 404 (so crawlers skip them)
  const statusCode = isKnownRoute ? 200 : 404;
  res.status(statusCode).type('html').send(finalHtml);
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Navia Web Server ${BUILD_VERSION} running on port ${PORT}`);
});
