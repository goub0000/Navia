const express = require('express');
const compression = require('compression');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

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

// Health check endpoint for Railway
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'healthy', timestamp: new Date().toISOString() });
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
    name: 'Flow EdTech Platform',
    short_name: 'Flow',
    start_url: '.',
    display: 'standalone',
    background_color: '#373890',
    theme_color: '#373890',
    description: 'African EdTech platform for students, institutions, parents, counselors, and recommenders.',
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
    // Cache JS/CSS for 7 days (Flutter rebuilds change these)
    else if (filePath.endsWith('.js') || filePath.endsWith('.css')) {
      res.setHeader('Cache-Control', 'public, max-age=604800');
    }
    // HTML must always be revalidated
    else if (filePath.endsWith('.html')) {
      res.setHeader('Cache-Control', 'no-cache');
    }
  }
}));

// Only serve index.html for navigation routes (not files with extensions)
app.get('*', (req, res, next) => {
  // If the request has a file extension, let static middleware handle it
  if (path.extname(req.path)) {
    return next();
  }
  // Otherwise, serve index.html for client-side routing
  res.sendFile(path.join(__dirname, 'build', 'web', 'index.html'));
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Flow EdTech Web Server running on port ${PORT}`);
});
