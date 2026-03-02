// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Navia - Plateforme EdTech Africaine';

  @override
  String get loading => 'Chargement...';

  @override
  String get backToTop => 'Haut de page';

  @override
  String get navHome => 'Accueil';

  @override
  String get navUniversities => 'Universités';

  @override
  String get navAbout => 'À propos';

  @override
  String get navContact => 'Contact';

  @override
  String get navDashboard => 'Tableau de bord';

  @override
  String get navSignIn => 'Connexion';

  @override
  String get navGetStarted => 'Commencer';

  @override
  String get loginTitle => 'Navia';

  @override
  String get loginSubtitle => 'Plateforme EdTech Africaine';

  @override
  String get loginEmailLabel => 'Adresse e-mail';

  @override
  String get loginPasswordLabel => 'Mot de passe';

  @override
  String get loginPasswordEmpty => 'Veuillez entrer votre mot de passe';

  @override
  String get loginPasswordTooShort =>
      'Le mot de passe doit contenir au moins 6 caractères';

  @override
  String get loginForgotPassword => 'Mot de passe oublié ?';

  @override
  String get loginButton => 'Se connecter';

  @override
  String get loginOr => 'OU';

  @override
  String get loginCreateAccount => 'Créer un compte';

  @override
  String get loginResetPassword => 'Réinitialiser le mot de passe';

  @override
  String get loginAlreadyHaveAccount => 'Vous avez déjà un compte ? ';

  @override
  String get registerTitle => 'Rejoignez Navia';

  @override
  String get registerSubtitle => 'Commencez votre parcours éducatif';

  @override
  String get registerAppBarTitle => 'Créer un compte';

  @override
  String get registerFullNameLabel => 'Nom complet';

  @override
  String get registerEmailLabel => 'Adresse e-mail';

  @override
  String get registerRoleLabel => 'Je suis...';

  @override
  String get registerPasswordLabel => 'Mot de passe';

  @override
  String get registerConfirmPasswordLabel => 'Confirmer le mot de passe';

  @override
  String get registerConfirmPasswordEmpty =>
      'Veuillez confirmer votre mot de passe';

  @override
  String get registerPasswordsDoNotMatch =>
      'Les mots de passe ne correspondent pas';

  @override
  String get registerButton => 'Créer un compte';

  @override
  String get registerLoginInstead => 'Se connecter';

  @override
  String get registerResetPassword => 'Réinitialiser le mot de passe';

  @override
  String get registerLogin => 'Connexion';

  @override
  String get passwordStrengthWeak => 'Faible';

  @override
  String get passwordStrengthFair => 'Moyen';

  @override
  String get passwordStrengthGood => 'Bon';

  @override
  String get passwordStrengthStrong => 'Fort';

  @override
  String get passwordReq8Chars => '8+ caractères';

  @override
  String get passwordReqUppercase => 'Majuscule';

  @override
  String get passwordReqLowercase => 'Minuscule';

  @override
  String get passwordReqNumber => 'Chiffre';

  @override
  String get forgotPasswordTitle => 'Mot de passe oublié ?';

  @override
  String get forgotPasswordDescription =>
      'Entrez votre adresse e-mail et nous vous enverrons les instructions pour réinitialiser votre mot de passe.';

  @override
  String get forgotPasswordEmailLabel => 'Adresse e-mail';

  @override
  String get forgotPasswordEmailHint => 'Entrez votre e-mail';

  @override
  String get forgotPasswordSendButton => 'Envoyer le lien';

  @override
  String get forgotPasswordBackToLogin => 'Retour à la connexion';

  @override
  String get forgotPasswordCheckEmail => 'Vérifiez votre e-mail';

  @override
  String get forgotPasswordSentTo =>
      'Nous avons envoyé les instructions de réinitialisation à :';

  @override
  String get forgotPasswordDidntReceive => 'Vous n\'avez pas reçu l\'e-mail ?';

  @override
  String get forgotPasswordCheckSpam =>
      'Vérifiez votre dossier spam/courrier indésirable';

  @override
  String get forgotPasswordCheckCorrect =>
      'Assurez-vous que l\'adresse e-mail est correcte';

  @override
  String get forgotPasswordWait =>
      'Attendez quelques minutes pour recevoir l\'e-mail';

  @override
  String get forgotPasswordResend => 'Renvoyer l\'e-mail';

  @override
  String get emailVerifyTitle => 'Vérifiez votre e-mail';

  @override
  String get emailVerifyAppBarTitle => 'Vérification de l\'e-mail';

  @override
  String get emailVerifySentTo =>
      'Nous avons envoyé un lien de vérification à :';

  @override
  String get emailVerifyNextSteps => 'Étapes suivantes';

  @override
  String get emailVerifyStep1 => 'Vérifiez votre boîte de réception';

  @override
  String get emailVerifyStep2 => 'Cliquez sur le lien de vérification';

  @override
  String get emailVerifyStep3 => 'Revenez ici pour continuer';

  @override
  String get emailVerifyCheckButton => 'J\'ai vérifié mon e-mail';

  @override
  String get emailVerifyChecking => 'Vérification...';

  @override
  String get emailVerifyResend => 'Renvoyer l\'e-mail';

  @override
  String emailVerifyResendIn(int seconds) {
    return 'Renvoyer dans ${seconds}s';
  }

  @override
  String get emailVerifyNotYet =>
      'E-mail pas encore vérifié. Veuillez vérifier votre boîte de réception.';

  @override
  String emailVerifyCheckError(String error) {
    return 'Erreur lors de la vérification : $error';
  }

  @override
  String get emailVerifySent =>
      'E-mail de vérification envoyé ! Vérifiez votre boîte de réception.';

  @override
  String emailVerifySendFailed(String error) {
    return 'Échec de l\'envoi : $error';
  }

  @override
  String get emailVerifySuccess => 'E-mail vérifié !';

  @override
  String get emailVerifySuccessMessage =>
      'Votre e-mail a été vérifié avec succès.';

  @override
  String get emailVerifyDidntReceive => 'Vous n\'avez pas reçu l\'e-mail ?';

  @override
  String get emailVerifySpamTip =>
      'Vérifiez votre dossier spam/courrier indésirable';

  @override
  String get emailVerifyCorrectTip =>
      'Assurez-vous que l\'adresse e-mail est correcte';

  @override
  String get emailVerifyWaitTip => 'Attendez quelques minutes et réessayez';

  @override
  String get emailVerifyAutoCheck =>
      'Vérification automatique toutes les 5 secondes';

  @override
  String get onboardingWelcomeTitle => 'Bienvenue sur Navia';

  @override
  String get onboardingWelcomeDesc =>
      'Votre plateforme complète pour les opportunités éducatives en Afrique';

  @override
  String get onboardingCoursesTitle => 'Découvrez les cours';

  @override
  String get onboardingCoursesDesc =>
      'Parcourez et inscrivez-vous aux cours des meilleures institutions du continent';

  @override
  String get onboardingProgressTitle => 'Suivez votre progression';

  @override
  String get onboardingProgressDesc =>
      'Suivez votre parcours académique avec des analyses et des statistiques détaillées';

  @override
  String get onboardingConnectTitle => 'Connectez et collaborez';

  @override
  String get onboardingConnectDesc =>
      'Échangez avec des conseillers, recevez des recommandations et gérez vos candidatures';

  @override
  String get onboardingBack => 'Retour';

  @override
  String get onboardingSkip => 'Passer';

  @override
  String get onboardingNext => 'Suivant';

  @override
  String get onboardingGetStarted => 'Commencer';

  @override
  String get onboardingFeatureCourseSelection => 'Large sélection de cours';

  @override
  String get onboardingFeatureFilter => 'Filtrer par catégorie et niveau';

  @override
  String get onboardingFeatureDetails =>
      'Informations détaillées sur les cours';

  @override
  String get onboardingFeatureProgress => 'Suivi de progression en temps réel';

  @override
  String get onboardingFeatureAnalytics => 'Analyses de performance';

  @override
  String get onboardingFeatureAchievements => 'Réalisations';

  @override
  String get heroTrustBadge => 'Approuvé par plus de 200 universités';

  @override
  String get heroHeadline => 'Trouvez l\'université\nidéale pour vous';

  @override
  String get heroSubheadline =>
      'Découvrez, comparez et postulez à plus de 18 000 universités\navec des recommandations personnalisées propulsées par l\'IA';

  @override
  String get heroStartFreeTrial => 'Essai gratuit';

  @override
  String get heroTakeATour => 'Visite guidée';

  @override
  String get heroStatActiveUsers => 'Utilisateurs actifs';

  @override
  String get heroStatUniversities => 'Universités';

  @override
  String get heroStatCountries => 'Pays';

  @override
  String get whyChooseTitle => 'Pourquoi choisir Navia ?';

  @override
  String get whyChooseSubtitle => 'Conçu pour l\'Afrique, pensé pour tous';

  @override
  String get valueOfflineTitle => 'Hors-ligne d\'abord';

  @override
  String get valueOfflineDesc =>
      'Accédez à votre contenu à tout moment, partout—même sans connexion internet';

  @override
  String get valueMobileMoneyTitle => 'Paiement mobile';

  @override
  String get valueMobileMoneyDesc =>
      'Payez avec M-Pesa, MTN Money et d\'autres méthodes de paiement locales';

  @override
  String get valueMultiLangTitle => 'Multilingue';

  @override
  String get valueMultiLangDesc =>
      'Plateforme disponible en plusieurs langues africaines pour votre confort';

  @override
  String get socialProofTitle =>
      'Approuvé par les institutions leaders en Afrique';

  @override
  String get testimonialsTitle => 'Ce que disent nos utilisateurs';

  @override
  String get testimonialsSubtitle =>
      'Témoignages d\'étudiants, d\'institutions et d\'éducateurs';

  @override
  String get quizBadge => 'Trouvez votre voie';

  @override
  String get quizTitle => 'Vous ne savez pas\npar où commencer ?';

  @override
  String get quizDescription =>
      'Répondez à notre quiz rapide pour découvrir les universités et programmes qui correspondent à vos intérêts, objectifs et profil académique.';

  @override
  String get quizDuration => '2 minutes';

  @override
  String get quizAIPowered => 'Propulsé par l\'IA';

  @override
  String get featuresTitle => 'Fonctionnalités';

  @override
  String get featuresSubtitle =>
      'Un écosystème éducatif complet conçu pour l\'Afrique moderne';

  @override
  String get featureLearningTitle => 'Apprentissage complet';

  @override
  String get featureLearningDesc =>
      'Accédez aux cours, suivez votre progression et gérez vos candidatures en un seul endroit';

  @override
  String get featureCollabTitle => 'Conçu pour la collaboration';

  @override
  String get featureCollabDesc =>
      'Connectez étudiants, parents, conseillers et institutions en toute simplicité';

  @override
  String get featureSecurityTitle => 'Sécurité de niveau entreprise';

  @override
  String get featureSecurityDesc =>
      'Chiffrement de niveau bancaire et protection des données conforme au RGPD';

  @override
  String get featuresWorksOnAllDevices => 'Fonctionne sur tous les appareils';

  @override
  String get builtForEveryoneTitle => 'Conçu pour tous';

  @override
  String get builtForEveryoneSubtitle =>
      'Choisissez votre rôle et commencez avec une expérience personnalisée';

  @override
  String get roleStudents => 'Étudiants';

  @override
  String get roleStudentsDesc =>
      'Suivez vos cours, gérez vos candidatures et atteignez vos objectifs éducatifs';

  @override
  String get roleInstitutions => 'Institutions';

  @override
  String get roleInstitutionsDesc =>
      'Simplifiez les admissions, gérez les programmes et engagez les étudiants';

  @override
  String get roleParents => 'Parents';

  @override
  String get roleParentsDesc =>
      'Suivez la progression, communiquez avec les enseignants et soutenez vos enfants';

  @override
  String get roleCounselors => 'Conseillers';

  @override
  String get roleCounselorsDesc =>
      'Guidez les étudiants, gérez les sessions et suivez les résultats';

  @override
  String getStartedAs(String role) {
    return 'Commencer en tant que $role';
  }

  @override
  String get ctaTitle => 'Prêt à transformer\nvotre parcours éducatif ?';

  @override
  String get ctaSubtitle =>
      'Rejoignez plus de 50 000 étudiants, institutions et éducateurs qui font confiance à Navia';

  @override
  String get ctaButton => 'Commencez votre essai gratuit';

  @override
  String get ctaNoCreditCard => 'Aucune carte de crédit requise';

  @override
  String get cta14DayTrial => 'Essai gratuit de 14 jours';

  @override
  String get footerTagline =>
      'La plateforme EdTech leader en Afrique\nDonner accès à l\'éducation sans frontières.';

  @override
  String get footerProducts => 'Produits';

  @override
  String get footerStudentPortal => 'Portail étudiant';

  @override
  String get footerInstitutionDashboard => 'Tableau de bord institution';

  @override
  String get footerParentApp => 'Application parents';

  @override
  String get footerCounselorTools => 'Outils conseillers';

  @override
  String get footerMobileApps => 'Applications mobiles';

  @override
  String get footerCompany => 'Entreprise';

  @override
  String get footerAboutUs => 'À propos';

  @override
  String get footerCareers => 'Carrières';

  @override
  String get footerPressKit => 'Kit presse';

  @override
  String get footerPartners => 'Partenaires';

  @override
  String get footerContact => 'Contact';

  @override
  String get footerResources => 'Ressources';

  @override
  String get footerHelpCenter => 'Centre d\'aide';

  @override
  String get footerDocumentation => 'Documentation';

  @override
  String get footerApiReference => 'Référence API';

  @override
  String get footerCommunity => 'Communauté';

  @override
  String get footerBlog => 'Blog';

  @override
  String get footerLegal => 'Mentions légales';

  @override
  String get footerPrivacyPolicy => 'Politique de confidentialité';

  @override
  String get footerTermsOfService => 'Conditions d\'utilisation';

  @override
  String get footerCookiePolicy => 'Politique des cookies';

  @override
  String get footerDataProtection => 'Protection des données';

  @override
  String get footerCompliance => 'Conformité';

  @override
  String get footerCopyright => '© 2025 Navia. Tous droits réservés.';

  @override
  String get footerSoc2 => 'Certifié SOC 2';

  @override
  String get footerIso27001 => 'ISO 27001';

  @override
  String get footerGdpr => 'Conforme au RGPD';

  @override
  String get searchHint =>
      'Rechercher des universités par nom, pays ou programme...';

  @override
  String get searchUniversitiesCount => 'Rechercher parmi 18 000+ universités';

  @override
  String get searchPlaceholder => 'Rechercher des universités...';

  @override
  String get searchBadge => '18K+';

  @override
  String get searchSuggestionGhana => 'Université du Ghana';

  @override
  String get searchSuggestionGhanaLocation => 'Accra, Ghana';

  @override
  String get searchSuggestionCapeTown => 'Université du Cap';

  @override
  String get searchSuggestionCapeTownLocation => 'Le Cap, Afrique du Sud';

  @override
  String get searchSuggestionAshesi => 'Université Ashesi';

  @override
  String get searchSuggestionAshesiLocation => 'Berekuso, Ghana';

  @override
  String get searchSuggestionPublicUniversity => 'Université publique';

  @override
  String get searchSuggestionPrivateUniversity => 'Université privée';

  @override
  String get filterEngineering => 'Ingénierie';

  @override
  String get filterBusiness => 'Commerce';

  @override
  String get filterMedicine => 'Médecine';

  @override
  String get filterArts => 'Arts';

  @override
  String get filterScience => 'Sciences';

  @override
  String get quizFindYourPath => 'Trouvez votre voie';

  @override
  String get quizQuickPreview => 'Aperçu rapide';

  @override
  String get quizFieldQuestion => 'Quel domaine vous intéresse le plus ?';

  @override
  String get quizFieldTechEngineering => 'Technologie et ingénierie';

  @override
  String get quizFieldBusinessFinance => 'Commerce et finance';

  @override
  String get quizFieldHealthcareMedicine => 'Santé et médecine';

  @override
  String get quizFieldArtsHumanities => 'Arts et sciences humaines';

  @override
  String get quizLocationQuestion => 'Où préféreriez-vous étudier ?';

  @override
  String get quizLocationWestAfrica => 'Afrique de l\'Ouest';

  @override
  String get quizLocationEastAfrica => 'Afrique de l\'Est';

  @override
  String get quizLocationSouthernAfrica => 'Afrique australe';

  @override
  String get quizLocationAnywhereAfrica => 'N\'importe où en Afrique';

  @override
  String get quizGetRecommendations => 'Obtenez vos recommandations';

  @override
  String get quizTakeTheQuiz => 'Répondre au quiz';

  @override
  String get tourTitle => 'Découvrez Navia en action';

  @override
  String get tourSubtitle => 'Une visite guidée de la plateforme';

  @override
  String get tourClose => 'Fermer';

  @override
  String get tourBack => 'Retour';

  @override
  String get tourNext => 'Suivant';

  @override
  String get tourGetStarted => 'Commencer';

  @override
  String get tourSlide1Title => 'Découvrez les universités';

  @override
  String get tourSlide1Desc =>
      'Recherchez et comparez les universités en Afrique avec des profils détaillés, des classements et des informations sur les programmes.';

  @override
  String get tourSlide1H1 => 'Parcourez plus de 500 institutions';

  @override
  String get tourSlide1H2 =>
      'Filtrez par pays, programme et frais de scolarité';

  @override
  String get tourSlide1H3 => 'Consultez les profils détaillés des universités';

  @override
  String get tourSlide2Title => 'Trouvez votre voie';

  @override
  String get tourSlide2Desc =>
      'Répondez à notre quiz guidé pour obtenir des recommandations personnalisées d\'universités et de programmes adaptés à vos objectifs.';

  @override
  String get tourSlide2H1 => 'Recommandations propulsées par l\'IA';

  @override
  String get tourSlide2H2 => 'Correspondance de personnalité et d\'intérêts';

  @override
  String get tourSlide2H3 => 'Suggestions de programmes sur mesure';

  @override
  String get tourSlide3Title => 'Tableaux de bord par rôle';

  @override
  String get tourSlide3Desc =>
      'Des tableaux de bord dédiés pour les étudiants, parents, conseillers et institutions — chacun avec les outils nécessaires.';

  @override
  String get tourSlide3H1 => 'Suivez les candidatures et la progression';

  @override
  String get tourSlide3H2 => 'Surveillez les performances des étudiants';

  @override
  String get tourSlide3H3 => 'Gérez les données institutionnelles';

  @override
  String get tourSlide4Title => 'Assistant d\'étude IA';

  @override
  String get tourSlide4Desc =>
      'Obtenez une aide instantanée pour les questions d\'admission, les conseils de candidature et la planification académique grâce à notre chatbot IA.';

  @override
  String get tourSlide4H1 => 'Disponible 24h/24, 7j/7';

  @override
  String get tourSlide4H2 => 'Réponses contextuelles';

  @override
  String get tourSlide4H3 => 'Rappels de dates limites de candidature';

  @override
  String get tourSlide5Title => 'Écosystème connecté';

  @override
  String get tourSlide5Desc =>
      'Étudiants, parents, conseillers et institutions collaborent sans effort sur une seule plateforme.';

  @override
  String get tourSlide5H1 => 'Notifications en temps réel';

  @override
  String get tourSlide5H2 => 'Suivi de progression partagé';

  @override
  String get tourSlide5H3 => 'Messagerie sécurisée';

  @override
  String get uniSearchTitle => 'Rechercher des universités';

  @override
  String get uniSearchClearAll => 'Tout effacer';

  @override
  String get uniSearchHint => 'Rechercher par nom d\'université...';

  @override
  String get uniSearchFilters => 'Filtres';

  @override
  String uniSearchResultCount(int count) {
    return '$count universités trouvées';
  }

  @override
  String get uniSearchNoMatchFilters =>
      'Aucune université ne correspond à vos filtres';

  @override
  String get uniSearchNoResults => 'Aucune université trouvée';

  @override
  String get uniSearchAdjustFilters =>
      'Essayez d\'ajuster vos filtres pour voir plus de résultats';

  @override
  String get uniSearchTrySearching =>
      'Essayez de rechercher un nom d\'université';

  @override
  String get uniSearchError => 'Une erreur est survenue';

  @override
  String get uniSearchRetry => 'Réessayer';

  @override
  String get uniSearchFilterReset => 'Réinitialiser';

  @override
  String get uniSearchFilterCountry => 'Pays';

  @override
  String get uniSearchFilterSelectCountry => 'Sélectionner un pays';

  @override
  String get uniSearchFilterAllCountries => 'Tous les pays';

  @override
  String get uniSearchFilterUniType => 'Type d\'université';

  @override
  String get uniSearchFilterSelectType => 'Sélectionner un type';

  @override
  String get uniSearchFilterAllTypes => 'Tous les types';

  @override
  String get uniSearchFilterLocationType => 'Type de localisation';

  @override
  String get uniSearchFilterSelectLocation =>
      'Sélectionner un type de localisation';

  @override
  String get uniSearchFilterAllLocations => 'Toutes les localisations';

  @override
  String get uniSearchFilterMaxTuition => 'Frais de scolarité maximum (USD/an)';

  @override
  String get uniSearchFilterNoLimit => 'Sans limite';

  @override
  String get uniSearchFilterAny => 'Tous';

  @override
  String get uniSearchFilterAcceptanceRate => 'Taux d\'admission';

  @override
  String get uniSearchFilterAnyRate => 'Tous les taux';

  @override
  String get uniSearchFilterApply => 'Appliquer les filtres';

  @override
  String uniSearchAcceptance(String rate) {
    return '$rate% d\'admission';
  }

  @override
  String uniSearchStudents(String count) {
    return '$count étudiants';
  }

  @override
  String get uniDetailNotFound => 'Cette université n\'a pas pu être trouvée.';

  @override
  String uniDetailError(String error) {
    return 'Erreur lors du chargement de l\'université : $error';
  }

  @override
  String get uniDetailVisitWebsite => 'Visiter le site web';

  @override
  String get uniDetailLocation => 'Localisation';

  @override
  String get uniDetailAddress => 'Adresse';

  @override
  String get uniDetailSetting => 'Environnement';

  @override
  String get uniDetailKeyStats => 'Statistiques clés';

  @override
  String get uniDetailTotalStudents => 'Nombre total d\'étudiants';

  @override
  String get uniDetailAcceptanceRate => 'Taux d\'admission';

  @override
  String get uniDetailGradRate => 'Taux de diplôme en 4 ans';

  @override
  String get uniDetailAvgGPA => 'Moyenne générale (GPA)';

  @override
  String get uniDetailTuitionCosts => 'Frais de scolarité';

  @override
  String get uniDetailTuitionOutState => 'Frais (hors état)';

  @override
  String get uniDetailTotalCost => 'Coût total';

  @override
  String get uniDetailMedianEarnings => 'Revenus médians (10 ans)';

  @override
  String get uniDetailTestScores => 'Scores aux tests (25e-75e percentile)';

  @override
  String get uniDetailSATMath => 'SAT Math';

  @override
  String get uniDetailSATEBRW => 'SAT EBRW';

  @override
  String get uniDetailACTComposite => 'ACT Composite';

  @override
  String get uniDetailRankings => 'Classements';

  @override
  String get uniDetailGlobalRank => 'Classement mondial';

  @override
  String get uniDetailNationalRank => 'Classement national';

  @override
  String get uniDetailAbout => 'À propos';

  @override
  String get uniDetailType => 'Type';

  @override
  String get uniDetailWebsite => 'Site web';

  @override
  String get uniDetailDescription => 'Description';

  @override
  String get dashCommonBack => 'Retour';

  @override
  String get dashCommonHome => 'Accueil';

  @override
  String get dashCommonProfile => 'Profil';

  @override
  String get dashCommonSettings => 'Paramètres';

  @override
  String get dashCommonOverview => 'Aperçu';

  @override
  String get dashCommonRetry => 'Réessayer';

  @override
  String get dashCommonViewAll => 'Tout voir';

  @override
  String get dashCommonClose => 'Fermer';

  @override
  String get dashCommonCancel => 'Annuler';

  @override
  String get dashCommonPending => 'En attente';

  @override
  String get dashCommonLoadingOverview => 'Chargement de l\'aperçu...';

  @override
  String get dashCommonNotifications => 'Notifications';

  @override
  String get dashCommonMessages => 'Messages';

  @override
  String get dashCommonQuickActions => 'Actions rapides';

  @override
  String get dashCommonWelcomeBack => 'Bon retour !';

  @override
  String get dashCommonRecentActivity => 'Activité récente';

  @override
  String get dashCommonNoRecentActivity => 'Aucune activité récente';

  @override
  String get dashCommonSwitchRole => 'Changer de rôle';

  @override
  String get dashCommonLogout => 'Déconnexion';

  @override
  String get dashCommonRecommendedForYou => 'Recommandé pour vous';

  @override
  String get dashCommonApplications => 'Candidatures';

  @override
  String get dashCommonAccepted => 'Accepté';

  @override
  String get dashCommonRejected => 'Refusé';

  @override
  String get dashCommonUnderReview => 'En cours d\'examen';

  @override
  String get dashCommonRequests => 'Demandes';

  @override
  String get dashCommonUpcoming => 'À venir';

  @override
  String get dashCommonMeetings => 'Réunions';

  @override
  String get dashCommonSubmitted => 'Soumis';

  @override
  String get dashCommonDraft => 'Brouillon';

  @override
  String dashCommonDays(int count) {
    return '$count jours';
  }

  @override
  String dashCommonMin(int count) {
    return '$count min';
  }

  @override
  String get dashCommonNoDataAvailable => 'Aucune donnée disponible';

  @override
  String get dashStudentTitle => 'Tableau de bord étudiant';

  @override
  String get dashStudentMyApplications => 'Mes candidatures';

  @override
  String get dashStudentMyCourses => 'Mes cours';

  @override
  String get dashStudentProgress => 'Progression';

  @override
  String get dashStudentEditProfile => 'Modifier le profil';

  @override
  String get dashStudentCourses => 'Cours';

  @override
  String get dashStudentContinueJourney =>
      'Continuez votre parcours d\'apprentissage';

  @override
  String get dashStudentSuccessRate => 'Taux de réussite des candidatures';

  @override
  String get dashStudentLetters => 'Lettres';

  @override
  String get dashStudentParentLink => 'Lien parent';

  @override
  String get dashStudentCounseling => 'Conseil';

  @override
  String get dashStudentSchedule => 'Emploi du temps';

  @override
  String get dashStudentResources => 'Ressources';

  @override
  String get dashStudentHelp => 'Aide';

  @override
  String get dashStudentTotalApplications => 'Total des candidatures';

  @override
  String get dashStudentInReview => 'En examen';

  @override
  String get dashStudentFindYourPath => 'Trouvez votre voie';

  @override
  String get dashStudentNew => 'NOUVEAU';

  @override
  String get dashStudentFindYourPathDesc =>
      'Découvrez les universités qui correspondent à votre profil, vos objectifs et vos préférences grâce aux recommandations propulsées par l\'IA';

  @override
  String get dashStudentStartJourney => 'Commencez votre parcours';

  @override
  String get dashStudentFailedActivities => 'Échec du chargement des activités';

  @override
  String get dashStudentActivityHistory => 'Historique des activités';

  @override
  String get dashStudentActivityHistoryMsg =>
      'Une vue complète de l\'historique des activités avec filtres et recherche sera bientôt disponible.';

  @override
  String get dashStudentAchievement => 'Réussite';

  @override
  String get dashStudentPaymentHistory => 'Historique des paiements';

  @override
  String get dashStudentPaymentHistoryMsg =>
      'Consultez l\'historique détaillé des paiements et des transactions.';

  @override
  String get dashStudentFailedRecommendations =>
      'Échec du chargement des recommandations';

  @override
  String get dashParentTitle => 'Tableau de bord parent';

  @override
  String get dashParentMyChildren => 'Mes enfants';

  @override
  String get dashParentAlerts => 'Alertes';

  @override
  String get dashParentChildren => 'Enfants';

  @override
  String get dashParentAvgGrade => 'Moy. notes';

  @override
  String get dashParentUpcomingMeetings => 'Réunions à venir';

  @override
  String get dashParentNoUpcomingMeetings => 'Aucune réunion à venir';

  @override
  String get dashParentScheduleMeetingsHint =>
      'Planifiez des réunions avec les enseignants ou conseillers';

  @override
  String get dashParentScheduleMeeting => 'Planifier une réunion';

  @override
  String dashParentViewMoreMeetings(int count) {
    return 'Voir $count réunions de plus';
  }

  @override
  String get dashParentChildrenOverview => 'Aperçu des enfants';

  @override
  String get dashParentNoChildren => 'Aucun enfant ajouté';

  @override
  String get dashParentNoChildrenHint =>
      'Ajoutez vos enfants pour suivre leur progression';

  @override
  String dashParentCourseCount(int count) {
    return '$count cours';
  }

  @override
  String dashParentAppCount(int count) {
    return '$count cand.';
  }

  @override
  String get dashParentViewAllReports => 'Voir tous les rapports';

  @override
  String get dashParentAcademicReports => 'Rapports de performance académique';

  @override
  String get dashParentWithTeachersOrCounselors =>
      'Avec enseignants ou conseillers';

  @override
  String get dashParentNotificationSettings => 'Paramètres de notification';

  @override
  String get dashParentManageAlerts => 'Gérer les alertes et mises à jour';

  @override
  String get dashParentMeetWith => 'Avec qui souhaitez-vous vous réunir ?';

  @override
  String get dashParentTeacher => 'Enseignant';

  @override
  String get dashParentTeacherConference =>
      'Planifier une réunion parents-enseignant';

  @override
  String get dashParentCounselor => 'Conseiller';

  @override
  String get dashParentCounselorMeeting =>
      'Rencontrer un conseiller d\'orientation';

  @override
  String get dashParentStatusPending => 'EN ATTENTE';

  @override
  String get dashParentStatusApproved => 'APPROUVÉ';

  @override
  String get dashParentStatusDeclined => 'REFUSÉ';

  @override
  String get dashParentStatusCancelled => 'ANNULÉ';

  @override
  String get dashParentStatusCompleted => 'TERMINÉ';

  @override
  String get dashCounselorTitle => 'Tableau de bord conseiller';

  @override
  String get dashCounselorMyStudents => 'Mes étudiants';

  @override
  String get dashCounselorSessions => 'Sessions';

  @override
  String get dashCounselorStudents => 'Étudiants';

  @override
  String get dashCounselorToday => 'Aujourd\'hui';

  @override
  String get dashCounselorMeetingRequests => 'Demandes de réunion';

  @override
  String get dashCounselorManageAvailability => 'Gérer les disponibilités';

  @override
  String get dashCounselorSetMeetingHours => 'Définissez vos heures de réunion';

  @override
  String dashCounselorPendingApproval(int count) {
    return '$count en attente d\'approbation';
  }

  @override
  String dashCounselorViewMoreRequests(int count) {
    return 'Voir $count demandes de plus';
  }

  @override
  String get dashCounselorTodaySessions => 'Sessions du jour';

  @override
  String get dashCounselorNoStudents => 'Aucun étudiant assigné';

  @override
  String get dashCounselorNoStudentsHint =>
      'Vos étudiants apparaîtront ici une fois assignés';

  @override
  String get dashCounselorPendingRecommendations =>
      'Recommandations en attente';

  @override
  String dashCounselorDraftRecommendations(int count) {
    return 'Vous avez $count brouillons de recommandations';
  }

  @override
  String get dashCounselorSessionIndividual => 'Individuel';

  @override
  String get dashCounselorSessionGroup => 'Groupe';

  @override
  String get dashCounselorSessionCareer => 'Carrière';

  @override
  String get dashCounselorSessionAcademic => 'Académique';

  @override
  String get dashCounselorSessionPersonal => 'Personnel';

  @override
  String get dashCounselorStatusPending => 'EN ATTENTE';

  @override
  String get dashAdminNotAuthenticated => 'Non authentifié';

  @override
  String get dashAdminDashboard => 'Tableau de bord';

  @override
  String dashAdminWelcomeBack(String name) {
    return 'Bon retour, $name';
  }

  @override
  String get dashAdminQuickAction => 'Action rapide';

  @override
  String get dashAdminAddUser => 'Ajouter un utilisateur';

  @override
  String get dashAdminCreateAnnouncement => 'Créer une annonce';

  @override
  String get dashAdminGenerateReport => 'Générer un rapport';

  @override
  String get dashAdminBulkActions => 'Actions groupées';

  @override
  String get dashAdminTotalUsers => 'Total utilisateurs';

  @override
  String get dashAdminStudents => 'Étudiants';

  @override
  String get dashAdminInstitutions => 'Institutions';

  @override
  String get dashAdminRecommenders => 'Recommandeurs';

  @override
  String dashAdminCountStudents(int count) {
    return '$count étudiants';
  }

  @override
  String dashAdminCountParents(int count) {
    return '$count parents';
  }

  @override
  String dashAdminCountCounselors(int count) {
    return '$count conseillers';
  }

  @override
  String dashAdminCountAdmins(int count) {
    return '$count admins';
  }

  @override
  String get dashAdminJustNow => 'À l\'instant';

  @override
  String dashAdminMinutesAgo(int count) {
    return 'il y a $count min';
  }

  @override
  String dashAdminHoursAgo(int count) {
    return 'il y a $count h';
  }

  @override
  String dashAdminDaysAgo(int count) {
    return 'il y a $count j';
  }

  @override
  String get dashAdminRefresh => 'Actualiser';

  @override
  String get dashAdminQuickStats => 'Statistiques rapides';

  @override
  String get dashAdminActive30d => 'Actifs (30j)';

  @override
  String get dashAdminNewUsers7d => 'Nouveaux (7j)';

  @override
  String get dashAdminApplications7d => 'Candidatures (7j)';

  @override
  String get dashAdminUserGrowth => 'Croissance des utilisateurs';

  @override
  String get dashAdminUserGrowthDesc =>
      'Nouvelles inscriptions au cours des 6 derniers mois';

  @override
  String get dashAdminUserDistribution => 'Répartition des utilisateurs';

  @override
  String get dashAdminByUserType => 'Par type d\'utilisateur';

  @override
  String get dashInstTitle => 'Tableau de Bord Institution';

  @override
  String get dashInstDebugPanel => 'Panneau de Débogage';

  @override
  String get dashInstApplicants => 'Candidats';

  @override
  String get dashInstPrograms => 'Programmes';

  @override
  String get dashInstCourses => 'Cours';

  @override
  String get dashInstCounselors => 'Conseillers';

  @override
  String get dashInstNewProgram => 'Nouveau Programme';

  @override
  String get dashInstNewCourse => 'Nouveau Cours';

  @override
  String get dashInstTotalApplicants => 'Total des candidats';

  @override
  String get dashInstPendingReview => 'En attente d\'examen';

  @override
  String get dashInstActivePrograms => 'Programmes actifs';

  @override
  String get dashInstTotalStudents => 'Total des étudiants';

  @override
  String get dashInstReviewPending => 'Examiner les candidatures en attente';

  @override
  String dashInstApplicationsWaiting(int count) {
    return '$count candidatures en attente';
  }

  @override
  String dashInstApplicationsInProgress(int count) {
    return '$count candidatures en cours';
  }

  @override
  String get dashInstAcceptedApplicants => 'Candidats acceptés';

  @override
  String dashInstApplicationsApproved(int count) {
    return '$count candidatures approuvées';
  }

  @override
  String get dashInstCreateNewProgram => 'Créer un nouveau programme';

  @override
  String get dashInstAddProgramHint => 'Ajouter un nouveau cours ou programme';

  @override
  String get dashInstApplicationSummary => 'Résumé des candidatures';

  @override
  String get dashInstProgramsOverview => 'Aperçu des programmes';

  @override
  String get dashInstTotalPrograms => 'Total des programmes';

  @override
  String get dashInstInactivePrograms => 'Programmes inactifs';

  @override
  String get dashInstTotalEnrollments => 'Total des inscriptions';

  @override
  String get dashInstApplicationFunnel => 'Entonnoir de candidatures';

  @override
  String dashInstConversionRate(String rate) {
    return 'Taux de conversion global : $rate%';
  }

  @override
  String get dashInstApplicantDemographics => 'Démographie des candidats';

  @override
  String dashInstTotalApplicantsCount(int count) {
    return 'Total des candidats : $count';
  }

  @override
  String get dashInstByLocation => 'Par localisation';

  @override
  String get dashInstByAgeGroup => 'Par tranche d\'âge';

  @override
  String get dashInstByAcademicBackground => 'Par parcours académique';

  @override
  String get dashInstProgramPopularity => 'Popularité des programmes';

  @override
  String get dashInstTopPrograms => 'Programmes les plus demandés';

  @override
  String dashInstAppsCount(int count) {
    return '$count cand.';
  }

  @override
  String get dashInstProcessingTime => 'Temps de traitement des candidatures';

  @override
  String get dashInstAverageTime => 'Temps moyen';

  @override
  String dashInstDaysValue(String count) {
    return '$count jours';
  }

  @override
  String get dashRecTitle => 'Tableau de Bord Recommandeur';

  @override
  String get dashRecRecommendations => 'Recommandations';

  @override
  String get dashRecTotal => 'Total';

  @override
  String get dashRecUrgent => 'Urgent';

  @override
  String get dashRecUrgentRecommendations => 'Recommandations urgentes';

  @override
  String dashRecPendingCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's',
      one: '',
    );
    return 'Vous avez $count recommandation$_temp0 en attente';
  }

  @override
  String get dashRecUnknownStudent => 'Étudiant inconnu';

  @override
  String get dashRecInstitutionNotSpecified => 'Institution non spécifiée';

  @override
  String get dashRecRecentRequests => 'Demandes récentes';

  @override
  String get dashRecNoRequests => 'Aucune demande de recommandation';

  @override
  String get dashRecNoRequestsHint =>
      'Les demandes apparaîtront ici quand les étudiants demanderont des recommandations';

  @override
  String get dashRecQuickTips => 'Conseils rapides';

  @override
  String get dashRecTip1 =>
      'Rédigez des exemples précis des réalisations de l\'étudiant';

  @override
  String get dashRecTip2 =>
      'Soumettez les recommandations au moins 2 semaines avant la date limite';

  @override
  String get dashRecTip3 =>
      'Personnalisez chaque recommandation pour l\'institution';

  @override
  String get chatViewDetails => 'Voir les détails';

  @override
  String get chatApply => 'Postuler';

  @override
  String get chatLearnMore => 'En savoir plus';

  @override
  String get chatEnroll => 'S\'inscrire';

  @override
  String get chatContinue => 'Continuer';

  @override
  String chatRankLabel(int rank) {
    return 'Classement : #$rank';
  }

  @override
  String chatAcceptanceLabel(String rate) {
    return 'Acceptation : $rate%';
  }

  @override
  String chatDeadlineLabel(String deadline) {
    return 'Date limite : $deadline';
  }

  @override
  String get chatRecommendedUniversities => 'Universités recommandées';

  @override
  String get chatRecommendedCourses => 'Cours recommandés';

  @override
  String get chatDetails => 'Détails';

  @override
  String chatAcceptanceRateLabel(String rate) {
    return '$rate% d\'acceptation';
  }

  @override
  String get chatHiNeedHelp => 'Bonjour ! Besoin d\'aide ? 👋';

  @override
  String get chatTalkToHuman => 'Parler à un humain';

  @override
  String get chatConnectWithAgent =>
      'Souhaitez-vous être mis en relation avec un agent de support ?';

  @override
  String get chatAgentWillJoin =>
      'Un membre de notre équipe rejoindra cette conversation pour vous aider.';

  @override
  String get chatCancel => 'Annuler';

  @override
  String get chatConnect => 'Se connecter';

  @override
  String get chatYourAccount => 'Votre compte';

  @override
  String get chatSignIn => 'Se connecter';

  @override
  String get chatSignedInAs => 'Connecté en tant que :';

  @override
  String get chatDefaultUserName => 'Utilisateur';

  @override
  String get chatConversationsSynced =>
      'Vos conversations sont synchronisées avec votre compte.';

  @override
  String get chatSignInDescription =>
      'Connectez-vous pour synchroniser vos conversations sur tous vos appareils et obtenir une assistance personnalisée.';

  @override
  String get chatHistorySaved =>
      'Votre historique de conversation sera sauvegardé dans votre compte.';

  @override
  String get chatClose => 'Fermer';

  @override
  String get chatViewProfile => 'Voir le profil';

  @override
  String get chatHumanSupport => 'Support humain';

  @override
  String get chatFlowAssistant => 'Assistant Navia';

  @override
  String get chatWaitingForAgent => 'En attente d\'un agent...';

  @override
  String get chatOnline => 'En ligne';

  @override
  String get chatStartConversation => 'Démarrer une conversation';

  @override
  String get chatUserRequestedHumanSupport =>
      'L\'utilisateur a demandé un support humain';

  @override
  String get chatRankStat => 'Classement';

  @override
  String get chatAcceptStat => 'Acceptation';

  @override
  String get chatMatchStat => 'Compatibilité';

  @override
  String chatLessonsCount(int count) {
    return '$count leçons';
  }

  @override
  String get chatProgress => 'Progression';

  @override
  String get chatToDo => 'À faire :';

  @override
  String get chatFailedToLoadImage => 'Échec du chargement de l\'image';

  @override
  String chatImageCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String get chatTypeYourMessage => 'Tapez votre message...';

  @override
  String get chatSupportAgent => 'Agent de support';

  @override
  String get chatSystem => 'Système';

  @override
  String get chatConfidenceHigh => 'Élevée';

  @override
  String get chatConfidenceMedium => 'Moyenne';

  @override
  String get chatConfidenceLow => 'Faible';

  @override
  String get chatHelpful => 'Utile';

  @override
  String get chatNotHelpful => 'Pas utile';

  @override
  String get chatWasThisHelpful => 'Cela vous a-t-il été utile ?';

  @override
  String get chatRateThisResponse => 'Évaluer cette réponse';

  @override
  String get chatCopied => 'Copié !';

  @override
  String get chatCopy => 'Copier';

  @override
  String get chatViewRecommendations => 'Voir les recommandations';

  @override
  String get chatUpdateProfile => 'Mettre à jour le profil';

  @override
  String get chatMyApplications => 'Mes candidatures';

  @override
  String get chatCompareSchools => 'Comparer les écoles';

  @override
  String get chatFilterResults => 'Filtrer les résultats';

  @override
  String get chatWhyTheseSchools => 'Pourquoi ces écoles ?';

  @override
  String get chatViewDeadlines => 'Voir les dates limites';

  @override
  String get chatEssayTips => 'Conseils pour les essais';

  @override
  String get chatApplicationChecklist => 'Liste de contrôle de candidature';

  @override
  String get chatHelpWithQuestions => 'Aide pour les questions';

  @override
  String get chatCanISkipSections => 'Puis-je sauter des sections ?';

  @override
  String get chatStartApplication => 'Démarrer la candidature';

  @override
  String get chatSaveToFavorites => 'Ajouter aux favoris';

  @override
  String get chatSimilarSchools => 'Écoles similaires';

  @override
  String get chatEssayWritingHelp => 'Aide à la rédaction d\'essais';

  @override
  String get chatSetDeadlineReminder => 'Définir un rappel de date limite';

  @override
  String get chatLetterRequestTips =>
      'Conseils pour les lettres de recommandation';

  @override
  String get chatTranscriptGuide => 'Guide des relevés de notes';

  @override
  String get chatStartQuestionnaire => 'Démarrer le questionnaire';

  @override
  String get chatHowItWorks => 'Comment ça marche';

  @override
  String get chatBrowseUniversities => 'Parcourir les universités';

  @override
  String get chatHowCanYouHelp => 'Comment pouvez-vous m\'aider ?';

  @override
  String get chatGetRecommendations => 'Obtenir des recommandations';

  @override
  String get chatContactSupport => 'Contacter le support';

  @override
  String chatCompleteProfile(int completeness) {
    return 'Compléter le profil ($completeness%)';
  }

  @override
  String get chatWhyCompleteProfile => 'Pourquoi compléter le profil ?';

  @override
  String chatViewSchools(int count) {
    return 'Voir $count écoles';
  }

  @override
  String chatMyFavorites(int count) {
    return 'Mes favoris ($count)';
  }

  @override
  String get chatStartApplying => 'Commencer à postuler';

  @override
  String get fypTitle => 'Trouve ta voie';

  @override
  String get fypHeroTitle => 'Trouvez votre université idéale';

  @override
  String get fypHeroSubtitle =>
      'Obtenez des recommandations universitaires personnalisées basées sur votre profil académique, vos préférences et vos objectifs';

  @override
  String get fypHowItWorks => 'Comment ça marche';

  @override
  String get fypStep1Title => 'Répondez aux questions';

  @override
  String get fypStep1Description =>
      'Parlez-nous de votre profil académique, de votre filière souhaitée et de vos préférences';

  @override
  String get fypStep2Title => 'Obtenez des correspondances';

  @override
  String get fypStep2Description =>
      'Notre algorithme analyse votre profil par rapport à des centaines d\'universités';

  @override
  String get fypStep3Title => 'Consultez les résultats';

  @override
  String get fypStep3Description =>
      'Découvrez vos recommandations personnalisées classées en écoles de sécurité, de correspondance et d\'ambition';

  @override
  String get fypWhatYoullGet => 'Ce que vous obtiendrez';

  @override
  String get fypFeatureMatchScore => 'Score de correspondance';

  @override
  String get fypFeatureSafetyMatchReach => 'Sécurité/Correspondance/Ambition';

  @override
  String get fypFeatureCostAnalysis => 'Analyse des coûts';

  @override
  String get fypFeatureDetailedInsights => 'Informations détaillées';

  @override
  String get fypFeatureSaveFavorites => 'Enregistrer les favoris';

  @override
  String get fypFeatureCompareOptions => 'Comparer les options';

  @override
  String get fypGetStarted => 'Commencer';

  @override
  String get fypViewMyRecommendations => 'Voir mes recommandations';

  @override
  String get fypDisclaimer =>
      'Les recommandations sont basées sur votre profil et vos préférences. Faites toujours des recherches approfondies sur les universités et consultez des conseillers d\'orientation avant de prendre des décisions définitives.';

  @override
  String get fypQuestionnaireTitle => 'Questionnaire universitaire';

  @override
  String fypStepOf(int current, int total) {
    return 'Étape $current sur $total';
  }

  @override
  String get fypStepBackgroundInfo => 'Informations générales';

  @override
  String get fypStepAcademicAchievements => 'Résultats académiques';

  @override
  String get fypStepAcademicInterests => 'Intérêts académiques';

  @override
  String get fypStepLocationPreferences => 'Préférences de lieu';

  @override
  String get fypStepUniversityPreferences => 'Préférences universitaires';

  @override
  String get fypStepFinancialInfo => 'Informations financières';

  @override
  String get fypTellUsAboutYourself => 'Parlez-nous de vous';

  @override
  String get fypBackgroundHelper =>
      'Cela nous aide à comprendre votre parcours éducatif';

  @override
  String get fypNationalityLabel => 'Nationalité *';

  @override
  String get fypNationalityHelper => 'Votre pays de citoyenneté';

  @override
  String get fypSelectNationality => 'Veuillez sélectionner votre nationalité';

  @override
  String get fypCurrentStudyingLabel => 'Où étudiez-vous actuellement ? *';

  @override
  String get fypCurrentStudyingHelper =>
      'Votre emplacement actuel (pas celui où vous souhaitez étudier)';

  @override
  String get fypSelectCurrentCountry =>
      'Veuillez sélectionner votre pays actuel';

  @override
  String get fypCurrentRegionLabel => 'Région/État actuel (Facultatif)';

  @override
  String get fypSelectRegionHelper => 'Sélectionnez votre région si disponible';

  @override
  String get fypYourAcademicAchievements => 'Vos résultats académiques';

  @override
  String get fypAcademicMatchHelper =>
      'Cela nous aide à vous associer à des universités où vous serez compétitif';

  @override
  String get fypGradingSystemLabel => 'Votre système de notation *';

  @override
  String get fypSelectGradingSystem =>
      'Veuillez sélectionner votre système de notation';

  @override
  String get fypYourGradeLabel => 'Votre note *';

  @override
  String get fypEnterGrade => 'Veuillez entrer votre note';

  @override
  String get fypStandardizedTestLabel => 'Test standardisé (le cas échéant)';

  @override
  String get fypStandardizedTestHelper =>
      'Laissez vide si vous n\'en avez passé aucun';

  @override
  String get fypSatTotalScoreLabel => 'Score total SAT';

  @override
  String get fypSatScoreHint => 'ex. : 1400';

  @override
  String get fypSatValidation => 'Le SAT doit être entre 400 et 1600';

  @override
  String get fypActCompositeLabel => 'Score composite ACT';

  @override
  String get fypActScoreHint => 'ex. : 28';

  @override
  String get fypActValidation => 'L\'ACT doit être entre 1 et 36';

  @override
  String get fypIbScoreLabel => 'Score IB prévu/final';

  @override
  String get fypIbScoreHint => 'ex. : 38';

  @override
  String get fypIbValidation => 'Le score IB doit être entre 0 et 45';

  @override
  String get fypTestScoresOptional =>
      'Les scores aux tests standardisés sont facultatifs. Si vous n\'avez pas encore passé ces tests, vous pouvez les ignorer.';

  @override
  String get fypWhatStudy => 'Que voulez-vous étudier ?';

  @override
  String get fypInterestsHelper =>
      'Parlez-nous de vos intérêts académiques et de vos objectifs de carrière';

  @override
  String get fypIntendedMajorLabel => 'Filière souhaitée *';

  @override
  String get fypIntendedMajorHint => 'Sélectionnez votre filière souhaitée';

  @override
  String get fypSelectIntendedMajor =>
      'Veuillez sélectionner votre filière souhaitée';

  @override
  String get fypFieldOfStudyLabel => 'Domaine d\'étude *';

  @override
  String get fypSelectFieldOfStudy =>
      'Veuillez sélectionner un domaine d\'étude';

  @override
  String get fypCareerFocused => 'Je suis orienté carrière';

  @override
  String get fypCareerFocusedSubtitle =>
      'Je veux trouver des universités avec un fort placement professionnel et des services de carrière';

  @override
  String get fypResearchInterest =>
      'Intéressé par les opportunités de recherche';

  @override
  String get fypResearchInterestSubtitle =>
      'Je veux participer à des projets de recherche pendant mes études';

  @override
  String get fypWhereStudy => 'Où voulez-vous étudier ?';

  @override
  String get fypLocationHelper => 'Sélectionnez vos pays et régions préférés';

  @override
  String get fypWhereStudyRequired => 'Où voulez-vous étudier ? *';

  @override
  String get fypSelectCountriesHelper =>
      'Sélectionnez les pays où vous souhaitez fréquenter l\'université';

  @override
  String get fypCampusSetting => 'Cadre du campus';

  @override
  String get fypUniversityCharacteristics =>
      'Caractéristiques de l\'université';

  @override
  String get fypUniversityEnvironmentHelper =>
      'Quel type d\'environnement universitaire préférez-vous ?';

  @override
  String get fypPreferredSizeLabel => 'Taille d\'université préférée';

  @override
  String get fypPreferredTypeLabel => 'Type d\'université préféré';

  @override
  String get fypSportsInterest => 'Intéressé par l\'athlétisme/le sport';

  @override
  String get fypSportsInterestSubtitle =>
      'Je veux participer ou assister à des sports universitaires';

  @override
  String get fypDesiredFeatures =>
      'Caractéristiques du campus souhaitées (facultatif)';

  @override
  String get fypFinancialConsiderations => 'Considérations financières';

  @override
  String get fypFinancialHelper =>
      'Aidez-nous à recommander des universités dans votre budget';

  @override
  String get fypBudgetRangeLabel => 'Budget annuel (USD)';

  @override
  String get fypBudgetRangeHelper =>
      'Budget annuel approximatif pour les frais de scolarité';

  @override
  String get fypNeedFinancialAid => 'J\'aurai besoin d\'une aide financière';

  @override
  String get fypFinancialAidSubtitle =>
      'Nous donnerons la priorité aux universités offrant de solides programmes d\'aide financière';

  @override
  String get fypInStateTuitionLabel =>
      'Éligible aux frais de scolarité résidentiels ? (US)';

  @override
  String get fypNotApplicable => 'Non applicable';

  @override
  String get fypBack => 'Retour';

  @override
  String get fypNext => 'Suivant';

  @override
  String get fypGetRecommendations => 'Obtenir des recommandations';

  @override
  String fypErrorSavingProfile(String error) {
    return 'Erreur lors de l\'enregistrement du profil : $error';
  }

  @override
  String fypErrorGeneratingRecs(String error) {
    return 'Erreur lors de la génération des recommandations : $error';
  }

  @override
  String get fypRetry => 'Réessayer';

  @override
  String get fypSignUpToSave =>
      'Inscrivez-vous pour sauvegarder vos recommandations !';

  @override
  String get fypSignUp => 'S\'inscrire';

  @override
  String fypUnexpectedError(String error) {
    return 'Erreur inattendue : $error';
  }

  @override
  String get fypGeneratingRecommendations => 'Génération des recommandations';

  @override
  String get fypGeneratingPleaseWait =>
      'Veuillez patienter pendant que nous analysons les universités\net créons des correspondances personnalisées pour vous...';

  @override
  String get fypYourRecommendations => 'Vos recommandations';

  @override
  String get fypRefresh => 'Actualiser';

  @override
  String get fypErrorLoadingRecs =>
      'Erreur lors du chargement des recommandations';

  @override
  String get fypTryAgain => 'Réessayer';

  @override
  String get fypNoRecsYet => 'Aucune recommandation pour l\'instant';

  @override
  String get fypCompleteQuestionnaire =>
      'Complétez le questionnaire pour obtenir des recommandations personnalisées';

  @override
  String get fypStartQuestionnaire => 'Commencer le questionnaire';

  @override
  String get fypFoundPerfectMatches =>
      'Nous avons trouvé vos correspondances idéales !';

  @override
  String get fypStatTotal => 'Total';

  @override
  String get fypStatSafety => 'Sécurité';

  @override
  String get fypStatMatch => 'Correspondance';

  @override
  String get fypStatReach => 'Ambition';

  @override
  String fypFilterAll(int count) {
    return 'Tous ($count)';
  }

  @override
  String fypFilterSafety(int count) {
    return 'Sécurité ($count)';
  }

  @override
  String fypFilterMatch(int count) {
    return 'Correspondance ($count)';
  }

  @override
  String fypFilterReach(int count) {
    return 'Ambition ($count)';
  }

  @override
  String get fypNoFilterMatch =>
      'Aucune université ne correspond au filtre sélectionné';

  @override
  String fypPercentMatch(String score) {
    return '$score% de correspondance';
  }

  @override
  String get fypLoadingDetails => 'Chargement des détails de l\'université...';

  @override
  String get fypLocationNotAvailable => 'Emplacement non disponible';

  @override
  String get fypStatAcceptance => 'Acceptation';

  @override
  String get fypStatTuition => 'Frais de scolarité';

  @override
  String get fypStatStudents => 'Étudiants';

  @override
  String get fypStatRank => 'Classement';

  @override
  String get fypWhyGoodMatch => 'Pourquoi c\'est une bonne correspondance :';

  @override
  String get fypViewDetails => 'Voir les détails';

  @override
  String get fypUniversityDetails => 'Détails de l\'université';

  @override
  String get fypVisitWebsite => 'Visiter le site web';

  @override
  String get fypUniversityNotFound => 'Université non trouvée';

  @override
  String get fypErrorLoadingUniversity =>
      'Erreur lors du chargement de l\'université';

  @override
  String get fypUnknownError => 'Erreur inconnue';

  @override
  String fypKStudents(String count) {
    return '${count}k étudiants';
  }

  @override
  String get fypNationalRank => 'Classement national';

  @override
  String get fypAcceptanceRate => 'Taux d\'acceptation';

  @override
  String get fypAbout => 'À propos';

  @override
  String get fypAdmissions => 'Admissions';

  @override
  String get fypCostsFinancialAid => 'Coûts et aide financière';

  @override
  String get fypStudentOutcomes => 'Résultats des étudiants';

  @override
  String get fypProgramsOffered => 'Programmes offerts';

  @override
  String get fypAverageGPA => 'Moyenne générale';

  @override
  String get fypSatMathRange => 'Fourchette SAT Math';

  @override
  String get fypSatEbrwRange => 'Fourchette SAT EBRW';

  @override
  String get fypActRange => 'Fourchette ACT';

  @override
  String get fypOutOfStateTuition => 'Frais de scolarité hors état';

  @override
  String get fypTotalCostEst => 'Coût total (est.)';

  @override
  String get fypFinancialAidNote =>
      'Une aide financière peut être disponible. Contactez l\'université pour plus de détails.';

  @override
  String get fypGraduationRate => 'Taux de diplomation en 4 ans';

  @override
  String get fypMedianEarnings => 'Revenus médians (10 ans)';

  @override
  String get appListTitle => 'Mes candidatures';

  @override
  String appTabAll(int count) {
    return 'Toutes ($count)';
  }

  @override
  String appTabPending(int count) {
    return 'En attente ($count)';
  }

  @override
  String appTabUnderReview(int count) {
    return 'En cours d\'examen ($count)';
  }

  @override
  String appTabAccepted(int count) {
    return 'Acceptées ($count)';
  }

  @override
  String get appLoadingMessage => 'Chargement des candidatures...';

  @override
  String get appRetry => 'Réessayer';

  @override
  String get appNewApplication => 'Nouvelle candidature';

  @override
  String get appEmptyTitle => 'Aucune candidature';

  @override
  String get appEmptyMessage =>
      'Vous n\'avez soumis aucune candidature pour l\'instant.';

  @override
  String get appCreateApplication => 'Créer une candidature';

  @override
  String get appToday => 'Aujourd\'hui';

  @override
  String get appYesterday => 'Hier';

  @override
  String appDaysAgo(int days) {
    return 'Il y a $days jours';
  }

  @override
  String get appFeePaid => 'Frais payés';

  @override
  String get appPaymentPending => 'Paiement en attente';

  @override
  String appReviewedDaysAgo(int days) {
    return 'Examiné il y a $days jours';
  }

  @override
  String get appDetailTitle => 'Détails de la candidature';

  @override
  String get appDetailShare => 'Partager';

  @override
  String get appDetailStatus => 'Statut de la candidature';

  @override
  String get appStatusPendingReview => 'En attente d\'examen';

  @override
  String get appStatusUnderReview => 'En cours d\'examen';

  @override
  String get appStatusAccepted => 'Acceptée';

  @override
  String get appStatusRejected => 'Rejetée';

  @override
  String get appStatusUnknown => 'Inconnu';

  @override
  String get appDetailInfo => 'Informations sur la candidature';

  @override
  String get appDetailInstitution => 'Établissement';

  @override
  String get appDetailProgram => 'Programme';

  @override
  String get appDetailSubmitted => 'Soumise';

  @override
  String get appDetailReviewed => 'Examinée';

  @override
  String get appDetailPaymentInfo => 'Informations de paiement';

  @override
  String get appDetailApplicationFee => 'Frais de candidature';

  @override
  String get appDetailPaymentStatus => 'Statut du paiement';

  @override
  String get appDetailPaid => 'Payé';

  @override
  String get appDetailPendingPayment => 'En attente';

  @override
  String get appDetailPayFee => 'Payer les frais de candidature';

  @override
  String get appPaymentDialogTitle => 'Paiement';

  @override
  String appPaymentDialogContent(String fee) {
    return 'Payer les frais de candidature de $fee \$ ?';
  }

  @override
  String get appCancel => 'Annuler';

  @override
  String get appPayNow => 'Payer maintenant';

  @override
  String get appPaymentSuccess => 'Paiement effectué avec succès !';

  @override
  String get appPaymentFailed => 'Échec du paiement. Veuillez réessayer.';

  @override
  String appErrorPayment(String error) {
    return 'Erreur lors du traitement du paiement : $error';
  }

  @override
  String get appDetailReviewNotes => 'Notes d\'examen';

  @override
  String get appDetailDocuments => 'Documents';

  @override
  String get appDetailTranscript => 'Relevé de notes';

  @override
  String get appDetailUploaded => 'Téléversé';

  @override
  String get appDetailIdDocument => 'Pièce d\'identité';

  @override
  String get appDetailPersonalStatement => 'Lettre de motivation';

  @override
  String get appDetailWithdraw => 'Retirer';

  @override
  String get appDetailEdit => 'Modifier';

  @override
  String get appWithdrawTitle => 'Retirer la candidature';

  @override
  String get appWithdrawConfirmation =>
      'Êtes-vous sûr de vouloir retirer cette candidature ? Cette action est irréversible.';

  @override
  String get appWithdrawSuccess => 'Candidature retirée avec succès';

  @override
  String get appWithdrawFailed => 'Échec du retrait de la candidature';

  @override
  String appErrorWithdraw(String error) {
    return 'Erreur lors du retrait de la candidature : $error';
  }

  @override
  String get appCreateTitle => 'Nouvelle candidature';

  @override
  String get appStepProgramSelection => 'Sélection du programme';

  @override
  String get appSelectUniversity => 'Sélectionner une université';

  @override
  String get appBrowseInstitutions => 'Parcourir les établissements';

  @override
  String get appNoProgramsYet =>
      'Cet établissement n\'a pas encore de programmes actifs. Veuillez en sélectionner un autre.';

  @override
  String get appSelectProgramLabel => 'Sélectionner un programme *';

  @override
  String appProgramsAvailable(int count) {
    return '$count programmes disponibles';
  }

  @override
  String get appStepPersonalInfo => 'Informations personnelles';

  @override
  String get appFullNameLabel => 'Nom complet';

  @override
  String get appEmailLabel => 'Adresse e-mail';

  @override
  String get appPhoneLabel => 'Numéro de téléphone';

  @override
  String get appStreetAddressLabel => 'Adresse *';

  @override
  String get appCityLabel => 'Ville *';

  @override
  String get appCountryLabel => 'Pays *';

  @override
  String get appStateLabel => 'État/Province *';

  @override
  String get appSelectCountryFirst => 'Sélectionnez d\'abord un pays';

  @override
  String get appStepAcademicInfo => 'Informations académiques';

  @override
  String get appPreviousSchoolLabel => 'École/Établissement précédent';

  @override
  String get appGpaLabel => 'Moyenne générale / GPA';

  @override
  String get appPersonalStatementLabel => 'Lettre de motivation';

  @override
  String get appPersonalStatementHint =>
      'Pourquoi êtes-vous intéressé par ce programme ?';

  @override
  String get appStepDocuments => 'Documents (obligatoires)';

  @override
  String get appUploadRequiredDocs => 'Téléversez les documents requis';

  @override
  String get appDocTranscriptTitle => 'Relevé de notes académique';

  @override
  String get appDocTranscriptSubtitle =>
      'Relevé de notes officiel de votre école précédente (format PDF, DOC ou DOCX, max 5 Mo)';

  @override
  String get appDocIdTitle => 'Pièce d\'identité';

  @override
  String get appDocIdSubtitle =>
      'Pièce d\'identité officielle : passeport, carte d\'identité nationale ou permis de conduire (PDF, JPG ou PNG)';

  @override
  String get appDocPhotoTitle => 'Photo d\'identité';

  @override
  String get appDocPhotoSubtitle =>
      'Photo d\'identité récente sur fond uni (format JPG ou PNG)';

  @override
  String get appDocRequiredWarning =>
      'Les trois documents sont obligatoires. Veuillez télécharger le relevé de notes, la pièce d\'identité et la photo d\'identité avant de soumettre.';

  @override
  String get appSubmit => 'Soumettre';

  @override
  String get appContinue => 'Continuer';

  @override
  String get appBack => 'Retour';

  @override
  String get courseListTitle => 'Cours';

  @override
  String get courseFiltersTooltip => 'Filtres';

  @override
  String get courseBrowseAll => 'Parcourir tout';

  @override
  String get courseAssignedToMe => 'Qui me sont attribués';

  @override
  String get courseSearchHint => 'Rechercher des cours...';

  @override
  String get courseNoAvailable => 'Aucun cours disponible';

  @override
  String get courseCheckBackLater => 'Revenez plus tard pour de nouveaux cours';

  @override
  String get courseRetry => 'Réessayer';

  @override
  String get courseFailedLoadAssigned =>
      'Échec du chargement des cours attribués';

  @override
  String get courseNoAssignedYet => 'Aucun cours attribué pour l\'instant';

  @override
  String get courseAssignedDescription =>
      'Les cours attribués par votre administrateur ou établissement apparaîtront ici.';

  @override
  String get courseRequired => 'Obligatoire';

  @override
  String courseLessonsLabel(int count) {
    return '$count leçons';
  }

  @override
  String coursePercentComplete(int percent) {
    return '$percent% terminé';
  }

  @override
  String get courseNoRatingsYet => 'Pas encore de notes';

  @override
  String courseEnrolledCount(int count) {
    return '$count inscrits';
  }

  @override
  String get courseFiltersTitle => 'Filtres';

  @override
  String get courseLevelLabel => 'Niveau';

  @override
  String get courseAllLevels => 'Tous les niveaux';

  @override
  String get courseLevelBeginner => 'Débutant';

  @override
  String get courseLevelIntermediate => 'Intermédiaire';

  @override
  String get courseLevelAdvanced => 'Avancé';

  @override
  String get courseLevelExpert => 'Expert';

  @override
  String get courseClearAll => 'Tout effacer';

  @override
  String get courseApplyFilters => 'Appliquer';

  @override
  String get courseDescription => 'Description';

  @override
  String get courseWhatYoullLearn => 'Ce que vous apprendrez';

  @override
  String get coursePrerequisites => 'Prérequis';

  @override
  String get coursePrice => 'Prix';

  @override
  String get courseCourseFull => 'Cours complet';

  @override
  String get courseRequestPermission => 'Demander la permission';

  @override
  String get coursePermissionPending => 'Permission en attente';

  @override
  String get coursePermissionDenied => 'Permission refusée';

  @override
  String get courseRequestPermissionAgain => 'Redemander la permission';

  @override
  String get courseEnrollNow => 'S\'inscrire maintenant';

  @override
  String get courseRequestEnrollmentTitle =>
      'Demander la permission d\'inscription';

  @override
  String courseRequestEnrollmentContent(String title) {
    return 'Demander la permission de s\'inscrire au cours \"$title\" ?';
  }

  @override
  String get courseInstitutionReview =>
      'L\'établissement examinera votre demande.';

  @override
  String get courseMessageToInstitution =>
      'Message à l\'établissement (facultatif)';

  @override
  String get courseMessageHint => 'Pourquoi voulez-vous suivre ce cours ?';

  @override
  String get courseCancel => 'Annuler';

  @override
  String get courseRequest => 'Demander';

  @override
  String get coursePermissionRequestSent => 'Demande de permission envoyée !';

  @override
  String courseFailedRequestPermission(String error) {
    return 'Échec de la demande de permission : $error';
  }

  @override
  String get courseEnrolledSuccess => 'Inscription au cours réussie !';

  @override
  String get courseFailedEnroll => 'Échec de l\'inscription';

  @override
  String courseContinueLearning(String progress) {
    return 'Continuer l\'apprentissage ($progress%)';
  }

  @override
  String get courseStartLearning => 'Commencer l\'apprentissage';

  @override
  String courseLessonsCompleted(int completed, int total) {
    return '$completed/$total leçons terminées';
  }

  @override
  String get courseCollapseSidebar => 'Réduire la barre latérale';

  @override
  String get courseExpandSidebar => 'Développer la barre latérale';

  @override
  String courseErrorLoadingModules(String error) {
    return 'Erreur lors du chargement des modules :\n$error';
  }

  @override
  String get courseNoContentYet => 'Aucun contenu disponible pour l\'instant';

  @override
  String get courseNoLessonsAdded =>
      'L\'instructeur n\'a pas encore ajouté de leçons';

  @override
  String courseLessonsCount(int completed, int total) {
    return '$completed/$total leçons';
  }

  @override
  String courseWelcomeTo(String title) {
    return 'Bienvenue dans $title';
  }

  @override
  String get courseCompleted => 'Terminé';

  @override
  String get coursePrevious => 'Précédent';

  @override
  String get courseMarkAsComplete => 'Marquer comme terminé';

  @override
  String get courseNext => 'Suivant';

  @override
  String get courseMyCourses => 'Mes cours';

  @override
  String get courseFilterByStatus => 'Filtrer par statut';

  @override
  String courseTabAssigned(int count) {
    return 'Attribués ($count)';
  }

  @override
  String courseTabEnrolled(int count) {
    return 'Inscrits ($count)';
  }

  @override
  String get courseNoAssigned => 'Aucun cours attribué';

  @override
  String get courseAssignedByInstitution =>
      'Les cours qui vous sont attribués par votre établissement apparaîtront ici';

  @override
  String get courseREQUIRED => 'OBLIGATOIRE';

  @override
  String get courseProgress => 'Progression';

  @override
  String courseDuePrefix(String date) {
    return 'Échéance : $date';
  }

  @override
  String get courseStatusCompleted => 'Terminé';

  @override
  String get courseStatusInProgress => 'En cours';

  @override
  String get courseStatusOverdue => 'En retard';

  @override
  String get courseStatusAssigned => 'Attribué';

  @override
  String get courseDueToday => 'Aujourd\'hui';

  @override
  String get courseDueTomorrow => 'Demain';

  @override
  String courseDueDays(int days) {
    return '$days jours';
  }

  @override
  String get courseNoEnrolled => 'Aucun cours inscrit';

  @override
  String get courseBrowseToStart => 'Parcourez les cours pour commencer';

  @override
  String get courseBrowseCourses => 'Parcourir les cours';

  @override
  String get courseFilterAll => 'Tous';

  @override
  String get courseStatusActive => 'Actif';

  @override
  String get courseStatusDropped => 'Abandonné';

  @override
  String get courseStatusSuspended => 'Suspendu';

  @override
  String get homeNewFeature => 'NOUVELLE FONCTIONNALITÉ';

  @override
  String get homeFindYourPathTitle => 'Trouvez votre voie';

  @override
  String get homeFindYourPathDesc =>
      'Découvrez les universités qui correspondent à vos objectifs, votre budget et vos aspirations.\nLaissez notre système de recommandation intelligent vous guider vers le choix idéal.';

  @override
  String get homePersonalizedRecs => 'Recommandations personnalisées';

  @override
  String get homeTopUniversities => '12+ universités de premier plan';

  @override
  String get homeSmartMatching => 'Algorithme de correspondance intelligent';

  @override
  String get homeStartYourJourney => 'Commencez votre parcours';

  @override
  String get homeNoAccountRequired =>
      'Aucun compte requis - commencez immédiatement';

  @override
  String get homeSearchUniversitiesDesc =>
      'Explorez plus de 18 000 universités dans le monde entier.\nFiltrez par pays, frais de scolarité, taux d\'admission et plus encore.';

  @override
  String get homeFilters => 'Filtres';

  @override
  String get homeBrowseUniversities => 'Parcourir les universités';

  @override
  String get helpBack => 'Retour';

  @override
  String get helpContactSupport => 'Contacter le support';

  @override
  String get helpWeAreHereToHelp => 'Nous sommes là pour vous aider !';

  @override
  String get helpSupportResponseTime =>
      'Notre équipe de support répond généralement dans les 24 heures';

  @override
  String get helpSubject => 'Sujet';

  @override
  String get helpSubjectHint => 'Brève description de votre problème';

  @override
  String get helpSubjectRequired => 'Veuillez entrer un sujet';

  @override
  String get helpSubjectMinLength =>
      'Le sujet doit comporter au moins 5 caractères';

  @override
  String get helpCategory => 'Catégorie';

  @override
  String get helpCategoryGeneral => 'Demande générale';

  @override
  String get helpCategoryTechnical => 'Problème technique';

  @override
  String get helpCategoryBilling => 'Facturation et paiements';

  @override
  String get helpCategoryAccount => 'Gestion du compte';

  @override
  String get helpCategoryCourse => 'Contenu des cours';

  @override
  String get helpCategoryOther => 'Autre';

  @override
  String get helpPriority => 'Priorité';

  @override
  String get helpPriorityLow => 'Basse';

  @override
  String get helpPriorityMedium => 'Moyenne';

  @override
  String get helpPriorityHigh => 'Élevée';

  @override
  String get helpPriorityUrgent => 'Urgente';

  @override
  String get helpDescription => 'Description';

  @override
  String get helpDescriptionHint =>
      'Veuillez fournir des informations détaillées sur votre problème...';

  @override
  String get helpDescriptionRequired => 'Veuillez décrire votre problème';

  @override
  String get helpDescriptionMinLength =>
      'La description doit comporter au moins 20 caractères';

  @override
  String get helpAttachments => 'Pièces jointes';

  @override
  String get helpNoFilesAttached => 'Aucun fichier joint';

  @override
  String get helpAddAttachment => 'Ajouter une pièce jointe';

  @override
  String get helpAttachmentTypes => 'Images, PDF, documents (10 Mo max chacun)';

  @override
  String get helpPreferredContactMethod => 'Méthode de contact préférée';

  @override
  String get helpEmail => 'E-mail';

  @override
  String get helpRespondViaEmail => 'Nous répondrons par e-mail';

  @override
  String get helpPhone => 'Téléphone';

  @override
  String get helpCallYouBack => 'Nous vous rappellerons';

  @override
  String get helpSubmitting => 'Envoi en cours...';

  @override
  String get helpSubmitRequest => 'Envoyer la demande';

  @override
  String get helpOtherWaysToReachUs => 'Autres moyens de nous contacter';

  @override
  String get helpEmailCopied => 'E-mail copié dans le presse-papiers';

  @override
  String get helpPhoneCopied =>
      'Numéro de téléphone copié dans le presse-papiers';

  @override
  String get helpBusinessHours => 'Heures d’ouverture';

  @override
  String get helpBusinessHoursDetails => 'Lundi - Vendredi\n9h00 - 18h00 EST';

  @override
  String get helpAverageResponseTime => 'Temps de réponse moyen';

  @override
  String get helpTypicallyRespond24h =>
      'Nous répondons généralement dans les 24 heures';

  @override
  String get helpRequestSubmitted => 'Demande envoyée';

  @override
  String get helpRequestSubmittedSuccess =>
      'Votre demande de support a été envoyée avec succès !';

  @override
  String get helpTrackRequestInfo =>
      'Nous répondrons à votre e-mail dans les 24 heures. Vous pouvez suivre votre demande dans la section Tickets de support.';

  @override
  String get helpOk => 'OK';

  @override
  String get helpViewTicketInSupport =>
      'Voir votre ticket dans les Tickets de support';

  @override
  String get helpViewTickets => 'Voir les tickets';

  @override
  String get helpFaqTitle => 'Foire aux questions';

  @override
  String get helpFaqAll => 'Tous';

  @override
  String get helpFaqGettingStarted => 'Démarrage';

  @override
  String get helpFaqAccount => 'Compte';

  @override
  String get helpFaqCourses => 'Cours';

  @override
  String get helpFaqPayments => 'Paiements';

  @override
  String get helpFaqTechnical => 'Technique';

  @override
  String get helpSearchFaqs => 'Rechercher dans la FAQ...';

  @override
  String get helpNoFaqsFound => 'Aucune FAQ trouvée';

  @override
  String get helpTryDifferentSearch => 'Essayez un autre terme de recherche';

  @override
  String get helpThanksForFeedback => 'Merci pour votre retour !';

  @override
  String get helpCenterTitle => 'Centre d’aide';

  @override
  String get helpHowCanWeHelp => 'Comment pouvons-nous vous aider ?';

  @override
  String get helpSearchOrBrowse =>
      'Recherchez des réponses ou parcourez les sujets d’aide';

  @override
  String get helpSearchForHelp => 'Rechercher de l’aide...';

  @override
  String get helpQuickHelp => 'Aide rapide';

  @override
  String get helpBrowseFaqs => 'Parcourir la FAQ';

  @override
  String get helpBrowseFaqsDesc => 'Réponses rapides aux questions courantes';

  @override
  String get helpContactSupportDesc =>
      'Obtenez l’aide de notre équipe de support';

  @override
  String get helpMySupportTickets => 'Mes tickets de support';

  @override
  String get helpMySupportTicketsDesc => 'Voir vos tickets ouverts et fermés';

  @override
  String get helpBrowseByTopic => 'Parcourir par sujet';

  @override
  String get helpViewAll => 'Voir tout';

  @override
  String get helpPopularArticles => 'Articles populaires';

  @override
  String get helpRemovedFromBookmarks => 'Retiré des favoris';

  @override
  String get helpAddedToBookmarks => 'Ajouté aux favoris';

  @override
  String get helpStillNeedHelp => 'Besoin d’aide supplémentaire ?';

  @override
  String get helpSupportTeamHere =>
      'Notre équipe de support est là pour vous aider';

  @override
  String get helpWasArticleHelpful => 'Cet article vous a-t-il été utile ?';

  @override
  String get helpYes => 'Oui';

  @override
  String get helpNo => 'Non';

  @override
  String get helpThanksWeWillImprove =>
      'Merci ! Nous améliorerons cet article.';

  @override
  String get helpSupportTickets => 'Tickets de support';

  @override
  String get helpTicketActive => 'Actifs';

  @override
  String get helpTicketWaiting => 'En attente';

  @override
  String get helpTicketResolved => 'Résolus';

  @override
  String get helpNewTicket => 'Nouveau ticket';

  @override
  String get helpNoTickets => 'Aucun ticket';

  @override
  String get helpCreateTicketToGetSupport =>
      'Créez un ticket pour obtenir du support';

  @override
  String get helpTypeYourMessage => 'Tapez votre message...';

  @override
  String get helpMessageSent => 'Message envoyé !';

  @override
  String get helpCreateSupportTicket => 'Créer un ticket de support';

  @override
  String get helpDescribeIssueDetail => 'Décrivez votre problème en détail...';

  @override
  String get helpCancel => 'Annuler';

  @override
  String get helpSubmit => 'Envoyer';

  @override
  String get helpTicketCreatedSuccess => 'Ticket de support créé avec succès !';

  @override
  String get cookiePreferencesSaved => 'Préférences de cookies enregistrées';

  @override
  String get cookieEssentialOnly => 'Essentiels uniquement';

  @override
  String get cookieWeUseCookies => 'Nous utilisons des cookies';

  @override
  String get cookieBannerDescription =>
      'Nous utilisons des cookies pour améliorer votre expérience, analyser l’utilisation du site et fournir du contenu personnalisé. En cliquant sur « Tout accepter », vous consentez à notre utilisation des cookies.';

  @override
  String get cookieAcceptAll => 'Tout accepter';

  @override
  String get cookieCustomize => 'Personnaliser';

  @override
  String get cookiePrivacyPolicy => 'Politique de confidentialité';

  @override
  String get cookiePreferencesTitle => 'Préférences de cookies';

  @override
  String get cookieCustomizeDescription =>
      'Personnalisez vos préférences de cookies. Les cookies essentiels sont toujours activés.';

  @override
  String get cookiePreferencesSavedSuccess =>
      'Préférences de cookies enregistrées avec succès';

  @override
  String get cookieFailedToSave =>
      'Échec de l’enregistrement des préférences. Veuillez réessayer.';

  @override
  String get cookieRejectAll => 'Tout refuser';

  @override
  String get cookieSavePreferences => 'Enregistrer les préférences';

  @override
  String get cookieAlwaysActive => 'Toujours actif';

  @override
  String get cookieSettingsTitle => 'Paramètres des cookies';

  @override
  String get cookieNoConsentData => 'Aucune donnée de consentement disponible';

  @override
  String get cookieSetPreferences => 'Définir les préférences';

  @override
  String get cookieConsentActive => 'Consentement actif';

  @override
  String get cookieNoConsentGiven => 'Aucun consentement donné';

  @override
  String get cookieCurrentPreferences => 'Préférences actuelles';

  @override
  String get cookieChangePreferences => 'Modifier les préférences';

  @override
  String get cookieExportMyData => 'Exporter mes données';

  @override
  String get cookieDeleteMyData => 'Supprimer mes données';

  @override
  String get cookieAboutCookies => 'À propos des cookies';

  @override
  String get cookieAboutDescription =>
      'Les cookies nous aident à vous offrir une meilleure expérience. Vous pouvez modifier vos préférences à tout moment. Les cookies essentiels sont toujours actifs pour la sécurité et le fonctionnement.';

  @override
  String get cookieReadPrivacyPolicy => 'Lire la politique de confidentialité';

  @override
  String get cookieExportData => 'Exporter les données';

  @override
  String get cookieExportDataDescription =>
      'Cela créera un fichier avec toutes vos données de cookies et de consentement. Le fichier sera enregistré dans votre dossier de téléchargements.';

  @override
  String get cookieCancel => 'Annuler';

  @override
  String get cookieExport => 'Exporter';

  @override
  String get cookieDeleteData => 'Supprimer les données';

  @override
  String get cookieDeleteDataDescription =>
      'Cela supprimera définitivement toutes vos données de cookies. Les cookies essentiels nécessaires au fonctionnement de l’application seront conservés. Cette action est irréversible.';

  @override
  String get cookieDelete => 'Supprimer';

  @override
  String get cookieDataDeletedSuccess => 'Données supprimées avec succès';

  @override
  String get careerCounselingTitle => 'Orientation professionnelle';

  @override
  String get careerFindCounselor => 'Trouver un conseiller';

  @override
  String get careerUpcoming => 'À venir';

  @override
  String get careerPastSessions => 'Sessions passées';

  @override
  String get careerSearchCounselors =>
      'Rechercher par nom, spécialisation ou expertise...';

  @override
  String get careerAvailableNow => 'Disponible maintenant';

  @override
  String get careerHighestRated => 'Mieux notés';

  @override
  String get careerMostExperienced => 'Plus expérimentés';

  @override
  String get careerNoCounselorsFound => 'Aucun conseiller trouvé';

  @override
  String get careerTryAdjustingSearch => 'Essayez de modifier votre recherche';

  @override
  String get careerReschedule => 'Reprogrammer';

  @override
  String get careerJoinSession => 'Rejoindre la session';

  @override
  String get careerNoPastSessions => 'Aucune session passée';

  @override
  String get careerCompletedSessionsAppearHere =>
      'Vos sessions terminées apparaîtront ici';

  @override
  String get careerAbout => 'À propos';

  @override
  String get careerAreasOfExpertise => 'Domaines d’expertise';

  @override
  String get careerBookSession => 'Réserver une session';

  @override
  String get careerCurrentlyUnavailable => 'Actuellement indisponible';

  @override
  String get careerBookCounselingSession => 'Réserver une session de conseil';

  @override
  String get careerSessionType => 'Type de session';

  @override
  String get careerPreferredDate => 'Date préférée';

  @override
  String get careerSelectDate => 'Sélectionner une date';

  @override
  String get careerSessionNotesOptional => 'Notes de session (facultatif)';

  @override
  String get careerWhatToDiscuss => 'Que souhaitez-vous discuter ?';

  @override
  String get careerCancel => 'Annuler';

  @override
  String get careerConfirmBooking => 'Confirmer la réservation';

  @override
  String get careerSessionBookedSuccess => 'Session réservée avec succès !';

  @override
  String get careerResourcesTitle => 'Ressources de carrière';

  @override
  String get careerAll => 'Tous';

  @override
  String get careerArticles => 'Articles';

  @override
  String get careerVideos => 'Vidéos';

  @override
  String get careerCourses => 'Cours';

  @override
  String get careerSearchResources => 'Rechercher des ressources...';

  @override
  String get careerRemovedFromBookmarks => 'Retiré des favoris';

  @override
  String get careerAddedToBookmarks => 'Ajouté aux favoris';

  @override
  String get careerCategories => 'Catégories';

  @override
  String get careerNoResourcesFound => 'Aucune ressource trouvée';

  @override
  String get careerWhatYoullLearn => 'Ce que vous apprendrez';

  @override
  String get careerSaved => 'Enregistré';

  @override
  String get careerSave => 'Enregistrer';

  @override
  String get careerOpeningResource => 'Ouverture de la ressource...';

  @override
  String get careerStartLearning => 'Commencer à apprendre';

  @override
  String get careerBrowseCategories => 'Parcourir les catégories';

  @override
  String get jobDetailsTitle => 'Détails du poste';

  @override
  String get jobSavedSuccessfully => 'Offre enregistrée avec succès';

  @override
  String get jobRemovedFromSaved => 'Offre retirée des enregistrements';

  @override
  String get jobShareComingSoon =>
      'Fonctionnalité de partage bientôt disponible';

  @override
  String get jobApplyNow => 'Postuler maintenant';

  @override
  String get jobSalaryRange => 'Fourchette salariale';

  @override
  String get jobLocation => 'Localisation';

  @override
  String get jobApplicationDeadline => 'Date limite de candidature';

  @override
  String get jobDescription => 'Description du poste';

  @override
  String get jobRequirements => 'Exigences';

  @override
  String get jobResponsibilities => 'Responsabilités';

  @override
  String get jobBenefits => 'Avantages';

  @override
  String get jobRequiredSkills => 'Compétences requises';

  @override
  String get jobAboutTheCompany => 'À propos de l’entreprise';

  @override
  String get jobCompanyProfileComingSoon =>
      'Profil de l’entreprise bientôt disponible';

  @override
  String get jobViewCompanyProfile => 'Voir le profil de l’entreprise';

  @override
  String get jobSimilarJobs => 'Offres similaires';

  @override
  String get jobApplyForThisJob => 'Postuler pour ce poste';

  @override
  String get jobYouAreApplyingFor => 'Vous postulez pour :';

  @override
  String get jobCoverLetter => 'Lettre de motivation';

  @override
  String get jobCoverLetterHint =>
      'Dites-nous pourquoi vous êtes le candidat idéal...';

  @override
  String get jobUploadResume => 'Télécharger le CV';

  @override
  String get jobCancel => 'Annuler';

  @override
  String get jobSubmitApplication => 'Soumettre la candidature';

  @override
  String get jobApplicationSubmittedSuccess =>
      'Candidature soumise avec succès !';

  @override
  String get jobOpportunitiesTitle => 'Offres d’emploi';

  @override
  String get jobAllJobs => 'Toutes les offres';

  @override
  String get jobSaved => 'Enregistrées';

  @override
  String get jobApplied => 'Candidatures';

  @override
  String get jobSearchHint =>
      'Rechercher des emplois, entreprises ou compétences...';

  @override
  String get jobRemoteOnly => 'Télétravail uniquement';

  @override
  String get jobNoApplicationsYet => 'Aucune candidature pour le moment';

  @override
  String get jobStartApplyingToSee =>
      'Commencez à postuler pour voir vos candidatures ici';

  @override
  String get jobNoJobsFound => 'Aucune offre trouvée';

  @override
  String get jobTryAdjustingFilters => 'Essayez de modifier vos filtres';

  @override
  String get jobDetailComingSoon => 'Écran de détails bientôt disponible';

  @override
  String get jobFilterJobs => 'Filtrer les offres';

  @override
  String get jobClearAll => 'Tout effacer';

  @override
  String get jobJobType => 'Type d’emploi';

  @override
  String get jobExperienceLevel => 'Niveau d’expérience';

  @override
  String get jobApplyFilters => 'Appliquer les filtres';

  @override
  String get jobSortBy => 'Trier par';

  @override
  String get jobRelevance => 'Pertinence';

  @override
  String get jobNewestFirst => 'Plus récents';

  @override
  String get jobHighestSalary => 'Salaire le plus élevé';

  @override
  String get msgFailedToSendMessage => 'Échec de l’envoi du message';

  @override
  String get msgPhotoFromGallery => 'Photo depuis la galerie';

  @override
  String get msgTakePhoto => 'Prendre une photo';

  @override
  String get msgOpensCameraOnMobile =>
      'Ouvre la caméra sur les appareils mobiles';

  @override
  String get msgDocument => 'Document';

  @override
  String get msgCameraNotAvailable =>
      'Caméra non disponible dans le navigateur. Utilisez « Photo depuis la galerie » pour sélectionner une image.';

  @override
  String get msgNoMessagesYet => 'Aucun message pour le moment';

  @override
  String get msgSendMessageToStart =>
      'Envoyez un message pour démarrer la conversation';

  @override
  String get msgConversation => 'Conversation';

  @override
  String get msgOnline => 'En ligne';

  @override
  String get msgConnecting => 'Connexion...';

  @override
  String get msgTypeAMessage => 'Tapez un message...';

  @override
  String get msgMessages => 'Messages';

  @override
  String get msgSearchMessages => 'Rechercher des messages';

  @override
  String get msgSearchConversations => 'Rechercher des conversations...';

  @override
  String get msgRetry => 'Réessayer';

  @override
  String get msgCheckDatabaseSetup =>
      'Vérifier la configuration de la base de données';

  @override
  String get msgDatabaseSetupStatus =>
      'État de la configuration de la base de données';

  @override
  String get msgTestInsertResult => 'Résultat du test d’insertion';

  @override
  String get msgTestInsert => 'Tester l’insertion';

  @override
  String get msgNoConversationsYet => 'Aucune conversation pour le moment';

  @override
  String get msgFailedToCreateConversation =>
      'Échec de la création de la conversation';

  @override
  String get msgNewConversation => 'Nouvelle conversation';

  @override
  String get msgSearchByNameOrEmail => 'Rechercher par nom ou e-mail...';

  @override
  String get msgNoUsersFound => 'Aucun utilisateur trouvé';

  @override
  String msgNoUsersMatch(String query) {
    return 'Aucun utilisateur ne correspond à « $query »';
  }

  @override
  String get progressAchievementsTitle => 'Succès';

  @override
  String get progressNoAchievementsYet => 'Aucun succès pour le moment';

  @override
  String get progressClose => 'Fermer';

  @override
  String get progressMyProgress => 'Ma progression';

  @override
  String get progressKeepUpGreatWork => 'Continuez comme ça !';

  @override
  String get progressMakingExcellentProgress => 'Vous progressez excellemment';

  @override
  String get progressCoursesCompleted => 'Cours terminés';

  @override
  String get progressStudyTime => 'Temps d’étude';

  @override
  String get progressTotalLearningTime => 'Temps total d’apprentissage';

  @override
  String get progressAverageScore => 'Score moyen';

  @override
  String get progressCertificates => 'Certificats';

  @override
  String get progressLearningActivity => 'Activité d’apprentissage';

  @override
  String get progressStudyTimeMinutes => 'Temps d’étude (minutes)';

  @override
  String get progressCourseProgress => 'Progression des cours';

  @override
  String get progressViewAll => 'Voir tout';

  @override
  String get progressStudyGoalsTitle => 'Objectifs d’étude';

  @override
  String get progressYourGoals => 'Vos objectifs';

  @override
  String get progressCreateGoalComingSoon =>
      'Création d’objectif bientôt disponible';

  @override
  String get progressNewGoal => 'Nouvel objectif';

  @override
  String get instApplicantDetails => 'Details du candidat';

  @override
  String get instApplicantMarkUnderReview => 'Marquer en cours d\'examen';

  @override
  String get instApplicantAcceptApplication => 'Accepter la candidature';

  @override
  String get instApplicantRejectApplication => 'Rejeter la candidature';

  @override
  String get instApplicantApplicationStatus => 'Statut de la candidature';

  @override
  String get instApplicantStudentInfo => 'Informations sur l\'etudiant';

  @override
  String get instApplicantFullName => 'Nom complet';

  @override
  String get instApplicantEmail => 'E-mail';

  @override
  String get instApplicantPhone => 'Telephone';

  @override
  String get instApplicantPreviousSchool => 'Ecole precedente';

  @override
  String get instApplicantGpa => 'Moyenne';

  @override
  String get instApplicantProgramApplied => 'Programme demande';

  @override
  String get instApplicantSubmitted => 'Soumis';

  @override
  String get instApplicantStatementOfPurpose => 'Lettre de motivation';

  @override
  String get instApplicantDocuments => 'Documents';

  @override
  String get instApplicantDocViewerComingSoon =>
      'Visionneuse de documents bientot disponible';

  @override
  String instApplicantDownloading(String name) {
    return 'Telechargement de $name...';
  }

  @override
  String get instApplicantReviewInfo => 'Informations de revision';

  @override
  String get instApplicantReviewedBy => 'Examine par';

  @override
  String get instApplicantUnknown => 'Inconnu';

  @override
  String get instApplicantReviewDate => 'Date d\'examen';

  @override
  String get instApplicantReviewNotes => 'Notes de revision';

  @override
  String get instApplicantReject => 'Rejeter';

  @override
  String get instApplicantAccept => 'Accepter';

  @override
  String get instApplicantStatusPending => 'En attente d\'examen';

  @override
  String get instApplicantStatusUnderReview => 'En cours d\'examen';

  @override
  String get instApplicantStatusAccepted => 'Accepte';

  @override
  String get instApplicantStatusRejected => 'Rejete';

  @override
  String get instApplicantDocTranscript => 'Releve de notes';

  @override
  String get instApplicantDocId => 'Document d\'identite';

  @override
  String get instApplicantDocPhoto => 'Photo';

  @override
  String get instApplicantDocRecommendation => 'Lettre de recommandation';

  @override
  String get instApplicantDocGeneric => 'Document';

  @override
  String get instApplicantRecommendationLetters => 'Lettres de recommandation';

  @override
  String instApplicantReceivedCount(int count) {
    return '$count recue(s)';
  }

  @override
  String get instApplicantNoRecommendations =>
      'Aucune lettre de recommandation';

  @override
  String get instApplicantNoRecommendationsDesc =>
      'Le candidat n\'a soumis aucune lettre de recommandation avec cette candidature.';

  @override
  String get instApplicantType => 'Type';

  @override
  String get instApplicantLetterPreview => 'Apercu de la lettre';

  @override
  String get instApplicantClickViewFull =>
      'Cliquez sur \"Voir complet\" pour ouvrir la lettre de recommandation complete.';

  @override
  String get instApplicantLetterPreviewUnavailable =>
      'Apercu du contenu de la lettre non disponible.';

  @override
  String get instApplicantClose => 'Fermer';

  @override
  String get instApplicantViewFull => 'Voir complet';

  @override
  String get instApplicantDownloadNotAvailable =>
      'Telechargement non disponible';

  @override
  String instApplicantOpeningLetter(String url) {
    return 'Ouverture de la lettre : $url';
  }

  @override
  String get instApplicantMarkedUnderReview => 'Marque en cours d\'examen';

  @override
  String get instApplicantFailedUpdateStatus =>
      'Echec de la mise a jour du statut';

  @override
  String instApplicantErrorUpdatingStatus(String error) {
    return 'Erreur de mise a jour du statut : $error';
  }

  @override
  String get instApplicantConfirmAccept =>
      'Etes-vous sur de vouloir accepter cette candidature ?';

  @override
  String get instApplicantConfirmReject =>
      'Etes-vous sur de vouloir rejeter cette candidature ?';

  @override
  String get instApplicantReviewNotesOptional =>
      'Notes de revision (Facultatif)';

  @override
  String get instApplicantReviewNotesRequired =>
      'Notes de revision (Obligatoire)';

  @override
  String get instApplicantAddComments =>
      'Ajoutez des commentaires sur votre decision...';

  @override
  String get instApplicantCancel => 'Annuler';

  @override
  String get instApplicantNotesRequiredRejection =>
      'Les notes de revision sont obligatoires pour un rejet';

  @override
  String get instApplicantAcceptedSuccess => 'Candidature acceptee avec succes';

  @override
  String get instApplicantRejectedSuccess => 'Candidature rejetee';

  @override
  String instApplicantErrorProcessingReview(String error) {
    return 'Erreur lors du traitement de la revision : $error';
  }

  @override
  String get instApplicantReceived => 'RECU';

  @override
  String get instApplicantViewLetter => 'Voir la lettre';

  @override
  String get instApplicantDownload => 'Telecharger';

  @override
  String get instApplicantRetry => 'Reessayer';

  @override
  String get instApplicantSearchHint => 'Rechercher des candidats...';

  @override
  String instApplicantTabAll(int count) {
    return 'Tous ($count)';
  }

  @override
  String instApplicantTabPending(int count) {
    return 'En attente ($count)';
  }

  @override
  String instApplicantTabUnderReview(int count) {
    return 'En examen ($count)';
  }

  @override
  String instApplicantTabAccepted(int count) {
    return 'Acceptes ($count)';
  }

  @override
  String instApplicantTabRejected(int count) {
    return 'Rejetes ($count)';
  }

  @override
  String get instApplicantLoading => 'Chargement des candidats...';

  @override
  String get instApplicantNoApplicantsFound => 'Aucun candidat trouve';

  @override
  String get instApplicantTryAdjustingSearch =>
      'Essayez d\'ajuster votre recherche';

  @override
  String get instApplicantNoAppsInCategory =>
      'Aucune candidature dans cette categorie';

  @override
  String instApplicantGpaValue(String gpa) {
    return 'Moyenne : $gpa';
  }

  @override
  String instApplicantSubmittedDate(String date) {
    return 'Soumis : $date';
  }

  @override
  String get instApplicantChipPending => 'En attente';

  @override
  String get instApplicantChipReviewing => 'En examen';

  @override
  String get instCourseEditCourse => 'Modifier le Cours';

  @override
  String get instCourseCreateCourse => 'Créer un Cours';

  @override
  String get instCourseBasicInfo => 'Informations de Base';

  @override
  String get instCourseTitleLabel => 'Titre';

  @override
  String get instCourseTitleHint =>
      'par ex., Introduction au Développement Web';

  @override
  String get instCourseTitleRequired => 'Le titre est requis';

  @override
  String get instCourseTitleMinLength =>
      'Le titre doit comporter au moins 3 caractères';

  @override
  String get instCourseTitleMaxLength =>
      'Le titre doit comporter moins de 200 caractères';

  @override
  String get instCourseDescriptionLabel => 'Description';

  @override
  String get instCourseDescriptionHint =>
      'Décrivez ce que les étudiants apprendront dans ce cours';

  @override
  String get instCourseDescriptionRequired => 'La description est requise';

  @override
  String get instCourseDescriptionMinLength =>
      'La description doit comporter au moins 10 caractères';

  @override
  String get instCourseCourseDetails => 'Détails du Cours';

  @override
  String get instCourseCourseType => 'Type de Cours';

  @override
  String get instCourseDifficultyLevel => 'Niveau de Difficulté';

  @override
  String get instCourseDurationHours => 'Durée (Heures)';

  @override
  String get instCourseCategory => 'Catégorie';

  @override
  String get instCourseCategoryHint =>
      'par ex., Programmation, Design, Business';

  @override
  String get instCoursePricing => 'Tarification';

  @override
  String get instCoursePriceLabel => 'Prix';

  @override
  String get instCoursePriceRequired => 'Le prix est requis';

  @override
  String get instCourseInvalidPrice => 'Prix invalide';

  @override
  String get instCourseCurrency => 'Devise';

  @override
  String get instCourseMaxStudents => 'Nombre Maximum d\'Étudiants';

  @override
  String get instCourseMaxStudentsHint => 'Laisser vide pour illimité';

  @override
  String get instCourseMedia => 'Médias';

  @override
  String get instCourseThumbnailUrl => 'URL de la Miniature';

  @override
  String get instCourseTags => 'Tags';

  @override
  String get instCourseAddTagHint =>
      'Ajouter un tag (par ex., JavaScript, React)';

  @override
  String get instCourseLearningOutcomes => 'Résultats d\'Apprentissage';

  @override
  String get instCourseOutcomeHint =>
      'Que pourront faire les étudiants après ce cours ?';

  @override
  String get instCoursePrerequisites => 'Prérequis';

  @override
  String get instCoursePrerequisiteHint =>
      'Que doivent savoir les étudiants avant de suivre ce cours ?';

  @override
  String get instCourseUpdateCourse => 'Mettre à Jour le Cours';

  @override
  String get instCourseCreatedSuccess => 'Cours créé avec succès !';

  @override
  String get instCourseUpdatedSuccess => 'Cours mis à jour avec succès';

  @override
  String get instCourseFailedToSave => 'Échec de l\'enregistrement du cours';

  @override
  String get instCourseCourseRoster => 'Liste des Étudiants du Cours';

  @override
  String get instCourseRefresh => 'Actualiser';

  @override
  String get instCourseRetry => 'Réessayer';

  @override
  String get instCourseNoEnrolledStudents =>
      'Aucun étudiant inscrit pour l\'instant';

  @override
  String get instCourseApprovedStudentsAppearHere =>
      'Les étudiants approuvés apparaîtront ici';

  @override
  String get instCourseEnrolledStudents => 'Étudiants Inscrits';

  @override
  String get instCourseMaxCapacity => 'Capacité Max';

  @override
  String instCourseEnrolledDate(String date) {
    return 'Inscrit: $date';
  }

  @override
  String get instCourseEnrollmentPermissions => 'Permissions d\'Inscription';

  @override
  String get instCoursePendingRequests => 'En attente';

  @override
  String get instCourseApproved => 'Approuvées';

  @override
  String get instCourseAllStudents => 'Tous les Étudiants';

  @override
  String get instCourseGrantPermission => 'Accorder une Permission';

  @override
  String get instCourseSelectAtLeastOne =>
      'Veuillez sélectionner au moins un étudiant';

  @override
  String instCourseGrantedPermission(int count) {
    return 'Permission accordée à $count étudiant(s)';
  }

  @override
  String instCourseFailedGrantPermission(int count) {
    return 'Échec de l\'octroi de permission à $count étudiant(s)';
  }

  @override
  String get instCourseGrantEnrollmentPermission =>
      'Accorder une Permission d\'Inscription';

  @override
  String get instCourseSelectStudentsGrant =>
      'Sélectionnez les étudiants pour accorder une permission d\'inscription';

  @override
  String get instCourseSearchStudents => 'Rechercher des étudiants...';

  @override
  String instCourseSelectedCount(int count) {
    return '$count sélectionné(s)';
  }

  @override
  String get instCourseClear => 'Effacer';

  @override
  String get instCourseCancel => 'Annuler';

  @override
  String get instCourseSelectStudents => 'Sélectionner des Étudiants';

  @override
  String instCourseGrantToStudents(int count) {
    return 'Accorder à $count Étudiants';
  }

  @override
  String get instCourseNoStudentsAvailable => 'Aucun étudiant disponible';

  @override
  String get instCourseAllStudentsHavePermissions =>
      'Tous les étudiants ont déjà des permissions ou des demandes en attente';

  @override
  String get instCourseNoMatchingStudents =>
      'Aucun étudiant ne correspond à votre recherche';

  @override
  String get instCourseNoPendingRequests => 'Aucune demande en attente';

  @override
  String get instCourseStudentsCanRequest =>
      'Les étudiants peuvent demander une permission d\'inscription';

  @override
  String get instCourseMessage => 'Message';

  @override
  String instCourseRequested(String date) {
    return 'Demandé: $date';
  }

  @override
  String get instCourseDeny => 'Refuser';

  @override
  String get instCourseApprove => 'Approuver';

  @override
  String instCourseApprovedStudent(String name) {
    return '$name approuvé avec succès';
  }

  @override
  String get instCourseFailedToApprove =>
      'Échec de l\'approbation de la demande';

  @override
  String get instCourseDenyPermissionRequest =>
      'Refuser la Demande de Permission';

  @override
  String instCourseDenyStudent(String name) {
    return 'Êtes-vous sûr de vouloir refuser la permission pour $name ?';
  }

  @override
  String get instCourseReasonForDenial => 'Raison du Refus';

  @override
  String get instCourseEnterReason => 'Entrez la raison du refus';

  @override
  String get instCoursePleaseProvideReason =>
      'Veuillez fournir une raison pour le refus';

  @override
  String instCourseDeniedStudent(String name) {
    return 'Permission refusée pour $name';
  }

  @override
  String get instCourseNoApprovedPermissions =>
      'Aucune permission approuvée pour l\'instant';

  @override
  String get instCourseGrantToAllowEnroll =>
      'Accordez des permissions pour permettre aux étudiants de s\'inscrire';

  @override
  String get instCourseRevokePermission => 'Révoquer la Permission';

  @override
  String instCourseRevokePermissionFor(String name) {
    return 'Révoquer la permission pour $name ?';
  }

  @override
  String get instCourseReasonOptional => 'Raison (Optionnel)';

  @override
  String get instCourseRevoke => 'Révoquer';

  @override
  String instCourseRevokedPermissionFor(String name) {
    return 'Permission révoquée pour $name';
  }

  @override
  String get instCourseNoAdmittedStudents => 'Aucun étudiant admis';

  @override
  String get instCourseAcceptedStudentsAppearHere =>
      'Les étudiants acceptés dans votre institution apparaîtront ici';

  @override
  String get instCourseRequestPending => 'Demande en Attente';

  @override
  String get instCourseAccessGranted => 'Accès Accordé';

  @override
  String get instCourseDenied => 'Refusé';

  @override
  String get instCourseRevoked => 'Révoqué';

  @override
  String get instCourseGrantAccess => 'Accorder l\'Accès';

  @override
  String instCourseGrantStudentPermission(String name) {
    return 'Accorder une permission d\'inscription à $name ?';
  }

  @override
  String get instCourseNotesOptional => 'Notes (Optionnel)';

  @override
  String get instCourseAddNotes => 'Ajouter des notes (optionnel)';

  @override
  String get instCourseGrant => 'Accorder';

  @override
  String instCourseGrantedPermissionTo(String name) {
    return 'Permission accordée à $name';
  }

  @override
  String get instCourseFailedToGrantPermission =>
      'Échec de l\'octroi de permission';

  @override
  String get instCourseRequestApproved => 'Demande approuvée avec succès';

  @override
  String get instCourseFailedToApproveRequest =>
      'Échec de l\'approbation de la demande';

  @override
  String get instCourseContentBuilder => 'Constructeur de Contenu de Cours';

  @override
  String get instCoursePreviewCourse => 'Aperçu du Cours';

  @override
  String get instCourseAddModule => 'Ajouter un Module';

  @override
  String get instCourseCourseTitle => 'Titre du Cours';

  @override
  String get instCourseEditInfo => 'Modifier les Infos';

  @override
  String get instCourseCourseModules => 'Modules du Cours';

  @override
  String get instCourseNoModulesYet => 'Aucun module pour l\'instant';

  @override
  String get instCourseStartBuildingModules =>
      'Commencez à construire votre cours en ajoutant des modules';

  @override
  String instCourseModuleIndex(int index) {
    return 'Module $index';
  }

  @override
  String instCourseLessonsCount(int count) {
    return '$count leçons';
  }

  @override
  String get instCourseEditModule => 'Modifier le Module';

  @override
  String get instCourseDeleteModule => 'Supprimer le Module';

  @override
  String get instCourseLearningObjectives => 'Objectifs d\'Apprentissage';

  @override
  String get instCourseLessons => 'Leçons';

  @override
  String get instCourseAddLesson => 'Ajouter une Leçon';

  @override
  String get instCourseNoLessonsInModule =>
      'Aucune leçon dans ce module pour l\'instant';

  @override
  String get instCourseEditLesson => 'Modifier la Leçon';

  @override
  String get instCourseDeleteLesson => 'Supprimer la Leçon';

  @override
  String get instCourseError => 'Erreur';

  @override
  String instCourseModuleCreatedSuccess(String title) {
    return 'Module \'$title\' créé avec succès';
  }

  @override
  String instCourseModuleUpdatedSuccess(String title) {
    return 'Module \'$title\' mis à jour avec succès';
  }

  @override
  String get instCourseAddNewLesson => 'Ajouter une Nouvelle Leçon';

  @override
  String get instCourseLessonType => 'Type de Leçon';

  @override
  String get instCourseLessonTitle => 'Titre de la Leçon';

  @override
  String get instCoursePleaseEnterTitle => 'Veuillez entrer un titre';

  @override
  String get instCourseDescription => 'Description';

  @override
  String get instCourseLessonCreatedSuccess => 'Leçon créée avec succès';

  @override
  String get instCourseCreate => 'Créer';

  @override
  String get instCourseDeleteModuleConfirm =>
      'Êtes-vous sûr de vouloir supprimer ce module ? Toutes les leçons seront supprimées.';

  @override
  String get instCourseDelete => 'Supprimer';

  @override
  String get instCourseModuleDeletedSuccess => 'Module supprimé avec succès';

  @override
  String get instCourseDeleteLessonConfirm =>
      'Êtes-vous sûr de vouloir supprimer cette leçon ?';

  @override
  String get instCourseLessonDeletedSuccess => 'Leçon supprimée avec succès';

  @override
  String get instCourseEditCourseInfo => 'Modifier les Informations du Cours';

  @override
  String get instCourseEnterTitle => 'Entrez le titre du cours';

  @override
  String get instCourseEnterDescription => 'Entrez la description du cours';

  @override
  String get instCourseLevel => 'Niveau';

  @override
  String get instCourseInfoUpdatedSuccess =>
      'Informations du cours mises à jour avec succès';

  @override
  String get instCourseSaving => 'Enregistrement...';

  @override
  String get instCourseSaveChanges => 'Enregistrer les Modifications';

  @override
  String get instProgramCreateProgram => 'Créer un Programme';

  @override
  String get instProgramNameLabel => 'Nom du Programme';

  @override
  String get instProgramNameHint => 'par ex., Licence en Informatique';

  @override
  String get instProgramDescriptionLabel => 'Description';

  @override
  String get instProgramDescriptionHint =>
      'Décrivez le programme, ses objectifs et ce qui le rend unique';

  @override
  String get instProgramCategoryLabel => 'Catégorie';

  @override
  String get instProgramLevelLabel => 'Niveau';

  @override
  String get instProgramDuration => 'Durée';

  @override
  String get instProgramFeeLabel => 'Frais';

  @override
  String get instProgramMaxStudentsLabel => 'Nombre Maximum d\'Étudiants';

  @override
  String get instProgramMaxStudentsHint => 'par ex., 100';

  @override
  String get instProgramStartDate => 'Date de Début';

  @override
  String get instProgramApplicationDeadline => 'Date Limite de Candidature';

  @override
  String get instProgramRequirements => 'Exigences';

  @override
  String get instProgramAddRequirementHint =>
      'par ex., Diplôme d\'études secondaires avec un GPA minimum de 3,0';

  @override
  String get instProgramAddAtLeastOneRequirement =>
      'Veuillez ajouter au moins une exigence';

  @override
  String get instProgramDeadlineBeforeStart =>
      'La date limite de candidature doit être avant la date de début';

  @override
  String get instProgramCreatedSuccess => 'Programme créé avec succès !';

  @override
  String get instProgramFailedToCreate => 'Échec de la création du programme';

  @override
  String instProgramErrorCreating(String error) {
    return 'Erreur lors de la création du programme: $error';
  }

  @override
  String get instProgramDetails => 'Détails du Programme';

  @override
  String get instProgramBack => 'Retour';

  @override
  String get instProgramEditComingSoon =>
      'Fonctionnalité de modification à venir';

  @override
  String get instProgramEditProgram => 'Modifier le Programme';

  @override
  String get instProgramDeactivate => 'Désactiver';

  @override
  String get instProgramActivate => 'Activer';

  @override
  String get instProgramDeleteProgram => 'Supprimer le Programme';

  @override
  String get instProgramInactiveMessage =>
      'Ce programme est actuellement inactif et n\'accepte pas de candidatures';

  @override
  String get instProgramEnrolled => 'Inscrits';

  @override
  String get instProgramAvailable => 'Disponibles';

  @override
  String get instProgramFee => 'Frais';

  @override
  String get instProgramDescription => 'Description';

  @override
  String get instProgramProgramDetails => 'Détails du Programme';

  @override
  String get instProgramCategory => 'Catégorie';

  @override
  String get instProgramInstitution => 'Institution';

  @override
  String get instProgramMaxStudents => 'Nombre Maximum d\'Étudiants';

  @override
  String get instProgramEnrollmentStatus => 'Statut des Inscriptions';

  @override
  String get instProgramFillRate => 'Taux de Remplissage';

  @override
  String get instProgramIsFull => 'Le programme est complet';

  @override
  String instProgramSlotsRemaining(int count) {
    return '$count places restantes';
  }

  @override
  String get instProgramDeactivateQuestion => 'Désactiver le Programme ?';

  @override
  String get instProgramActivateQuestion => 'Activer le Programme ?';

  @override
  String get instProgramStopAccepting =>
      'Cela arrêtera d\'accepter de nouvelles candidatures. Vous pourrez le réactiver plus tard.';

  @override
  String get instProgramStartAccepting =>
      'Cela recommencera à accepter de nouvelles candidatures.';

  @override
  String get instProgramCancel => 'Annuler';

  @override
  String get instProgramConfirm => 'Confirmer';

  @override
  String get instProgramActivated => 'Programme activé avec succès';

  @override
  String get instProgramDeactivated => 'Programme désactivé avec succès';

  @override
  String instProgramErrorUpdatingStatus(String error) {
    return 'Erreur lors de la mise à jour du statut: $error';
  }

  @override
  String get instProgramDeleteProgramQuestion => 'Supprimer le Programme ?';

  @override
  String get instProgramDeleteConfirm =>
      'Cette action ne peut pas être annulée. Toutes les données du programme seront définitivement supprimées.';

  @override
  String get instProgramDelete => 'Supprimer';

  @override
  String get instProgramDeletedSuccess => 'Programme supprimé avec succès';

  @override
  String get instProgramFailedToDelete =>
      'Échec de la suppression du programme';

  @override
  String instProgramErrorDeleting(String error) {
    return 'Erreur lors de la suppression du programme: $error';
  }

  @override
  String get instProgramPrograms => 'Programmes';

  @override
  String get instProgramRetry => 'Réessayer';

  @override
  String get instProgramLoading => 'Chargement des programmes...';

  @override
  String get instProgramActiveOnly => 'Actifs Uniquement';

  @override
  String get instProgramShowAll => 'Tout Afficher';

  @override
  String get instProgramSearchHint =>
      'Rechercher des programmes par nom ou catégorie';

  @override
  String get instProgramNewProgram => 'Nouveau Programme';

  @override
  String get instProgramNoProgramsFound => 'Aucun programme trouvé';

  @override
  String get instProgramTryAdjustingSearch =>
      'Essayez d\'ajuster votre recherche ou vos filtres';

  @override
  String get instProgramCreateFirstProgram =>
      'Créez votre premier programme pour commencer';

  @override
  String get instProgramInactive => 'INACTIF';

  @override
  String get instProgramEnrollment => 'Inscription';

  @override
  String get instProgramFull => 'COMPLET';

  @override
  String instProgramSlotsAvailable(int count) {
    return '$count places disponibles';
  }

  @override
  String get instCounselorSearchHint => 'Rechercher des conseillers...';

  @override
  String get instCounselorRetry => 'Reessayer';

  @override
  String get instCounselorNoCounselorsFound => 'Aucun conseiller trouve';

  @override
  String get instCounselorNoMatchSearch =>
      'Aucun conseiller ne correspond a votre recherche';

  @override
  String get instCounselorAddToInstitution =>
      'Ajoutez des conseillers a votre institution';

  @override
  String instCounselorPageOf(int current, int total) {
    return 'Page $current sur $total';
  }

  @override
  String get instCounselorCounselingOverview => 'Apercu du conseil';

  @override
  String get instCounselorCounselors => 'Conseillers';

  @override
  String get instCounselorStudents => 'Etudiants';

  @override
  String get instCounselorSessions => 'Seances';

  @override
  String get instCounselorCompleted => 'Terminees';

  @override
  String get instCounselorUpcoming => 'A venir';

  @override
  String get instCounselorAvgRating => 'Note moy.';

  @override
  String get instCounselorStudentAssigned => 'Etudiant assigne avec succes';

  @override
  String get instCounselorAssign => 'Assigner';

  @override
  String get instCounselorTotalSessions => 'Total des seances';

  @override
  String get instCounselorAssignStudents => 'Assigner des etudiants';

  @override
  String instCounselorAssignStudentTo(String name) {
    return 'Assigner un etudiant a $name';
  }

  @override
  String get instCounselorSearchStudents => 'Rechercher des etudiants...';

  @override
  String get instCounselorNoStudentsFound => 'Aucun etudiant trouve';

  @override
  String get instCounselorCancel => 'Annuler';

  @override
  String get studentCounselingBookSession => 'Reserver une seance';

  @override
  String get studentCounselingSelectDate => 'Selectionner la date';

  @override
  String get studentCounselingSelectTime => 'Selectionner l\'heure';

  @override
  String get studentCounselingSessionType => 'Type de seance';

  @override
  String get studentCounselingTopicOptional => 'Sujet (Facultatif)';

  @override
  String get studentCounselingTopicHint => 'De quoi aimeriez-vous discuter ?';

  @override
  String get studentCounselingDetailsOptional =>
      'Details supplementaires (Facultatif)';

  @override
  String get studentCounselingDetailsHint =>
      'Toute information supplementaire pour votre conseiller...';

  @override
  String get studentCounselingSessionSummary => 'Resume de la seance';

  @override
  String get studentCounselingCounselor => 'Conseiller';

  @override
  String get studentCounselingDate => 'Date';

  @override
  String get studentCounselingTime => 'Heure';

  @override
  String get studentCounselingType => 'Type';

  @override
  String get studentCounselingTopic => 'Sujet';

  @override
  String get studentCounselingBookedSuccess => 'Seance reservee avec succes !';

  @override
  String get studentCounselingBookFailed =>
      'Echec de la reservation de la seance';

  @override
  String studentCounselingUpcomingTab(int count) {
    return 'A venir ($count)';
  }

  @override
  String studentCounselingPastTab(int count) {
    return 'Passees ($count)';
  }

  @override
  String get studentCounselingContactAdmin =>
      'Veuillez contacter l\'administrateur de votre etablissement pour l\'attribution d\'un conseiller.';

  @override
  String get studentCounselingTotal => 'Total';

  @override
  String get studentCounselingCompleted => 'Terminees';

  @override
  String get studentCounselingUpcoming => 'A venir';

  @override
  String get studentCounselingRating => 'Note';

  @override
  String get studentCounselingNoUpcoming => 'Aucune seance a venir programmee';

  @override
  String get studentCounselingNoPast => 'Aucune seance passee';

  @override
  String get studentCounselingCancelSession => 'Annuler la seance';

  @override
  String get studentCounselingCancelConfirm =>
      'Etes-vous sur de vouloir annuler cette seance ? Cette action est irreversible.';

  @override
  String get studentCounselingKeepIt => 'Non, la garder';

  @override
  String get studentCounselingSessionCancelled => 'Seance annulee';

  @override
  String get studentCounselingYesCancel => 'Oui, annuler';

  @override
  String get studentCounselingRateSession => 'Evaluez votre seance';

  @override
  String get studentCounselingHowWasSession =>
      'Comment s\'est passee votre seance de conseil ?';

  @override
  String get studentCounselingCommentsOptional => 'Commentaires (facultatif)';

  @override
  String get studentCounselingCancel => 'Annuler';

  @override
  String get studentCounselingFeedbackThanks => 'Merci pour votre retour !';

  @override
  String get studentCounselingSubmit => 'Soumettre';

  @override
  String get studentCounselingSessions => 'Seances';

  @override
  String get studentCounselingAvailability => 'Disponibilite';

  @override
  String get studentCounselingBookASession => 'Reserver une seance';

  @override
  String get studentCounselingDuration => 'Duree';

  @override
  String studentCounselingMinutes(int count) {
    return '$count minutes';
  }

  @override
  String get studentCounselingNotes => 'Notes';

  @override
  String get studentCounselingYourFeedback => 'Votre avis';

  @override
  String get studentCounselingLeaveFeedback => 'Laisser un avis';

  @override
  String get studentHelpTitle => 'Aide et support';

  @override
  String get studentHelpSearchHint => 'Rechercher de l\'aide...';

  @override
  String get studentHelpQuickHelp => 'Aide rapide';

  @override
  String get studentHelpLiveChat => 'Chat en direct';

  @override
  String get studentHelpChatWithSupport => 'Discuter avec le support';

  @override
  String get studentHelpEmailUs => 'Nous contacter';

  @override
  String get studentHelpEmailAddress => 'support@flow.edu';

  @override
  String get studentHelpTutorials => 'Tutoriels';

  @override
  String get studentHelpVideoGuides => 'Guides video';

  @override
  String get studentHelpUserGuide => 'Guide utilisateur';

  @override
  String get studentHelpFullDocumentation => 'Documentation complete';

  @override
  String get studentHelpFaq => 'Questions frequemment posees';

  @override
  String get studentHelpSearchResults => 'Resultats de recherche';

  @override
  String get studentHelpNoResults => 'Aucun resultat trouve';

  @override
  String get studentHelpTryDifferentKeywords =>
      'Essayez d\'autres mots-cles ou contactez le support';

  @override
  String get studentHelpContactSupport => 'Contacter le support';

  @override
  String studentHelpQuestionsCount(int count) {
    return '$count questions';
  }

  @override
  String studentHelpComingSoon(String feature) {
    return '$feature bientot disponible !';
  }

  @override
  String get studentHelpReachOut =>
      'Besoin d\'aide ? Contactez-nous via l\'un de ces canaux :';

  @override
  String get studentHelpEmail => 'E-mail';

  @override
  String get studentHelpPhone => 'Telephone';

  @override
  String get studentHelpHours => 'Horaires';

  @override
  String get studentHelpBusinessHours => 'Lun-Ven, 9h - 18h EST';

  @override
  String get studentHelpClose => 'Fermer';

  @override
  String get studentHelpOpeningEmail => 'Ouverture du client e-mail...';

  @override
  String get studentHelpSendEmail => 'Envoyer un e-mail';

  @override
  String get parentLinkTitle => 'Liaison parentale';

  @override
  String get parentLinkLinkedTab => 'Lies';

  @override
  String get parentLinkRequestsTab => 'Demandes';

  @override
  String get parentLinkInviteCodesTab => 'Codes d\'invitation';

  @override
  String get parentLinkLoadingLinked => 'Chargement des parents lies...';

  @override
  String get parentLinkNoLinkedParents => 'Aucun parent lie';

  @override
  String get parentLinkNoLinkedMessage =>
      'Lorsqu\'un parent lie son compte au votre, il apparaitra ici.';

  @override
  String get parentLinkRefresh => 'Actualiser';

  @override
  String parentLinkManagePermissionsFor(String name) {
    return 'Gerer les permissions pour $name';
  }

  @override
  String get parentLinkControlPermissions =>
      'Controlez ce que ce parent peut voir :';

  @override
  String get parentLinkViewGrades => 'Voir les notes';

  @override
  String get parentLinkAllowViewGrades =>
      'Autoriser la consultation de vos notes academiques';

  @override
  String get parentLinkViewActivity => 'Voir l\'activite';

  @override
  String get parentLinkAllowViewActivity =>
      'Autoriser la consultation de votre activite';

  @override
  String get parentLinkViewMessages => 'Voir les messages';

  @override
  String get parentLinkAllowViewMessages =>
      'Autoriser la consultation de vos messages (prive)';

  @override
  String get parentLinkReceiveAlerts => 'Recevoir des alertes';

  @override
  String get parentLinkSendAlerts =>
      'Envoyer des alertes sur les mises a jour importantes';

  @override
  String get parentLinkCancel => 'Annuler';

  @override
  String get parentLinkSave => 'Enregistrer';

  @override
  String get parentLinkPermissionsUpdated => 'Permissions mises a jour';

  @override
  String get parentLinkUnlinkParent => 'Delier le parent';

  @override
  String parentLinkUnlinkConfirm(String name) {
    return 'Etes-vous sur de vouloir delier $name ? Il/elle ne pourra plus consulter vos informations.';
  }

  @override
  String get parentLinkUnlink => 'Delier';

  @override
  String parentLinkUnlinked(String name) {
    return '$name a ete delie(e)';
  }

  @override
  String get parentLinkLinked => 'Lie';

  @override
  String get parentLinkPermissions => 'Permissions :';

  @override
  String get parentLinkManage => 'Gerer';

  @override
  String get parentLinkLoadingRequests => 'Chargement des demandes...';

  @override
  String get parentLinkNoPendingRequests => 'Aucune demande en attente';

  @override
  String get parentLinkNoPendingMessage =>
      'Vous n\'avez aucune demande de liaison parentale a examiner.';

  @override
  String parentLinkApproved(String name) {
    return '$name a ete lie(e) a votre compte';
  }

  @override
  String get parentLinkDeclineRequest => 'Refuser la demande';

  @override
  String parentLinkDeclineConfirm(String name) {
    return 'Etes-vous sur de vouloir refuser la demande de liaison de $name ?';
  }

  @override
  String get parentLinkDecline => 'Refuser';

  @override
  String get parentLinkRequestDeclined => 'Demande refusee';

  @override
  String get parentLinkRequestedPermissions => 'Permissions demandees :';

  @override
  String get parentLinkApprove => 'Approuver';

  @override
  String get parentLinkGenerateNewCode =>
      'Generer un nouveau code d\'invitation';

  @override
  String get parentLinkShareCodeInfo =>
      'Partagez votre code d\'invitation avec votre parent pour qu\'il puisse lier son compte au votre.';

  @override
  String get parentLinkNoInviteCodes => 'Aucun code d\'invitation';

  @override
  String get parentLinkNoCodesMessage =>
      'Generez un code d\'invitation a partager avec votre parent.';

  @override
  String get parentLinkGenerateInviteCode => 'Generer un code d\'invitation';

  @override
  String get parentLinkConfigureCode =>
      'Configurez les parametres de votre code d\'invitation :';

  @override
  String get parentLinkGenerate => 'Generer';

  @override
  String get parentLinkCodeGenerated => 'Code genere !';

  @override
  String get parentLinkShareCode => 'Partagez ce code avec votre parent :';

  @override
  String get parentLinkCodeCopied => 'Code copie dans le presse-papiers';

  @override
  String get parentLinkDone => 'Termine';

  @override
  String get parentLinkDeleteCode => 'Supprimer le code d\'invitation';

  @override
  String get parentLinkDeleteCodeConfirm =>
      'Etes-vous sur de vouloir supprimer ce code d\'invitation ?';

  @override
  String get parentLinkDelete => 'Supprimer';

  @override
  String get studentProgressLoading => 'Chargement de la progression...';

  @override
  String get studentProgressTitle => 'Ma progression';

  @override
  String get studentProgressError => 'Erreur de chargement de la progression';

  @override
  String get studentProgressRetry => 'Reessayer';

  @override
  String get studentProgressNoData => 'Aucune donnee de progression';

  @override
  String get studentProgressEnrollMessage =>
      'Inscrivez-vous a des cours pour commencer a suivre votre progression.';

  @override
  String get studentProgressOverview => 'Apercu';

  @override
  String get studentProgressCourses => 'Cours';

  @override
  String get studentProgressAvgGrade => 'Note moyenne';

  @override
  String get studentProgressCompletion => 'Achevement';

  @override
  String get studentProgressAssignments => 'Devoirs';

  @override
  String get studentProgressGradeTrend => 'Tendance des notes';

  @override
  String get studentProgressStudyTime => 'Temps d\'etude (Heures)';

  @override
  String get studentProgressCourseCompletion => 'Achevement des cours';

  @override
  String get studentProgressCompleted => 'Termines';

  @override
  String get studentProgressInProgress => 'En cours';

  @override
  String get studentProgressProgress => 'Progression';

  @override
  String get studentProgressAppSuccessRate =>
      'Taux de reussite des candidatures';

  @override
  String get studentProgressNoAppData =>
      'Aucune donnee de candidature disponible';

  @override
  String get studentProgressNoAppsYet => 'Aucune candidature pour le moment';

  @override
  String get studentProgressAcceptanceRate => 'Taux d\'acceptation';

  @override
  String get studentProgressGpaTrend => 'Tendance de la MPC';

  @override
  String get studentProgressNoGpaData => 'Aucune donnee de MPC disponible';

  @override
  String get studentProgressCurrentGpa => 'MPC actuelle';

  @override
  String get studentProgressGoalGpa => 'MPC visee';

  @override
  String get studentProgressTrend => 'Tendance';

  @override
  String get studentProgressHistoricalGpa =>
      'Les donnees historiques de MPC apparaitront ici au fur et a mesure de votre progression';

  @override
  String get studentProgressCurrentGrade => 'Note actuelle';

  @override
  String get studentProgressTimeSpent => 'Temps consacre';

  @override
  String get studentProgressModules => 'Modules';

  @override
  String get studentProgressRecentGrades => 'Notes recentes';

  @override
  String get studentProgressFeedback => 'Commentaires';

  @override
  String get studentRecTitle => 'Lettres de recommandation';

  @override
  String studentRecAllTab(int count) {
    return 'Toutes ($count)';
  }

  @override
  String studentRecPendingTab(int count) {
    return 'En attente ($count)';
  }

  @override
  String studentRecInProgressTab(int count) {
    return 'En cours ($count)';
  }

  @override
  String studentRecCompletedTab(int count) {
    return 'Terminees ($count)';
  }

  @override
  String get studentRecRetry => 'Reessayer';

  @override
  String get studentRecLoadingRequests => 'Chargement des demandes...';

  @override
  String get studentRecRequestLetter => 'Demander une lettre';

  @override
  String get studentRecNoPending =>
      'Aucune demande de recommandation en attente';

  @override
  String get studentRecNoInProgress => 'Aucune lettre en cours de redaction';

  @override
  String get studentRecNoCompleted =>
      'Aucune lettre de recommandation terminee';

  @override
  String get studentRecNoRequests =>
      'Aucune demande de recommandation.\nAppuyez sur + pour demander une lettre.';

  @override
  String get studentRecNoRequestsTitle => 'Aucune demande';

  @override
  String get studentRecRequestSent =>
      'Demande de recommandation envoyee ! Le recommandeur recevra une invitation par e-mail.';

  @override
  String get studentRecFailedToSend => 'Echec de l\'envoi de la demande';

  @override
  String get studentRecStatus => 'Statut';

  @override
  String get studentRecType => 'Type';

  @override
  String get studentRecPurpose => 'Objectif';

  @override
  String get studentRecInstitution => 'Etablissement';

  @override
  String get studentRecDeadline => 'Date limite';

  @override
  String get studentRecRequested => 'Demandee le';

  @override
  String get studentRecDeclineReason => 'Raison du refus';

  @override
  String get studentRecClose => 'Fermer';

  @override
  String get studentRecCancelRequest => 'Annuler la demande';

  @override
  String get studentRecSendReminder => 'Envoyer un rappel';

  @override
  String get studentRecCancelRequestTitle => 'Annuler la demande ?';

  @override
  String get studentRecCancelRequestConfirm =>
      'Etes-vous sur de vouloir annuler cette demande de recommandation ?';

  @override
  String get studentRecNo => 'Non';

  @override
  String get studentRecYesCancel => 'Oui, annuler';

  @override
  String get studentRecRequestCancelled => 'Demande annulee';

  @override
  String get studentRecFailedToCancel => 'Echec de l\'annulation de la demande';

  @override
  String get studentRecReminderSent => 'Rappel envoye !';

  @override
  String get studentRecFailedReminder => 'Echec de l\'envoi du rappel';

  @override
  String get studentRecCompleted => 'Terminee';

  @override
  String get studentRecOverdue => 'En retard !';

  @override
  String get studentRecDueToday => 'A remettre aujourd\'hui';

  @override
  String studentRecDaysLeft(int count) {
    return '$count jours restants';
  }

  @override
  String get studentRecEdit => 'Modifier';

  @override
  String get studentRecCancel => 'Annuler';

  @override
  String get studentRecRemind => 'Rappeler';

  @override
  String get studentRecRequestRecLetter =>
      'Demander une lettre de recommandation';

  @override
  String get studentRecRecommenderEmail => 'E-mail du recommandeur *';

  @override
  String get studentRecEmailHelperText =>
      'Il/elle recevra une invitation pour soumettre la recommandation';

  @override
  String get studentRecEnterEmail =>
      'Veuillez saisir l\'e-mail du recommandeur';

  @override
  String get studentRecValidEmail =>
      'Veuillez saisir une adresse e-mail valide';

  @override
  String get studentRecRecommenderName => 'Nom du recommandeur *';

  @override
  String get studentRecNameHint => 'Dr. Jean Dupont';

  @override
  String get studentRecEnterName => 'Veuillez saisir le nom du recommandeur';

  @override
  String get studentRecTypeRequired => 'Type *';

  @override
  String get studentRecAcademic => 'Academique';

  @override
  String get studentRecProfessional => 'Professionnel';

  @override
  String get studentRecCharacter => 'Personnel';

  @override
  String get studentRecScholarship => 'Bourse';

  @override
  String get studentRecPurposeRequired => 'Objectif *';

  @override
  String get studentRecPurposeHint =>
      'ex. Candidature aux etudes superieures, Candidature a un emploi';

  @override
  String get studentRecPurposeValidation =>
      'Veuillez decrire l\'objectif (min 10 caracteres)';

  @override
  String get studentRecTargetInstitutions => 'Etablissements cibles *';

  @override
  String get studentRecNoAppsWarning =>
      'Vous n\'avez aucune candidature. Veuillez d\'abord soumettre des candidatures pour demander des recommandations.';

  @override
  String studentRecSelectInstitutions(int count) {
    return 'Selectionner les etablissements ($count selectionnes)';
  }

  @override
  String get studentRecSelectAtLeastOne =>
      'Veuillez selectionner au moins un etablissement';

  @override
  String get studentRecDeadlineRequired => 'Date limite *';

  @override
  String get studentRecPriority => 'Priorite';

  @override
  String get studentRecLow => 'Basse';

  @override
  String get studentRecNormal => 'Normale';

  @override
  String get studentRecHigh => 'Haute';

  @override
  String get studentRecUrgent => 'Urgente';

  @override
  String get studentRecMessageToRecommender => 'Message au recommandeur';

  @override
  String get studentRecMessageHint =>
      'Des points specifiques que vous aimeriez qu\'il/elle mette en avant ?';

  @override
  String get studentRecYourAchievements => 'Vos realisations';

  @override
  String get studentRecAchievementsHint =>
      'Listez les realisations pertinentes pour aider le recommandeur';

  @override
  String get studentRecYourGoals => 'Vos objectifs';

  @override
  String get studentRecGoalsHint =>
      'Quels sont vos objectifs de carriere/academiques ?';

  @override
  String get studentRecSendRequest => 'Envoyer la demande';

  @override
  String get studentRecEditRequest => 'Modifier la demande';

  @override
  String get studentRecTargetInstitution => 'Etablissement cible';

  @override
  String get studentRecInstitutionHint => 'Nom de l\'etablissement';

  @override
  String get studentRecSaveChanges => 'Enregistrer les modifications';

  @override
  String get studentRecRequestUpdated => 'Demande mise a jour avec succes !';

  @override
  String get studentRecFailedToUpdate =>
      'Echec de la mise a jour de la demande';

  @override
  String get studentResourcesTitle => 'Ressources';

  @override
  String get studentResourcesAllResources => 'Toutes les ressources';

  @override
  String get studentResourcesFavorites => 'Favoris';

  @override
  String get studentResourcesSearchHint => 'Rechercher des ressources...';

  @override
  String get studentResourcesAll => 'Toutes';

  @override
  String get studentResourcesNoResults => 'Aucune ressource trouvee';

  @override
  String get studentResourcesTryAdjusting =>
      'Essayez de modifier votre recherche ou vos filtres';

  @override
  String get studentResourcesRemovedFavorite => 'Retire des favoris';

  @override
  String get studentResourcesAddedFavorite => 'Ajoute aux favoris';

  @override
  String get studentResourcesOpenLink => 'Ouvrir le lien';

  @override
  String get studentResourcesDownload => 'Telecharger';

  @override
  String get studentScheduleTitle => 'Mon emploi du temps';

  @override
  String get studentScheduleGoToToday => 'Aller a aujourd\'hui';

  @override
  String get studentScheduleAddEventSoon =>
      'La fonctionnalite d\'ajout d\'evenement arrive bientot !';

  @override
  String get studentScheduleAddEvent => 'Ajouter un evenement';

  @override
  String get studentScheduleEnjoyFreeTime => 'Profitez de votre temps libre !';

  @override
  String get studentScheduleDate => 'Date';

  @override
  String get studentScheduleTime => 'Heure';

  @override
  String get studentScheduleLocation => 'Lieu';

  @override
  String get studentScheduleEditSoon =>
      'La fonctionnalite de modification arrive bientot !';

  @override
  String get studentScheduleEdit => 'Modifier';

  @override
  String get studentScheduleReminderSet => 'Rappel programme !';

  @override
  String get studentScheduleRemindMe => 'Me rappeler';

  @override
  String get parentChildAddChild => 'Ajouter un enfant';

  @override
  String get parentChildByEmail => 'Par e-mail';

  @override
  String get parentChildByCode => 'Par code';

  @override
  String get parentChildEmailDescription =>
      'Entrez l\'adresse e-mail de votre enfant pour lui envoyer une demande de lien.';

  @override
  String get parentChildStudentEmail => 'E-mail de l\'eleve';

  @override
  String get parentChildStudentEmailHint => 'eleve@exemple.com';

  @override
  String get parentChildEnterEmail => 'Veuillez entrer une adresse e-mail';

  @override
  String get parentChildValidEmail =>
      'Veuillez entrer une adresse e-mail valide';

  @override
  String get parentChildSendLinkRequest => 'Envoyer la demande de lien';

  @override
  String get parentChildApprovalNotice =>
      'Votre enfant recevra une notification pour approuver cette demande.';

  @override
  String get parentChildCodeDescription =>
      'Entrez le code d\'invitation que votre enfant a partage avec vous.';

  @override
  String get parentChildInviteCode => 'Code d\'invitation';

  @override
  String get parentChildInviteCodeHint => 'ABCD1234';

  @override
  String get parentChildEnterInviteCode =>
      'Veuillez entrer le code d\'invitation';

  @override
  String get parentChildCodeMinLength =>
      'Le code doit contenir au moins 6 caracteres';

  @override
  String get parentChildUseInviteCode => 'Utiliser le code d\'invitation';

  @override
  String get parentChildInviteCodeInfo =>
      'Demandez a votre enfant de generer un code d\'invitation depuis les parametres de son application.';

  @override
  String get parentChildRelationship => 'Relation';

  @override
  String get parentChildBack => 'Retour';

  @override
  String get parentChildOverview => 'Apercu';

  @override
  String get parentChildCourses => 'Cours';

  @override
  String get parentChildApplications => 'Candidatures';

  @override
  String get parentChildCounseling => 'Orientation';

  @override
  String get parentChildAcademicPerformance => 'Performance academique';

  @override
  String get parentChildAverageGrade => 'Note moyenne';

  @override
  String get parentChildActiveCourses => 'Cours actifs';

  @override
  String get parentChildSchool => 'Ecole';

  @override
  String get parentChildNotSet => 'Non defini';

  @override
  String get parentChildRecentActivity => 'Activite recente';

  @override
  String get parentChildCompletedAssignment => 'Devoir termine';

  @override
  String get parentChildMathChapter5 => 'Mathematiques - Test du chapitre 5';

  @override
  String parentChildHoursAgo(String count) {
    return 'Il y a $count heures';
  }

  @override
  String get parentChildSubmittedProject => 'Projet soumis';

  @override
  String get parentChildCsFinalProject => 'Informatique - Projet final';

  @override
  String parentChildDaysAgo(String count) {
    return 'Il y a $count jours';
  }

  @override
  String get parentChildReceivedGrade => 'Note recue';

  @override
  String get parentChildPhysicsLabReport =>
      'Physique - Rapport de laboratoire (92/100)';

  @override
  String get parentChildRetry => 'Reessayer';

  @override
  String get parentChildLoadingCourses => 'Chargement des cours...';

  @override
  String get parentChildNoCourseData => 'Aucune donnee de cours';

  @override
  String get parentChildNoCourseProgress =>
      'Aucune donnee de progression de cours disponible';

  @override
  String get parentChildCourseProgress => 'Progression du cours';

  @override
  String parentChildAssignments(String completed, String total) {
    return 'Devoirs : $completed/$total';
  }

  @override
  String get parentChildNoApplications => 'Aucune candidature';

  @override
  String get parentChildNoApplicationsYet =>
      'Votre enfant n\'a pas encore soumis de candidatures';

  @override
  String parentChildSubmitted(String date) {
    return 'Soumis le : $date';
  }

  @override
  String get parentChildStatusPending => 'En attente';

  @override
  String get parentChildStatusUnderReview => 'En cours d\'examen';

  @override
  String get parentChildStatusAccepted => 'Accepte';

  @override
  String get parentChildStatusRejected => 'Refuse';

  @override
  String get parentChildLoadingChildren => 'Chargement des enfants...';

  @override
  String get parentChildNoChildren => 'Aucun enfant';

  @override
  String get parentChildAddToMonitor =>
      'Ajoutez vos enfants pour suivre leur progression';

  @override
  String get parentChildAvg => 'MOY';

  @override
  String get parentChildLastActive => 'Derniere activite';

  @override
  String get parentChildPendingLinkRequests => 'Demandes de lien en attente';

  @override
  String get parentChildWaitingApproval =>
      'En attente de l\'approbation de l\'eleve';

  @override
  String get parentChildAwaitingApproval => 'En attente d\'approbation';

  @override
  String get parentChildNoCounselor => 'Aucun conseiller assigne';

  @override
  String parentChildNoCounselorDescription(String childName) {
    return '$childName n\'a pas encore de conseiller assigne.';
  }

  @override
  String parentChildChildCounselor(String childName) {
    return 'Conseiller de $childName';
  }

  @override
  String parentChildAssigned(String date) {
    return 'Assigne le : $date';
  }

  @override
  String get parentChildTotal => 'Total';

  @override
  String get parentChildUpcoming => 'A venir';

  @override
  String get parentChildCompleted => 'Terminees';

  @override
  String get parentChildUpcomingSessions => 'Seances a venir';

  @override
  String get parentChildNoUpcomingSessions => 'Aucune seance a venir';

  @override
  String get parentChildPastSessions => 'Seances passees';

  @override
  String get parentChildNoPastSessions => 'Aucune seance passee';

  @override
  String parentChildMinutes(String count) {
    return '$count min';
  }

  @override
  String get parentReportBack => 'Retour';

  @override
  String get parentReportAcademicReports => 'Rapports academiques';

  @override
  String get parentReportProgress => 'Progression';

  @override
  String get parentReportGrades => 'Notes';

  @override
  String get parentReportAttendance => 'Assiduite';

  @override
  String get parentReportStudentProgressReports =>
      'Rapports de progression des eleves';

  @override
  String get parentReportTrackProgress =>
      'Suivre la progression academique et l\'achevement des cours';

  @override
  String get parentReportNoProgressData => 'Aucune donnee de progression';

  @override
  String get parentReportAddChildrenProgress =>
      'Ajoutez des enfants pour voir leurs rapports de progression';

  @override
  String get parentReportCoursesEnrolled => 'Cours inscrits';

  @override
  String get parentReportApplications => 'Candidatures';

  @override
  String get parentReportOverallProgress => 'Progression globale';

  @override
  String get parentReportGradeReports => 'Rapports de notes';

  @override
  String get parentReportGradeBreakdown =>
      'Repartition detaillee des notes par matiere';

  @override
  String get parentReportNoGradeData => 'Aucune donnee de notes';

  @override
  String get parentReportAddChildrenGrades =>
      'Ajoutez des enfants pour voir leurs rapports de notes';

  @override
  String get parentReportAttendanceReports => 'Rapports d\'assiduite';

  @override
  String get parentReportTrackAttendance =>
      'Suivre l\'assiduite et la participation';

  @override
  String get parentReportNoAttendanceData => 'Aucune donnee d\'assiduite';

  @override
  String get parentReportAddChildrenAttendance =>
      'Ajoutez des enfants pour voir leurs rapports d\'assiduite';

  @override
  String get parentReportPresent => 'Present';

  @override
  String get parentReportLate => 'En retard';

  @override
  String get parentReportAbsent => 'Absent';

  @override
  String parentReportThisMonth(String present, String total) {
    return 'Ce mois-ci : $present sur $total jours present';
  }

  @override
  String get parentReportMathematics => 'Mathematiques';

  @override
  String get parentReportEnglish => 'Anglais';

  @override
  String get parentReportScience => 'Sciences';

  @override
  String get parentReportHistory => 'Histoire';

  @override
  String get parentMeetingBack => 'Retour';

  @override
  String get parentMeetingScheduleCounselor =>
      'Planifier une reunion avec le conseiller';

  @override
  String get parentMeetingScheduleTeacher =>
      'Planifier une reunion avec l\'enseignant';

  @override
  String get parentMeetingCounselorMeeting => 'Reunion avec le conseiller';

  @override
  String get parentMeetingParentTeacherConference =>
      'Conference parent-enseignant';

  @override
  String get parentMeetingCounselorDescription =>
      'Discuter de l\'orientation et de la planification academique';

  @override
  String get parentMeetingTeacherDescription =>
      'Discuter de la progression et des performances de l\'eleve';

  @override
  String get parentMeetingSelectStudent => 'Selectionner l\'eleve';

  @override
  String get parentMeetingNoChildren =>
      'Aucun enfant ajoute. Veuillez ajouter des enfants pour planifier des reunions.';

  @override
  String get parentMeetingSelectCounselor => 'Selectionner le conseiller';

  @override
  String get parentMeetingSelectTeacher => 'Selectionner l\'enseignant';

  @override
  String get parentMeetingNoCounselors =>
      'Aucun conseiller disponible pour le moment.';

  @override
  String get parentMeetingNoTeachers =>
      'Aucun enseignant disponible pour le moment.';

  @override
  String get parentMeetingCounselor => 'Conseiller';

  @override
  String get parentMeetingTeacher => 'Enseignant';

  @override
  String get parentMeetingSelectDateTime => 'Selectionner la date et l\'heure';

  @override
  String get parentMeetingDate => 'Date';

  @override
  String get parentMeetingSelectDate => 'Selectionner la date';

  @override
  String get parentMeetingTime => 'Heure';

  @override
  String get parentMeetingSelectTime => 'Selectionner l\'heure';

  @override
  String get parentMeetingMode => 'Mode de reunion';

  @override
  String get parentMeetingVideoCall => 'Appel video';

  @override
  String get parentMeetingInPerson => 'En personne';

  @override
  String get parentMeetingPhone => 'Telephone';

  @override
  String get parentMeetingDuration => 'Duree';

  @override
  String get parentMeetingDurationLabel => 'Duree de la reunion';

  @override
  String get parentMeeting15Min => '15 minutes';

  @override
  String get parentMeeting30Min => '30 minutes';

  @override
  String get parentMeeting45Min => '45 minutes';

  @override
  String get parentMeeting1Hour => '1 heure';

  @override
  String get parentMeeting1Point5Hours => '1h30';

  @override
  String get parentMeeting2Hours => '2 heures';

  @override
  String get parentMeetingSubject => 'Sujet de la reunion';

  @override
  String get parentMeetingSubjectLabel => 'Sujet';

  @override
  String get parentMeetingSubjectHint =>
      'ex. : Discussion sur la progression en mathematiques';

  @override
  String get parentMeetingAdditionalNotes =>
      'Notes supplementaires (Facultatif)';

  @override
  String get parentMeetingNotesLabel => 'Notes';

  @override
  String get parentMeetingNotesHint => 'Toute information supplementaire...';

  @override
  String get parentMeetingRequesting => 'Demande en cours...';

  @override
  String get parentMeetingRequestMeeting => 'Demander une reunion';

  @override
  String get parentMeetingRequestSent => 'Demande de reunion envoyee';

  @override
  String parentMeetingRequestSentDescription(String staffName) {
    return 'Votre demande de reunion a ete envoyee a $staffName. Vous serez notifie des qu\'il/elle aura repondu.';
  }

  @override
  String get parentMeetingOk => 'OK';

  @override
  String get parentMeetingRequestFailed =>
      'Echec de la demande de reunion. Veuillez reessayer.';

  @override
  String get parentMeetingError => 'Erreur';

  @override
  String get counselorMeetingBack => 'Retour';

  @override
  String get counselorMeetingRefresh => 'Actualiser';

  @override
  String get counselorMeetingManageAvailability => 'Gérer la disponibilité';

  @override
  String get counselorMeetingWeeklyAvailability => 'Disponibilité hebdomadaire';

  @override
  String get counselorMeetingSetAvailableHours =>
      'Définissez vos heures disponibles pour les réunions parents';

  @override
  String get counselorMeetingAddAvailabilitySlot =>
      'Ajouter un créneau de disponibilité';

  @override
  String get counselorMeetingAddNewAvailability =>
      'Ajouter une nouvelle disponibilité';

  @override
  String get counselorMeetingDayOfWeek => 'Jour de la semaine';

  @override
  String get counselorMeetingStartTime => 'Heure de début';

  @override
  String get counselorMeetingEndTime => 'Heure de fin';

  @override
  String counselorMeetingStartWithTime(String time) {
    return 'Début : $time';
  }

  @override
  String counselorMeetingEndWithTime(String time) {
    return 'Fin : $time';
  }

  @override
  String get counselorMeetingCancel => 'Annuler';

  @override
  String get counselorMeetingSave => 'Enregistrer';

  @override
  String get counselorMeetingNotAvailable => 'Non disponible';

  @override
  String get counselorMeetingInactive => 'Inactif';

  @override
  String get counselorMeetingDeactivate => 'Désactiver';

  @override
  String get counselorMeetingActivate => 'Activer';

  @override
  String get counselorMeetingDelete => 'Supprimer';

  @override
  String get counselorMeetingAvailabilityAdded =>
      'Disponibilité ajoutée avec succès';

  @override
  String get counselorMeetingFailedToAddAvailability =>
      'Échec de l’ajout de la disponibilité';

  @override
  String get counselorMeetingSlotDeactivated => 'Créneau désactivé';

  @override
  String get counselorMeetingSlotActivated => 'Créneau activé';

  @override
  String get counselorMeetingFailedToUpdateAvailability =>
      'Échec de la mise à jour de la disponibilité';

  @override
  String get counselorMeetingDeleteAvailability => 'Supprimer la disponibilité';

  @override
  String counselorMeetingConfirmDeleteSlot(String dayName) {
    return 'Êtes-vous sûr de vouloir supprimer le créneau du $dayName ?';
  }

  @override
  String get counselorMeetingAvailabilityDeleted =>
      'Disponibilité supprimée avec succès';

  @override
  String get counselorMeetingFailedToDeleteAvailability =>
      'Échec de la suppression de la disponibilité';

  @override
  String get counselorMeetingSunday => 'Dimanche';

  @override
  String get counselorMeetingMonday => 'Lundi';

  @override
  String get counselorMeetingTuesday => 'Mardi';

  @override
  String get counselorMeetingWednesday => 'Mercredi';

  @override
  String get counselorMeetingThursday => 'Jeudi';

  @override
  String get counselorMeetingFriday => 'Vendredi';

  @override
  String get counselorMeetingSaturday => 'Samedi';

  @override
  String get counselorMeetingRequests => 'Demandes de réunion';

  @override
  String get counselorMeetingPending => 'En attente';

  @override
  String get counselorMeetingToday => 'Aujourd’hui';

  @override
  String get counselorMeetingUpcoming => 'À venir';

  @override
  String get counselorMeetingNoPendingRequests => 'Aucune demande en attente';

  @override
  String get counselorMeetingNoPendingRequestsMessage =>
      'Vous n’avez aucune demande de réunion pour le moment.';

  @override
  String get counselorMeetingNoMeetingsToday => 'Aucune réunion aujourd’hui';

  @override
  String get counselorMeetingNoMeetingsTodayMessage =>
      'Vous n’avez aucune réunion prévue pour aujourd’hui.';

  @override
  String get counselorMeetingNoUpcomingMeetings => 'Aucune réunion à venir';

  @override
  String get counselorMeetingNoUpcomingMeetingsMessage =>
      'Vous n’avez aucune réunion prévue.';

  @override
  String get counselorMeetingParent => 'Parent';

  @override
  String get counselorMeetingUnknown => 'Inconnu';

  @override
  String counselorMeetingStudentLabel(String name) {
    return 'Élève : $name';
  }

  @override
  String get counselorMeetingPendingBadge => 'EN ATTENTE';

  @override
  String counselorMeetingRequested(String dateTime) {
    return 'Demandé : $dateTime';
  }

  @override
  String counselorMeetingMinutes(String count) {
    return '$count minutes';
  }

  @override
  String get counselorMeetingDecline => 'Refuser';

  @override
  String get counselorMeetingApprove => 'Approuver';

  @override
  String get counselorMeetingSoon => 'Bientôt';

  @override
  String get counselorMeetingCancelMeeting => 'Annuler la réunion';

  @override
  String counselorMeetingTimeWithDuration(String time, String minutes) {
    return '$time ($minutes min)';
  }

  @override
  String get counselorMeetingApproveMeeting => 'Approuver la réunion';

  @override
  String counselorMeetingApproveWith(String parentName) {
    return 'Approuver la réunion avec $parentName';
  }

  @override
  String get counselorMeetingSelectDate => 'Sélectionner la date';

  @override
  String get counselorMeetingSelectTime => 'Sélectionner l’heure';

  @override
  String get counselorMeetingDuration => 'Durée';

  @override
  String get counselorMeeting1Hour => '1 heure';

  @override
  String get counselorMeeting1Point5Hours => '1,5 heures';

  @override
  String get counselorMeeting2Hours => '2 heures';

  @override
  String get counselorMeetingMeetingLink => 'Lien de la réunion';

  @override
  String get counselorMeetingLocation => 'Lieu';

  @override
  String get counselorMeetingLocationHint => 'Salle 101, Bâtiment principal';

  @override
  String get counselorMeetingNotesOptional => 'Notes (Facultatif)';

  @override
  String get counselorMeetingApprovedSuccessfully =>
      'Réunion approuvée avec succès';

  @override
  String get counselorMeetingFailedToApprove =>
      'Échec de l’approbation de la réunion';

  @override
  String get counselorMeetingDeclineMeeting => 'Refuser la réunion';

  @override
  String counselorMeetingDeclineFrom(String parentName) {
    return 'Refuser la demande de réunion de $parentName ?';
  }

  @override
  String get counselorMeetingReasonForDeclining => 'Raison du refus';

  @override
  String get counselorMeetingProvideReason => 'Veuillez fournir une raison...';

  @override
  String get counselorMeetingPleaseProvideReason =>
      'Veuillez fournir une raison pour le refus';

  @override
  String get counselorMeetingDeclined => 'Réunion refusée';

  @override
  String get counselorMeetingFailedToDecline => 'Échec du refus de la réunion';

  @override
  String counselorMeetingCancelWith(String parentName) {
    return 'Annuler cette réunion avec $parentName ?';
  }

  @override
  String get counselorMeetingCancellationReasonOptional =>
      'Raison de l’annulation (Facultatif)';

  @override
  String get counselorMeetingBackButton => 'Retour';

  @override
  String get counselorMeetingCancelled => 'Réunion annulée';

  @override
  String get counselorMeetingFailedToCancel =>
      'Échec de l’annulation de la réunion';

  @override
  String get counselorSessionPleaseSelectStudent =>
      'Veuillez sélectionner un élève';

  @override
  String get counselorSessionScheduledSuccessfully =>
      'Session planifiée avec succès !';

  @override
  String counselorSessionErrorScheduling(String error) {
    return 'Erreur lors de la planification de la session : $error';
  }

  @override
  String get counselorSessionScheduleSession => 'Planifier une session';

  @override
  String get counselorSessionSave => 'ENREGISTRER';

  @override
  String get counselorSessionStudent => 'Élève';

  @override
  String get counselorSessionNoStudentsFound =>
      'Aucun élève trouvé. Veuillez d’abord ajouter des élèves.';

  @override
  String get counselorSessionSelectStudent => 'Sélectionner un élève';

  @override
  String get counselorSessionTitle => 'Titre de la session';

  @override
  String get counselorSessionTitleHint =>
      'ex. Discussion sur la planification de carrière';

  @override
  String get counselorSessionPleaseEnterTitle =>
      'Veuillez entrer un titre de session';

  @override
  String get counselorSessionType => 'Type de session';

  @override
  String get counselorSessionDate => 'Date';

  @override
  String get counselorSessionTime => 'Heure';

  @override
  String get counselorSessionDuration => 'Durée';

  @override
  String counselorSessionDurationMin(String count) {
    return '$count min';
  }

  @override
  String get counselorSessionLocation => 'Lieu';

  @override
  String get counselorSessionNotesOptional => 'Notes (Facultatif)';

  @override
  String get counselorSessionNotesHint =>
      'Ajoutez des notes supplémentaires ou des points à l’ordre du jour...';

  @override
  String get counselorSessionCancel => 'Annuler';

  @override
  String get counselorSessionSelectStudentDialog => 'Sélectionner un élève';

  @override
  String counselorSessionGradeAndGpa(String grade, String gpa) {
    return '$grade • MPC : $gpa';
  }

  @override
  String get counselorSessionRetry => 'Réessayer';

  @override
  String get counselorSessionLoadingSessions => 'Chargement des sessions...';

  @override
  String counselorSessionTodayTab(String count) {
    return 'Aujourd’hui ($count)';
  }

  @override
  String counselorSessionUpcomingTab(String count) {
    return 'À venir ($count)';
  }

  @override
  String counselorSessionCompletedTab(String count) {
    return 'Terminées ($count)';
  }

  @override
  String get counselorSessionNoSessionsTitle => 'Aucune session';

  @override
  String get counselorSessionNoSessionsToday =>
      'Aucune session prévue pour aujourd’hui';

  @override
  String get counselorSessionNoUpcomingSessions => 'Aucune session à venir';

  @override
  String get counselorSessionNoCompletedSessions =>
      'Aucune session terminée pour le moment';

  @override
  String get counselorSessionNoSessions => 'Aucune session';

  @override
  String get counselorSessionStudentLabel => 'Élève';

  @override
  String get counselorSessionDateTime => 'Date et heure';

  @override
  String get counselorSessionDurationLabel => 'Durée';

  @override
  String counselorSessionMinutesValue(String count) {
    return '$count minutes';
  }

  @override
  String get counselorSessionStatusLabel => 'Statut';

  @override
  String get counselorSessionNotes => 'Notes';

  @override
  String get counselorSessionSummary => 'Résumé';

  @override
  String get counselorSessionActionItems => 'Actions à suivre';

  @override
  String get counselorSessionStartSession => 'Démarrer la session';

  @override
  String get counselorSessionCancelSession => 'Annuler la session';

  @override
  String get counselorSessionIndividualCounseling => 'Conseil individuel';

  @override
  String get counselorSessionGroupSession => 'Session de groupe';

  @override
  String get counselorSessionCareerCounseling => 'Orientation professionnelle';

  @override
  String get counselorSessionAcademicAdvising => 'Conseil académique';

  @override
  String get counselorSessionPersonalCounseling => 'Conseil personnel';

  @override
  String counselorSessionStartSessionWith(String studentName) {
    return 'Démarrer la session de conseil avec $studentName ?';
  }

  @override
  String get counselorSessionStart => 'Démarrer';

  @override
  String counselorSessionStarted(String studentName) {
    return 'Session avec $studentName démarrée';
  }

  @override
  String counselorSessionCancelSessionWith(String studentName) {
    return 'Annuler la session avec $studentName ?';
  }

  @override
  String get counselorSessionReasonForCancellation =>
      'Raison de l’annulation :';

  @override
  String get counselorSessionStudentUnavailable => 'Élève indisponible';

  @override
  String get counselorSessionCounselorUnavailable => 'Conseiller indisponible';

  @override
  String get counselorSessionRescheduled => 'Reportée';

  @override
  String get counselorSessionOther => 'Autre';

  @override
  String get counselorSessionBack => 'Retour';

  @override
  String counselorSessionCancelled(String studentName) {
    return 'Session avec $studentName annulée';
  }

  @override
  String get counselorSessionTodayBadge => 'AUJOURD’HUI';

  @override
  String get counselorSessionIndividual => 'Individuel';

  @override
  String get counselorSessionGroup => 'Groupe';

  @override
  String get counselorSessionCareer => 'Carrière';

  @override
  String get counselorSessionAcademic => 'Académique';

  @override
  String get counselorSessionPersonal => 'Personnel';

  @override
  String get counselorSessionScheduled => 'Planifiée';

  @override
  String get counselorSessionCompleted => 'Terminée';

  @override
  String get counselorSessionCancelledStatus => 'Annulée';

  @override
  String get counselorSessionNoShow => 'Absent';

  @override
  String get counselorStudentBack => 'Retour';

  @override
  String get counselorStudentAddNotesComingSoon =>
      'Fonctionnalité d’ajout de notes bientôt disponible';

  @override
  String get counselorStudentOverview => 'Aperçu';

  @override
  String get counselorStudentSessions => 'Sessions';

  @override
  String get counselorStudentNotes => 'Notes';

  @override
  String get counselorStudentScheduleSession => 'Planifier une session';

  @override
  String get counselorStudentAcademicPerformance => 'Performance académique';

  @override
  String get counselorStudentGpa => 'MPC';

  @override
  String get counselorStudentInterests => 'Intérêts';

  @override
  String get counselorStudentStrengths => 'Points forts';

  @override
  String get counselorStudentAreasForGrowth => 'Axes d’amélioration';

  @override
  String get counselorStudentNoSessionsYet => 'Pas encore de sessions';

  @override
  String get counselorStudentScheduleSessionPrompt =>
      'Planifier une session avec cet élève';

  @override
  String get counselorStudentNoNotesYet => 'Aucune note pour le moment';

  @override
  String get counselorStudentAddPrivateNotes =>
      'Ajouter des notes privées sur cet élève';

  @override
  String get counselorStudentAddNote => 'Ajouter une note';

  @override
  String get counselorStudentIndividualCounseling => 'Conseil individuel';

  @override
  String get counselorStudentGroupSession => 'Session de groupe';

  @override
  String get counselorStudentCareerCounseling => 'Orientation professionnelle';

  @override
  String get counselorStudentAcademicAdvising => 'Conseil académique';

  @override
  String get counselorStudentPersonalCounseling => 'Conseil personnel';

  @override
  String get counselorStudentScheduleFeatureComingSoon =>
      'La fonctionnalité de planification de session sera implémentée avec l’intégration du calendrier.';

  @override
  String get counselorStudentClose => 'Fermer';

  @override
  String get counselorStudentScheduled => 'Planifiée';

  @override
  String get counselorStudentCompleted => 'Terminée';

  @override
  String get counselorStudentCancelled => 'Annulée';

  @override
  String get counselorStudentNoShow => 'Absent';

  @override
  String get counselorStudentRetry => 'Réessayer';

  @override
  String get counselorStudentLoadingStudents => 'Chargement des élèves...';

  @override
  String get counselorStudentSearchStudents => 'Rechercher des élèves...';

  @override
  String get counselorStudentNoStudentsFound => 'Aucun élève trouvé';

  @override
  String get counselorStudentTryAdjustingSearch =>
      'Essayez d’ajuster votre recherche';

  @override
  String get counselorStudentNoStudentsAssigned =>
      'Aucun élève assigné pour le moment';

  @override
  String counselorStudentGradeAndGpa(String grade, String gpa) {
    return '$grade • MPC : $gpa';
  }

  @override
  String counselorStudentSessionsCount(String count) {
    return '$count sessions';
  }

  @override
  String get counselorStudentToday => 'Aujourd’hui';

  @override
  String get counselorStudentYesterday => 'Hier';

  @override
  String counselorStudentDaysAgo(String count) {
    return 'il y a ${count}j';
  }

  @override
  String counselorStudentWeeksAgo(String count) {
    return 'il y a ${count}sem';
  }

  @override
  String get recRetry => 'Réessayer';

  @override
  String get recLoadingRequests => 'Chargement des demandes...';

  @override
  String recTabAll(int count) {
    return 'Toutes ($count)';
  }

  @override
  String recTabPending(int count) {
    return 'En attente ($count)';
  }

  @override
  String recTabInProgress(int count) {
    return 'En cours ($count)';
  }

  @override
  String recTabCompleted(int count) {
    return 'Terminées ($count)';
  }

  @override
  String get recNoPendingRequests =>
      'Aucune demande de recommandation en attente';

  @override
  String get recNoLettersInProgress => 'Aucune lettre en cours';

  @override
  String get recNoCompletedRecommendations =>
      'Aucune recommandation terminée pour le moment';

  @override
  String get recNoRecommendationRequests => 'Aucune demande de recommandation';

  @override
  String get recNoRequests => 'Aucune demande';

  @override
  String get recStudent => 'Étudiant';

  @override
  String get recInstitution => 'Établissement';

  @override
  String get recOverdue => 'En retard !';

  @override
  String get recDueToday => 'À remettre aujourd\'hui';

  @override
  String recDaysLeft(int count) {
    return '$count jours restants';
  }

  @override
  String get recUrgent => 'URGENT';

  @override
  String get recStatusOverdue => 'EN RETARD';

  @override
  String get recStatusPending => 'EN ATTENTE';

  @override
  String get recStatusAccepted => 'ACCEPTÉE';

  @override
  String get recStatusInProgress => 'EN COURS';

  @override
  String get recStatusCompleted => 'TERMINÉE';

  @override
  String get recStatusDeclined => 'REFUSÉE';

  @override
  String get recStatusCancelled => 'ANNULÉE';

  @override
  String get recRecommendationLetter => 'Lettre de recommandation';

  @override
  String get recSaveDraft => 'Enregistrer le brouillon';

  @override
  String recApplyingTo(String institution) {
    return 'Candidature à $institution';
  }

  @override
  String get recPurpose => 'Objet';

  @override
  String get recType => 'Type';

  @override
  String get recDeadline => 'Date limite';

  @override
  String get recStatus => 'Statut';

  @override
  String get recMessageFromStudent => 'Message de l\'étudiant';

  @override
  String get recAchievements => 'Réalisations';

  @override
  String get recDecline => 'Refuser';

  @override
  String get recAccept => 'Accepter';

  @override
  String get recQuickStartTemplates => 'Modèles de démarrage rapide';

  @override
  String get recProfessionalTemplate => 'Modèle professionnel';

  @override
  String get recProfessionalTemplateDesc =>
      'Recommandation formelle de style professionnel';

  @override
  String get recAcademicTemplate => 'Modèle académique';

  @override
  String get recAcademicTemplateDesc => 'Axé sur les réalisations académiques';

  @override
  String get recPersonalTemplate => 'Modèle personnel';

  @override
  String get recPersonalTemplateDesc =>
      'Met en valeur les qualités personnelles';

  @override
  String get recWriteHint =>
      'Rédigez votre recommandation ici ou utilisez un modèle ci-dessus...';

  @override
  String get recPleaseWriteRecommendation =>
      'Veuillez rédiger une recommandation';

  @override
  String get recMinCharacters =>
      'La recommandation doit comporter au moins 100 caractères';

  @override
  String get recSubmitRecommendation => 'Soumettre la recommandation';

  @override
  String get recTheStudent => 'l\'étudiant';

  @override
  String get recYourInstitution => 'votre établissement';

  @override
  String get recRequestAccepted =>
      'Demande acceptée ! Vous pouvez maintenant rédiger la lettre.';

  @override
  String get recFailedToAcceptRequest => 'Impossible d\'accepter la demande';

  @override
  String recErrorAcceptingRequest(String error) {
    return 'Erreur lors de l\'acceptation de la demande : $error';
  }

  @override
  String get recDeclineRequest => 'Refuser la demande';

  @override
  String get recDeclineReason =>
      'Veuillez fournir une raison pour le refus de cette demande.';

  @override
  String get recReasonLabel => 'Raison';

  @override
  String get recReasonHint => 'Entrez au moins 10 caractères';

  @override
  String get recCancel => 'Annuler';

  @override
  String get recReasonMinCharacters =>
      'La raison doit comporter au moins 10 caractères';

  @override
  String get recRequestDeclined => 'Demande refusée';

  @override
  String get recFailedToDeclineRequest => 'Impossible de refuser la demande';

  @override
  String recErrorDecliningRequest(String error) {
    return 'Erreur lors du refus de la demande : $error';
  }

  @override
  String get recLetterMinCharacters =>
      'Le contenu de la lettre doit comporter au moins 100 caractères';

  @override
  String get recDraftSaved => 'Brouillon enregistré avec succès';

  @override
  String recErrorSavingDraft(String error) {
    return 'Erreur lors de l\'enregistrement du brouillon : $error';
  }

  @override
  String get recSubmitConfirmTitle => 'Soumettre la recommandation ?';

  @override
  String get recSubmitConfirmMessage =>
      'Une fois soumise, vous ne pourrez plus modifier cette recommandation. Êtes-vous sûr de vouloir la soumettre ?';

  @override
  String get recSubmit => 'Soumettre';

  @override
  String get recSubmittedSuccessfully => 'Recommandation soumise avec succès !';

  @override
  String get recFailedToSubmit => 'Impossible de soumettre la recommandation';

  @override
  String recErrorSubmitting(String error) {
    return 'Erreur lors de la soumission de la recommandation : $error';
  }

  @override
  String get notifPrefTitle => 'Préférences de notification';

  @override
  String get notifPrefDefaultCreated =>
      'Préférences de notification par défaut créées avec succès !';

  @override
  String notifPrefErrorCreating(String error) {
    return 'Erreur lors de la création des préférences : $error';
  }

  @override
  String get notifPrefNotFound => 'Aucune préférence de notification trouvée';

  @override
  String get notifPrefCreateDefaults => 'Créer les préférences par défaut';

  @override
  String get notifPrefWaitingAuth => 'En attente de l\'authentification...';

  @override
  String get notifPrefSettings => 'Paramètres de notification';

  @override
  String get notifPrefDescription =>
      'Contrôlez les notifications que vous souhaitez recevoir. Les modifications sont enregistrées automatiquement.';

  @override
  String get notifPrefCollegeApplications => 'Candidatures universitaires';

  @override
  String get notifPrefAcademic => 'Académique';

  @override
  String get notifPrefCommunication => 'Communication';

  @override
  String get notifPrefMeetingsEvents => 'Réunions et événements';

  @override
  String get notifPrefAchievements => 'Réalisations';

  @override
  String get notifPrefSystem => 'Système';

  @override
  String notifPrefErrorLoading(String error) {
    return 'Erreur lors du chargement des préférences : $error';
  }

  @override
  String get notifPrefRetry => 'Réessayer';

  @override
  String get notifPrefEmail => 'E-mail';

  @override
  String get notifPrefPush => 'Push';

  @override
  String get notifPrefSoon => '(bientôt)';

  @override
  String get notifPrefDescApplicationStatus =>
      'Soyez informé lorsque le statut de votre candidature change';

  @override
  String get notifPrefDescGradePosted =>
      'Recevez des notifications lorsque de nouvelles notes sont publiées';

  @override
  String get notifPrefDescMessageReceived =>
      'Soyez informé des nouveaux messages';

  @override
  String get notifPrefDescMeetingScheduled =>
      'Recevez des notifications pour les réunions programmées';

  @override
  String get notifPrefDescMeetingReminder =>
      'Recevez des rappels avant vos réunions';

  @override
  String get notifPrefDescAchievementEarned =>
      'Célébrez vos nouvelles réalisations';

  @override
  String get notifPrefDescDeadlineReminder =>
      'Recevez des rappels pour les échéances à venir';

  @override
  String get notifPrefDescRecommendationReady =>
      'Recevez des notifications pour les nouvelles recommandations';

  @override
  String get notifPrefDescSystemAnnouncement =>
      'Restez informé des annonces système';

  @override
  String get notifPrefDescCommentReceived =>
      'Soyez informé lorsque quelqu\'un commente vos publications';

  @override
  String get notifPrefDescMention =>
      'Recevez des notifications lorsque vous êtes mentionné';

  @override
  String get notifPrefDescEventReminder =>
      'Recevez des rappels pour les événements à venir';

  @override
  String get notifPrefDescApprovalNew =>
      'Soyez informé des nouvelles demandes d\'approbation';

  @override
  String get notifPrefDescApprovalActionNeeded =>
      'Recevez des rappels pour les actions d\'approbation en attente';

  @override
  String get notifPrefDescApprovalStatusChanged =>
      'Soyez informé lorsque le statut de votre demande change';

  @override
  String get notifPrefDescApprovalEscalated =>
      'Recevez des notifications lorsque des demandes vous sont transmises';

  @override
  String get notifPrefDescApprovalExpiring =>
      'Recevez des rappels pour les demandes d\'approbation qui expirent';

  @override
  String get notifPrefDescApprovalComment =>
      'Soyez informé des nouveaux commentaires sur les demandes';

  @override
  String get notifPrefUpdated => 'Préférences mises à jour';

  @override
  String notifPrefErrorUpdating(String error) {
    return 'Erreur lors de la mise à jour des préférences : $error';
  }

  @override
  String get biometricSetupTitle => 'Configuration biométrique';

  @override
  String get biometricSettingsTitle => 'Paramètres biométriques';

  @override
  String biometricErrorChecking(String error) {
    return 'Erreur lors de la vérification biométrique : $error';
  }

  @override
  String get biometricEnabledSuccess =>
      'Authentification biométrique activée avec succès';

  @override
  String get biometricAuthFailed =>
      'Échec de l\'authentification. Veuillez réessayer.';

  @override
  String biometricError(String error) {
    return 'Erreur : $error';
  }

  @override
  String get biometricDisabledSuccess =>
      'Authentification biométrique désactivée';

  @override
  String get biometricEnableLogin => 'Activer la connexion biométrique';

  @override
  String get biometricAuthentication => 'Authentification biométrique';

  @override
  String biometricUseType(String type) {
    return 'Utiliser $type';
  }

  @override
  String get biometricEnabled => 'Activé';

  @override
  String get biometricDisabled => 'Désactivé';

  @override
  String get biometricWhyUse => 'Pourquoi utiliser la biométrie ?';

  @override
  String get biometricBenefitFaster => 'Connexion plus rapide';

  @override
  String get biometricBenefitSecure => 'Plus sécurisé que les mots de passe';

  @override
  String get biometricBenefitUnique => 'Unique à vous - impossible à copier';

  @override
  String get biometricSecurityNote => 'Note de sécurité';

  @override
  String get biometricSecurityNoteDesc =>
      'Vos données biométriques restent sur votre appareil et ne sont jamais partagées avec Navia ou des tiers.';

  @override
  String get biometricSkipForNow => 'Passer pour le moment';

  @override
  String get biometricNotSupported => 'Non pris en charge';

  @override
  String get biometricNotSupportedDesc =>
      'Votre appareil ne prend pas en charge l\'authentification biométrique.';

  @override
  String get biometricGoBack => 'Retour';

  @override
  String get biometricNotEnrolled => 'Aucune biométrie enregistrée';

  @override
  String get biometricNotEnrolledDesc =>
      'Veuillez d\'abord enregistrer votre empreinte digitale ou Face ID dans les paramètres de votre appareil.';

  @override
  String get biometricOpenSettingsHint =>
      'Veuillez ouvrir Paramètres > Sécurité > Biométrie';

  @override
  String get biometricOpenSettings => 'Ouvrir les paramètres';

  @override
  String get biometricTypeFace => 'Face ID';

  @override
  String get biometricTypeFingerprint => 'Empreinte digitale';

  @override
  String get biometricTypeIris => 'Reconnaissance de l\'iris';

  @override
  String get biometricTypeGeneric => 'Biométrie';

  @override
  String biometricDescEnabled(String type) {
    return 'Votre $type est actuellement utilisé pour sécuriser votre compte. Vous pouvez vous connecter rapidement et en toute sécurité.';
  }

  @override
  String biometricDescDisabled(String type) {
    return 'Utilisez votre $type pour vous connecter rapidement et en toute sécurité sans entrer votre mot de passe.';
  }

  @override
  String get adminChatDashTitle => 'Tableau de bord du chatbot';

  @override
  String get adminChatDashSubtitle =>
      'Surveiller et gérer les interactions du chatbot';

  @override
  String get adminChatDashRefresh => 'Actualiser';

  @override
  String get adminChatDashTotalConversations => 'Total des conversations';

  @override
  String get adminChatDashActiveNow => 'Actives maintenant';

  @override
  String get adminChatDashTotalMessages => 'Total des messages';

  @override
  String get adminChatDashAvgMessagesPerChat => 'Moy. messages/chat';

  @override
  String get adminChatDashQuickActions => 'Actions rapides';

  @override
  String get adminChatDashManageFaqs => 'Gérer les FAQ';

  @override
  String get adminChatDashManageFaqsDesc =>
      'Créer et organiser les questions fréquemment posées';

  @override
  String get adminChatDashConversationHistory => 'Historique des conversations';

  @override
  String get adminChatDashConversationHistoryDesc =>
      'Parcourir et consulter les conversations passées';

  @override
  String get adminChatDashSupportQueue => 'File d\'attente du support';

  @override
  String get adminChatDashSupportQueueDesc =>
      'Examiner les conversations escaladées nécessitant une attention';

  @override
  String get adminChatDashLiveMonitoring => 'Surveillance en direct';

  @override
  String get adminChatDashLiveMonitoringDesc =>
      'Surveiller les conversations actives du chatbot en temps réel';

  @override
  String get adminChatDashRecentConversations => 'Conversations récentes';

  @override
  String get adminChatDashViewAll => 'Voir tout';

  @override
  String get adminChatDashNoConversations =>
      'Aucune conversation pour le moment';

  @override
  String get adminChatDashNoConversationsDesc =>
      'Les conversations du chatbot apparaîtront ici une fois que les utilisateurs commenceront à interagir';

  @override
  String adminChatDashMessagesCount(int count) {
    return '$count messages';
  }

  @override
  String get adminChatDashStatusActive => 'Active';

  @override
  String get adminChatDashStatusArchived => 'Archivée';

  @override
  String get adminChatDashStatusFlagged => 'Signalée';

  @override
  String get adminChatDashJustNow => 'À l\'instant';

  @override
  String adminChatDashMinutesAgo(int count) {
    return 'il y a ${count}m';
  }

  @override
  String adminChatDashHoursAgo(int count) {
    return 'il y a ${count}h';
  }

  @override
  String adminChatDashDaysAgo(int count) {
    return 'il y a ${count}j';
  }

  @override
  String get adminFeeConfigTitle => 'Configuration des frais';

  @override
  String get adminFeeConfigSubtitle =>
      'Gérer les frais et la tarification de la plateforme';

  @override
  String get adminFeeConfigUnsavedChanges => 'Modifications non enregistrées';

  @override
  String get adminFeeConfigReset => 'Réinitialiser';

  @override
  String get adminFeeConfigSaveChanges => 'Enregistrer les modifications';

  @override
  String get adminFeeConfigSavedSuccess =>
      'Configuration des frais enregistrée avec succès';

  @override
  String get adminFeeConfigFeeSummary => 'Résumé des frais';

  @override
  String get adminFeeConfigCategoriesActive => 'catégories actives';

  @override
  String get adminFeeConfigActiveFees => 'Frais actifs';

  @override
  String get adminFeeConfigAvgRate => 'Taux moyen';

  @override
  String get adminFeeConfigDisabled => 'Désactivés';

  @override
  String get adminFeeConfigPercentage => 'Pourcentage';

  @override
  String get adminFeeConfigFixedAmount => 'Montant fixe';

  @override
  String get adminFeeConfigExample => 'Exemple sur 10 000 KES';

  @override
  String get adminSettingsTitle => 'Paramètres';

  @override
  String get adminSettingsSubtitle =>
      'Gérer votre compte et les préférences système';

  @override
  String get adminSettingsProfile => 'Profil';

  @override
  String get adminSettingsDefaultUser => 'Administrateur';

  @override
  String get adminSettingsEdit => 'Modifier';

  @override
  String get adminSettingsRole => 'Rôle';

  @override
  String get adminSettingsSuperAdmin => 'Super administrateur';

  @override
  String get adminSettingsNotifications => 'Notifications';

  @override
  String get adminSettingsEmailNotifications => 'Notifications par e-mail';

  @override
  String get adminSettingsEmailNotificationsDesc =>
      'Recevoir les mises à jour importantes par e-mail';

  @override
  String get adminSettingsPushNotifications => 'Notifications push';

  @override
  String get adminSettingsPushNotificationsDesc =>
      'Recevoir des notifications push en temps réel sur votre appareil';

  @override
  String get adminSettingsUserActivityAlerts =>
      'Alertes d\'activité utilisateur';

  @override
  String get adminSettingsUserActivityAlertsDesc =>
      'Être notifié en cas d\'activité utilisateur inhabituelle';

  @override
  String get adminSettingsSystemAlerts => 'Alertes système';

  @override
  String get adminSettingsSystemAlertsDesc =>
      'Recevoir des alertes sur l\'état et les problèmes du système';

  @override
  String get adminSettingsDisplay => 'Affichage';

  @override
  String get adminSettingsDarkMode => 'Mode sombre';

  @override
  String get adminSettingsDarkModeDesc =>
      'Passer à un schéma de couleurs plus sombre';

  @override
  String get adminSettingsLanguage => 'Langue';

  @override
  String get adminSettingsLangEnglish => 'Anglais';

  @override
  String get adminSettingsLangSwahili => 'Swahili';

  @override
  String get adminSettingsLangFrench => 'Français';

  @override
  String get adminSettingsTimezone => 'Fuseau horaire';

  @override
  String get adminSettingsSecurity => 'Sécurité';

  @override
  String get adminSettingsChangePassword => 'Changer le mot de passe';

  @override
  String get adminSettingsChangePasswordDesc =>
      'Mettre à jour le mot de passe de votre compte';

  @override
  String get adminSettingsTwoFactor => 'Authentification à deux facteurs';

  @override
  String get adminSettingsTwoFactorDesc =>
      'Ajouter une couche de sécurité supplémentaire à votre compte';

  @override
  String get adminSettingsActiveSessions => 'Sessions actives';

  @override
  String get adminSettingsActiveSessionsDesc =>
      'Voir et gérer vos sessions de connexion actives';

  @override
  String get adminSettingsPrivacy => 'Confidentialité';

  @override
  String get adminSettingsActivityLogging => 'Journalisation des activités';

  @override
  String get adminSettingsActivityLoggingDesc =>
      'Enregistrer les actions administrateur à des fins d\'audit';

  @override
  String get adminSettingsAnalyticsTracking => 'Suivi analytique';

  @override
  String get adminSettingsAnalyticsTrackingDesc =>
      'Aider à améliorer la plateforme avec des analyses d\'utilisation';

  @override
  String get adminSettingsDownloadData => 'Télécharger mes données';

  @override
  String get adminSettingsDownloadDataDesc =>
      'Exporter toutes vos données personnelles';

  @override
  String get adminSettingsDangerZone => 'Zone de danger';

  @override
  String get adminSettingsSignOut => 'Se déconnecter';

  @override
  String get adminSettingsSignOutDesc =>
      'Se déconnecter de votre compte administrateur';

  @override
  String get adminSettingsSignOutConfirm =>
      'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get adminSettingsCancel => 'Annuler';

  @override
  String get adminSettingsDeleteAccount => 'Supprimer le compte';

  @override
  String get adminSettingsDeleteAccountDesc =>
      'Supprimer définitivement votre compte et toutes les données';

  @override
  String get notifPrefScreenTitle => 'Préférences de notification';

  @override
  String get notifPrefScreenNoPreferences =>
      'Aucune préférence de notification trouvée';

  @override
  String get notifPrefScreenCreateDefaults =>
      'Créer les préférences par défaut';

  @override
  String get notifPrefScreenSettingsTitle => 'Paramètres de notification';

  @override
  String get notifPrefScreenDescription =>
      'Contrôlez les notifications que vous souhaitez recevoir. Les modifications sont enregistrées automatiquement.';

  @override
  String get notifPrefScreenCollegeApplications =>
      'Candidatures universitaires';

  @override
  String get notifPrefScreenAcademic => 'Académique';

  @override
  String get notifPrefScreenCommunication => 'Communication';

  @override
  String get notifPrefScreenMeetingsEvents => 'Réunions et événements';

  @override
  String get notifPrefScreenAchievements => 'Réalisations';

  @override
  String get notifPrefScreenSystem => 'Système';

  @override
  String get notifPrefScreenEmail => 'E-mail';

  @override
  String get notifPrefScreenPush => 'Push';

  @override
  String get notifPrefScreenSoon => '(bientôt)';

  @override
  String get notifPrefScreenErrorLoading =>
      'Erreur lors du chargement des préférences';

  @override
  String get notifPrefScreenRetry => 'Réessayer';

  @override
  String get notifPrefScreenErrorCreating =>
      'Erreur lors de la création des préférences';

  @override
  String get notifPrefScreenErrorUpdating =>
      'Erreur lors de la mise à jour des préférences';

  @override
  String get notifPrefScreenPreferencesUpdated => 'Préférences mises à jour';

  @override
  String get notifPrefScreenDescApplicationStatus =>
      'Soyez averti lorsque le statut de votre candidature change';

  @override
  String get notifPrefScreenDescGradePosted =>
      'Recevez des notifications lorsque de nouvelles notes sont publiées';

  @override
  String get notifPrefScreenDescMessageReceived =>
      'Soyez averti des nouveaux messages';

  @override
  String get notifPrefScreenDescMeetingScheduled =>
      'Recevez des notifications pour les réunions planifiées';

  @override
  String get notifPrefScreenDescMeetingReminder =>
      'Recevez des rappels avant vos réunions';

  @override
  String get notifPrefScreenDescAchievementEarned =>
      'Célébrez lorsque vous obtenez de nouvelles réalisations';

  @override
  String get notifPrefScreenDescDeadlineReminder =>
      'Recevez des rappels pour les échéances à venir';

  @override
  String get notifPrefScreenDescRecommendationReady =>
      'Recevez des notifications pour les nouvelles recommandations';

  @override
  String get notifPrefScreenDescSystemAnnouncement =>
      'Restez informé des annonces système';

  @override
  String get notifPrefScreenDescCommentReceived =>
      'Soyez averti lorsque quelqu\'un commente vos publications';

  @override
  String get notifPrefScreenDescMention =>
      'Recevez des notifications lorsque vous êtes mentionné';

  @override
  String get notifPrefScreenDescEventReminder =>
      'Recevez des rappels pour les événements à venir';

  @override
  String get notifPrefScreenDescApprovalRequestNew =>
      'Soyez averti des nouvelles demandes d\'approbation';

  @override
  String get notifPrefScreenDescApprovalRequestActionNeeded =>
      'Soyez averti lorsqu\'une demande d\'approbation nécessite votre action';

  @override
  String get notifPrefScreenDescApprovalRequestStatusChanged =>
      'Soyez averti lorsque le statut de votre demande d\'approbation change';

  @override
  String get notifPrefScreenDescApprovalRequestEscalated =>
      'Soyez averti lorsqu\'une demande d\'approbation est escaladée';

  @override
  String get notifPrefScreenDescApprovalRequestExpiring =>
      'Soyez averti lorsqu\'une demande d\'approbation est sur le point d\'expirer';

  @override
  String get notifPrefScreenDescApprovalRequestComment =>
      'Soyez averti des commentaires sur les demandes d\'approbation';

  @override
  String get homeNavFeatures => 'Fonctionnalités';

  @override
  String get homeNavAbout => 'À propos';

  @override
  String get homeNavContact => 'Contact';

  @override
  String get homeNavLogin => 'Connexion';

  @override
  String get homeNavSignUp => 'S\'inscrire';

  @override
  String get homeNavAccountTypes => 'Types de comptes';

  @override
  String get homeNavStudents => 'Étudiants';

  @override
  String get homeNavInstitutions => 'Institutions';

  @override
  String get homeNavParents => 'Parents';

  @override
  String get homeNavCounselors => 'Conseillers';

  @override
  String get homeNavRecommenders => 'Recommandeurs';

  @override
  String get homeNavBadge => 'Première plateforme EdTech d\'Afrique';

  @override
  String get homeNavWelcome => 'Bienvenue sur Navia';

  @override
  String get homeNavSubtitle =>
      'Connectez étudiants, institutions, parents et conseillers à travers l\'Afrique. Conçu hors ligne avec paiement mobile.';

  @override
  String get homeNavGetStarted => 'Commencer';

  @override
  String get homeNavSignIn => 'Se connecter';

  @override
  String get homeNavActiveUsers => 'Utilisateurs actifs';

  @override
  String get homeNavCountries => 'Pays';

  @override
  String get homeNavNew => 'NOUVEAU';

  @override
  String get homeNavFindYourPath => 'Trouvez votre voie';

  @override
  String get homeNavFindYourPathDesc =>
      'Répondez à quelques questions et obtenez des recommandations universitaires personnalisées.';

  @override
  String get homeNavPersonalizedRec => 'Recommandations personnalisées';

  @override
  String get homeNavTopUniversities => '12+ meilleures universités';

  @override
  String get homeNavSmartMatching => 'Algorithme de correspondance intelligent';

  @override
  String get homeNavStartNow => 'Commencer maintenant';

  @override
  String get homeNavPlatformFeatures => 'Fonctionnalités de la plateforme';

  @override
  String get homeNavOfflineFirst => 'Conception hors ligne d\'abord';

  @override
  String get homeNavOfflineFirstDesc =>
      'Accédez à votre contenu même sans connexion Internet';

  @override
  String get homeNavMobileMoney => 'Intégration Mobile Money';

  @override
  String get homeNavMobileMoneyDesc =>
      'Payez avec M-Pesa, MTN et d\'autres services de paiement mobile';

  @override
  String get homeNavMultiLang => 'Support multilingue';

  @override
  String get homeNavMultiLangDesc =>
      'Disponible en anglais, français, swahili et plus';

  @override
  String get homeNavSecure => 'Sécurisé et privé';

  @override
  String get homeNavSecureDesc =>
      'Chiffrement de bout en bout pour toutes vos données';

  @override
  String get homeNavUssd => 'Support USSD';

  @override
  String get homeNavUssdDesc =>
      'Accédez aux fonctionnalités via téléphones basiques sans Internet';

  @override
  String get homeNavCloudSync => 'Synchronisation cloud';

  @override
  String get homeNavCloudSyncDesc =>
      'Synchronisation automatique sur tous vos appareils';

  @override
  String get homeNavHowItWorks => 'Comment ça marche';

  @override
  String get homeNavCreateAccount => 'Créer un compte';

  @override
  String get homeNavCreateAccountDesc =>
      'Inscrivez-vous avec votre rôle - étudiant, institution, parent, conseiller ou recommandeur';

  @override
  String get homeNavAccessDashboard => 'Accéder au tableau de bord';

  @override
  String get homeNavAccessDashboardDesc =>
      'Obtenez un tableau de bord personnalisé adapté à vos besoins';

  @override
  String get homeNavExploreFeatures => 'Explorer les fonctionnalités';

  @override
  String get homeNavExploreFeaturesDesc =>
      'Parcourez les cours, les candidatures ou gérez vos responsabilités';

  @override
  String get homeNavAchieveGoals => 'Atteindre vos objectifs';

  @override
  String get homeNavAchieveGoalsDesc =>
      'Suivez vos progrès, collaborez et atteignez vos objectifs éducatifs';

  @override
  String get homeNavTrustedAcrossAfrica => 'Reconnu à travers l\'Afrique';

  @override
  String get homeNavTestimonialRole1 => 'Étudiante, Université du Ghana';

  @override
  String get homeNavTestimonialQuote1 =>
      'Navia a rendu mon processus de candidature tellement plus facile. Je pouvais tout suivre en un seul endroit !';

  @override
  String get homeNavTestimonialRole2 => 'Doyen, Université Ashesi';

  @override
  String get homeNavTestimonialQuote2 =>
      'La gestion des candidatures n\'a jamais été aussi efficace. Navia change la donne pour les institutions.';

  @override
  String get homeNavTestimonialRole3 => 'Parent, Nigeria';

  @override
  String get homeNavTestimonialQuote3 =>
      'Je peux désormais suivre les progrès académiques de mes enfants même lorsque je voyage. Tranquillité d\'esprit !';

  @override
  String get homeNavWhoCanUse => 'Qui peut utiliser Navia ?';

  @override
  String get homeNavForStudents => 'Pour les étudiants';

  @override
  String get homeNavForStudentsSubtitle =>
      'Votre passerelle vers la réussite académique';

  @override
  String get homeNavForStudentsDesc =>
      'Navia permet aux étudiants de prendre en main leur parcours éducatif avec des outils complets conçus pour les apprenants modernes à travers l\'Afrique.';

  @override
  String get homeNavCourseAccess => 'Accès aux cours';

  @override
  String get homeNavCourseAccessDesc =>
      'Parcourez et inscrivez-vous à des milliers de cours des meilleures institutions africaines';

  @override
  String get homeNavAppManagement => 'Gestion des candidatures';

  @override
  String get homeNavAppManagementDesc =>
      'Postulez à plusieurs institutions, suivez le statut et gérez les délais en un seul endroit';

  @override
  String get homeNavProgressTracking => 'Suivi des progrès';

  @override
  String get homeNavProgressTrackingDesc =>
      'Suivez vos progrès académiques avec des analyses détaillées et des aperçus de performance';

  @override
  String get homeNavDocManagement => 'Gestion des documents';

  @override
  String get homeNavDocManagementDesc =>
      'Stockez et partagez relevés, certificats et autres documents académiques en toute sécurité';

  @override
  String get homeNavEasyPayments => 'Paiements faciles';

  @override
  String get homeNavEasyPaymentsDesc =>
      'Payez les frais de scolarité via les services de paiement mobile comme M-Pesa, MTN Money, et plus';

  @override
  String get homeNavOfflineAccess => 'Accès hors ligne';

  @override
  String get homeNavOfflineAccessDesc =>
      'Téléchargez les supports de cours et accédez-y sans connexion Internet';

  @override
  String get homeNavForInstitutions => 'Pour les institutions';

  @override
  String get homeNavForInstitutionsSubtitle =>
      'Simplifiez les admissions et la gestion des étudiants';

  @override
  String get homeNavForInstitutionsDesc =>
      'Transformez les opérations de votre institution avec des outils puissants pour les admissions, la gestion des étudiants et la prestation de programmes.';

  @override
  String get homeNavApplicantMgmt => 'Gestion des candidats';

  @override
  String get homeNavApplicantMgmtDesc =>
      'Examinez, traitez et suivez les candidatures efficacement avec des flux automatisés';

  @override
  String get homeNavProgramMgmt => 'Gestion des programmes';

  @override
  String get homeNavProgramMgmtDesc =>
      'Créez et gérez des programmes académiques, définissez des exigences et suivez les inscriptions';

  @override
  String get homeNavAnalyticsDash => 'Tableau de bord analytique';

  @override
  String get homeNavAnalyticsDashDesc =>
      'Obtenez des informations sur les tendances de candidature, la performance des étudiants et les métriques institutionnelles';

  @override
  String get homeNavCommHub => 'Hub de communication';

  @override
  String get homeNavCommHubDesc =>
      'Engagez-vous avec les étudiants, les parents et le personnel via la messagerie intégrée';

  @override
  String get homeNavDocVerification => 'Vérification des documents';

  @override
  String get homeNavDocVerificationDesc =>
      'Vérifiez les documents et les titres des étudiants en toute sécurité';

  @override
  String get homeNavFinancialMgmt => 'Gestion financière';

  @override
  String get homeNavFinancialMgmtDesc =>
      'Suivez les paiements, gérez les bourses et générez des rapports financiers';

  @override
  String get homeNavForParents => 'Pour les parents';

  @override
  String get homeNavForParentsSubtitle =>
      'Restez connecté à l\'éducation de votre enfant';

  @override
  String get homeNavForParentsDesc =>
      'Restez informé et impliqué dans le parcours éducatif de vos enfants avec des mises à jour en temps réel et des outils de suivi complets.';

  @override
  String get homeNavProgressMonitoring => 'Suivi des progrès';

  @override
  String get homeNavProgressMonitoringDesc =>
      'Suivez la performance académique, la présence et les réalisations de vos enfants';

  @override
  String get homeNavRealtimeUpdates => 'Mises à jour en temps réel';

  @override
  String get homeNavRealtimeUpdatesDesc =>
      'Recevez des notifications instantanées sur les notes, les devoirs et les événements scolaires';

  @override
  String get homeNavTeacherComm => 'Communication avec les enseignants';

  @override
  String get homeNavTeacherCommDesc =>
      'Communiquez directement avec les enseignants et conseillers sur les progrès de votre enfant';

  @override
  String get homeNavFeeMgmt => 'Gestion des frais';

  @override
  String get homeNavFeeMgmtDesc =>
      'Consultez et payez les frais scolaires facilement via le paiement mobile';

  @override
  String get homeNavScheduleAccess => 'Accès aux horaires';

  @override
  String get homeNavScheduleAccessDesc =>
      'Consultez les horaires de cours, les dates d\'examens et les événements du calendrier scolaire';

  @override
  String get homeNavReportCards => 'Bulletins scolaires';

  @override
  String get homeNavReportCardsDesc =>
      'Accédez aux bulletins détaillés et aux résumés de performance';

  @override
  String get homeNavForCounselors => 'Pour les conseillers';

  @override
  String get homeNavForCounselorsSubtitle =>
      'Guidez les étudiants vers leur meilleur avenir';

  @override
  String get homeNavForCounselorsDesc =>
      'Renforcez votre pratique de conseil avec des outils pour gérer les sessions, suivre les progrès des étudiants et fournir des conseils personnalisés.';

  @override
  String get homeNavSessionMgmt => 'Gestion des sessions';

  @override
  String get homeNavSessionMgmtDesc =>
      'Planifiez, suivez et documentez les sessions de conseil avec les étudiants';

  @override
  String get homeNavStudentPortfolio => 'Portfolio étudiant';

  @override
  String get homeNavStudentPortfolioDesc =>
      'Maintenez des profils complets et des notes pour chaque étudiant que vous conseillez';

  @override
  String get homeNavActionPlans => 'Plans d\'action';

  @override
  String get homeNavActionPlansDesc =>
      'Créez et suivez des plans d\'action et des objectifs personnalisés pour les étudiants';

  @override
  String get homeNavCollegeGuidance => 'Orientation universitaire';

  @override
  String get homeNavCollegeGuidanceDesc =>
      'Aidez les étudiants à explorer les programmes et à naviguer le processus de candidature';

  @override
  String get homeNavCareerAssessment => 'Évaluation de carrière';

  @override
  String get homeNavCareerAssessmentDesc =>
      'Fournissez des évaluations de carrière et recommandez des voies adaptées';

  @override
  String get homeNavParentCollab => 'Collaboration avec les parents';

  @override
  String get homeNavParentCollabDesc =>
      'Coordonnez avec les parents pour soutenir la réussite des étudiants';

  @override
  String get homeNavForRecommenders => 'Pour les recommandeurs';

  @override
  String get homeNavForRecommendersSubtitle =>
      'Soutenez les étudiants avec des recommandations puissantes';

  @override
  String get homeNavForRecommendersDesc =>
      'Rédigez, gérez et soumettez des lettres de recommandation efficacement tout en maintenant votre réseau professionnel.';

  @override
  String get homeNavLetterMgmt => 'Gestion des lettres';

  @override
  String get homeNavLetterMgmtDesc =>
      'Rédigez, modifiez et stockez des lettres de recommandation avec des modèles';

  @override
  String get homeNavEasySubmission => 'Soumission facile';

  @override
  String get homeNavEasySubmissionDesc =>
      'Soumettez des recommandations directement aux institutions en toute sécurité';

  @override
  String get homeNavRequestTracking => 'Suivi des demandes';

  @override
  String get homeNavRequestTrackingDesc =>
      'Suivez toutes les demandes de recommandation et les délais en un seul endroit';

  @override
  String get homeNavLetterTemplates => 'Modèles de lettres';

  @override
  String get homeNavLetterTemplatesDesc =>
      'Utilisez des modèles personnalisables pour simplifier votre processus de rédaction';

  @override
  String get homeNavDigitalSignature => 'Signature numérique';

  @override
  String get homeNavDigitalSignatureDesc =>
      'Signez et vérifiez les lettres numériquement avec une authentification sécurisée';

  @override
  String get homeNavStudentHistory => 'Historique des étudiants';

  @override
  String get homeNavStudentHistoryDesc =>
      'Maintenez des dossiers des étudiants que vous avez recommandés au fil du temps';

  @override
  String get homeNavReadyToStart => 'Prêt à commencer ?';

  @override
  String get homeNavJoinThousands =>
      'Rejoignez des milliers de personnes qui transforment l\'éducation avec Navia.';

  @override
  String get homeNavFlowEdTech => 'Navia';

  @override
  String get homeNavPrivacy => 'Confidentialité';

  @override
  String get homeNavTerms => 'Conditions';

  @override
  String get homeNavCopyright => '© 2025 Navia';

  @override
  String get homeNavTop => 'Haut';

  @override
  String homeNavGetStartedAs(String role) {
    return 'Commencer en tant que $role';
  }

  @override
  String get homeNavForPrefix => 'Pour les ';

  @override
  String get aboutPageTitle => 'À propos de Navia';

  @override
  String get aboutPageFlowEdTech => 'Navia';

  @override
  String get aboutPagePremierPlatform =>
      'Première plateforme éducative d\'Afrique';

  @override
  String get aboutPageOurMission => 'Notre mission';

  @override
  String get aboutPageMissionContent =>
      'Navia se consacre à transformer l\'éducation à travers l\'Afrique en connectant les étudiants avec les universités, les conseillers et les ressources dont ils ont besoin pour réussir.';

  @override
  String get aboutPageOurVision => 'Notre vision';

  @override
  String get aboutPageVisionContent =>
      'Nous envisageons un avenir où chaque étudiant africain dispose des outils, des informations et du soutien nécessaires pour réaliser ses rêves éducatifs.';

  @override
  String get aboutPageOurStory => 'Notre histoire';

  @override
  String get aboutPageOurValues => 'Nos valeurs';

  @override
  String get aboutPageGetInTouch => 'Nous contacter';

  @override
  String get aboutPageOurTeam => 'Notre équipe';

  @override
  String get aboutPageTeamFounderName => 'Ogoubi F.';

  @override
  String get aboutPageTeamFounderRole => 'Fondateur & PDG';

  @override
  String get aboutPageTeamCtoName => 'Alex M.';

  @override
  String get aboutPageTeamCtoRole => 'Directeur technique';

  @override
  String get aboutPageTeamEduName => 'Amina K.';

  @override
  String get aboutPageTeamEduRole => 'Responsable de l\'éducation';

  @override
  String get aboutPageTeamPartnersName => 'David O.';

  @override
  String get aboutPageTeamPartnersRole => 'Responsable des partenariats';

  @override
  String get aboutPageOurJourney => 'Notre parcours';

  @override
  String get aboutPageMilestone1Year => '2024';

  @override
  String get aboutPageMilestone1Title => 'Fondation';

  @override
  String get aboutPageMilestone1Desc => 'Navia a été fondé à Accra, au Ghana, avec pour mission de transformer l\'accès à l\'éducation en Afrique.';

  @override
  String get aboutPageMilestone2Year => '2024';

  @override
  String get aboutPageMilestone2Title => 'Lancement de la plateforme';

  @override
  String get aboutPageMilestone2Desc => 'Lancement de la version bêta avec la recherche d\'universités et le jumelage d\'étudiants.';

  @override
  String get aboutPageMilestone3Year => '2025';

  @override
  String get aboutPageMilestone3Title => 'Expansion régionale';

  @override
  String get aboutPageMilestone3Desc => 'Extension de la couverture aux universités de plus de 20 pays africains.';

  @override
  String get aboutPageMilestone4Year => '2025';

  @override
  String get aboutPageMilestone4Title => '50 000+ utilisateurs';

  @override
  String get aboutPageMilestone4Desc => 'Atteinte de 50 000 utilisateurs actifs et plus de 200 institutions partenaires.';

  @override
  String get aboutPageOurPartners => 'Nos partenaires';

  @override
  String get privacyPageTitle => 'Politique de confidentialité';

  @override
  String get privacyPageLastUpdated => 'Dernière mise à jour : janvier 2026';

  @override
  String get privacyPageSection1Title => '1. Informations que nous collectons';

  @override
  String get privacyPageSection1Content =>
      'Nous collectons les informations que vous nous fournissez directement, comme lors de la création d\'un compte, du remplissage d\'un formulaire ou de la communication avec nous. Cela peut inclure :\n\n- Informations personnelles (nom, e-mail, numéro de téléphone)\n- Informations éducatives (notes, résultats, préférences)\n- Identifiants de compte\n- Préférences de communication\n- Données d\'utilisation et d\'analyse';

  @override
  String get privacyPageSection2Title =>
      '2. Comment nous utilisons vos informations';

  @override
  String get privacyPageSection2Content =>
      'Nous utilisons les informations collectées pour :\n\n- Fournir, maintenir et améliorer nos services\n- Vous associer à des universités et programmes adaptés\n- Vous envoyer des notifications et mises à jour pertinentes\n- Répondre à vos demandes et requêtes de support\n- Analyser les habitudes d\'utilisation pour améliorer l\'expérience\n- Respecter les obligations légales';

  @override
  String get privacyPageSection3Title => '3. Partage d\'informations';

  @override
  String get privacyPageSection3Content =>
      'Nous pouvons partager vos informations avec :\n\n- Les universités et institutions qui vous intéressent\n- Les conseillers avec lesquels vous choisissez de vous connecter\n- Les parents/tuteurs (avec votre consentement)\n- Les prestataires de services qui assistent nos opérations\n- Les autorités légales lorsque la loi l\'exige\n\nNous ne vendons pas vos informations personnelles à des tiers.';

  @override
  String get privacyPageSection4Title => '4. Sécurité des données';

  @override
  String get privacyPageSection4Content =>
      'Nous mettons en œuvre des mesures de sécurité conformes aux normes de l\'industrie pour protéger vos données :\n\n- Chiffrement des données en transit et au repos\n- Audits et évaluations de sécurité réguliers\n- Contrôles d\'accès et authentification\n- Centres de données sécurisés avec conformité SOC 2';

  @override
  String get privacyPageSection5Title => '5. Vos droits';

  @override
  String get privacyPageSection5Content =>
      'Vous avez le droit de :\n\n- Accéder à vos données personnelles\n- Corriger les informations inexactes\n- Supprimer votre compte et vos données\n- Exporter vos données dans un format portable\n- Vous désinscrire des communications marketing\n- Retirer votre consentement à tout moment';

  @override
  String get privacyPageSection6Title => '6. Nous contacter';

  @override
  String get privacyPageSection6Content =>
      'Si vous avez des questions sur cette politique de confidentialité, veuillez nous contacter à :\n\nE-mail : privacy@navia.app\nAdresse : Accra, Ghana';

  @override
  String get privacyPageContactTeam => 'Contacter l\'équipe confidentialité';

  @override
  String privacyPageLastUpdatedLabel(String date) {
    return 'Dernière mise à jour : $date';
  }

  @override
  String get termsPageTitle => 'Conditions d\'utilisation';

  @override
  String get termsPageLastUpdated => 'Dernière mise à jour : janvier 2026';

  @override
  String get termsPageSection1Title => '1. Acceptation des conditions';

  @override
  String get termsPageSection1Content =>
      'En accédant ou en utilisant Navia (« le Service »), vous acceptez d\'être lié par ces conditions d\'utilisation. Si vous n\'acceptez pas ces conditions, veuillez ne pas utiliser notre Service.';

  @override
  String get termsPageSection2Title => '2. Comptes utilisateurs';

  @override
  String get termsPageSection2Content =>
      'Pour utiliser certaines fonctionnalités, vous devez créer un compte. Vous acceptez de fournir des informations exactes et complètes, de maintenir la sécurité de vos identifiants et d\'assumer la responsabilité de toutes les activités sous votre compte.';

  @override
  String get termsPageSection3Title => '3. Conduite de l\'utilisateur';

  @override
  String get termsPageSection3Content =>
      'Vous acceptez de ne pas utiliser le Service à des fins illégales, de ne pas harcèler d\'autres utilisateurs, de ne pas soumettre de fausses informations et de ne pas tenter d\'obtenir un accès non autorisé aux systèmes.';

  @override
  String get termsPageSection4Title => '4. Limitation de responsabilité';

  @override
  String get termsPageSection4Content =>
      'LE SERVICE EST FOURNI « TEL QUEL » SANS GARANTIE D\'AUCUNE SORTE. NOUS DÉCLINONS TOUTES LES GARANTIES, EXPRESSES OU IMPLICITES.';

  @override
  String get termsPageSection5Title => '5. Contact';

  @override
  String get termsPageSection5Content =>
      'Pour toute question concernant ces conditions, contactez-nous à : legal@navia.app';

  @override
  String get termsPageAgreement =>
      'En utilisant Navia, vous acceptez ces conditions';

  @override
  String get contactPageTitle => 'Nous contacter';

  @override
  String get contactPageGetInTouch => 'Entrer en contact';

  @override
  String get contactPageSubtitle =>
      'Des questions ? Nous serions ravis de vous entendre.';

  @override
  String get contactPageEmail => 'E-mail';

  @override
  String get contactPageEmailValue => 'support@navia.app';

  @override
  String get contactPageEmailReply => 'Nous répondons sous 24 heures';

  @override
  String get contactPageOffice => 'Bureau';

  @override
  String get contactPageOfficeValue => 'Accra, Ghana';

  @override
  String get contactPageOfficeRegion => 'Afrique de l\'Ouest';

  @override
  String get contactPageHours => 'Horaires';

  @override
  String get contactPageHoursValue => 'Lun - Ven : 9h - 18h';

  @override
  String get contactPageHoursTimezone => 'Fuseau horaire GMT';

  @override
  String get contactPageSendMessage => 'Envoyez-nous un message';

  @override
  String get contactPageYourName => 'Votre nom';

  @override
  String get contactPageEmailAddress => 'Adresse e-mail';

  @override
  String get contactPageSubject => 'Objet';

  @override
  String get contactPageMessage => 'Message';

  @override
  String get contactPageSendButton => 'Envoyer le message';

  @override
  String get contactPageFollowUs => 'Suivez-nous';

  @override
  String get contactPageNameRequired => 'Veuillez entrer votre nom';

  @override
  String get contactPageEmailRequired => 'Veuillez entrer votre e-mail';

  @override
  String get contactPageEmailInvalid => 'Veuillez entrer un e-mail valide';

  @override
  String get contactPageSubjectRequired => 'Veuillez entrer un objet';

  @override
  String get contactPageMessageRequired => 'Veuillez entrer votre message';

  @override
  String get contactPageSuccessMessage =>
      'Merci pour votre message ! Nous vous répondrons bientôt.';

  @override
  String get blogPageTitle => 'Blog Navia';

  @override
  String get blogPageSubtitle =>
      'Actualités, conseils et histoires sur l\'éducation en Afrique';

  @override
  String get blogPageCategories => 'Catégories';

  @override
  String get blogPageAll => 'Tous';

  @override
  String get blogPageRecentPosts => 'Articles récents';

  @override
  String get blogPageFeatured => 'En vedette';

  @override
  String get blogPageSubscribeTitle => 'Abonnez-vous à notre newsletter';

  @override
  String get blogPageSubscribeSubtitle =>
      'Recevez les derniers articles et ressources directement dans votre boîte de réception';

  @override
  String get blogPageEnterEmail => 'Entrez votre e-mail';

  @override
  String get blogPageSubscribeButton => 'S\'abonner';

  @override
  String get careersPageTitle => 'Carrières';

  @override
  String get careersPageJoinMission => 'Rejoignez notre mission';

  @override
  String get careersPageHeroSubtitle =>
      'Aidez-nous à transformer l\'éducation à travers l\'Afrique';

  @override
  String get careersPageWhyJoin => 'Pourquoi rejoindre Navia ?';

  @override
  String get careersPageGlobalImpact => 'Impact mondial';

  @override
  String get careersPageGlobalImpactDesc =>
      'Travaillez sur des solutions qui touchent des millions d\'étudiants à travers l\'Afrique';

  @override
  String get careersPageGrowth => 'Croissance';

  @override
  String get careersPageGrowthDesc =>
      'Opportunités d\'apprentissage continu et de développement de carrière';

  @override
  String get careersPageGreatTeam => 'Super équipe';

  @override
  String get careersPageGreatTeamDesc =>
      'Collaborez avec des personnes passionnées et talentueuses';

  @override
  String get careersPageFlexibility => 'Flexibilité';

  @override
  String get careersPageFlexibilityDesc =>
      'Culture favorable au télétravail avec des horaires flexibles';

  @override
  String get careersPageOpenPositions => 'Postes ouverts';

  @override
  String get careersPageApply => 'Postuler';

  @override
  String get careersPageNoFit => 'Vous ne trouvez pas le poste idéal ?';

  @override
  String get careersPageNoFitDesc =>
      'Nous sommes toujours à la recherche de personnes talentueuses. Envoyez votre CV à careers@navia.app';

  @override
  String get careersPageContactUs => 'Nous contacter';

  @override
  String get careersPageJobSeniorFlutter => 'Développeur Flutter Senior';

  @override
  String get careersPageJobBackendEngineer =>
      'Ingénieur Backend (Python/FastAPI)';

  @override
  String get careersPageJobProductDesigner => 'Designer de produits';

  @override
  String get careersPageJobContentSpecialist =>
      'Spécialiste du contenu éducatif';

  @override
  String get careersPageJobCustomerSuccess =>
      'Responsable de la réussite client';

  @override
  String get careersPageDepartmentEngineering => 'Ingénierie';

  @override
  String get careersPageDepartmentDesign => 'Design';

  @override
  String get careersPageDepartmentContent => 'Contenu';

  @override
  String get careersPageDepartmentOperations => 'Opérations';

  @override
  String get careersPageLocationRemoteAfrica => 'À distance (Afrique)';

  @override
  String get careersPageLocationAccra => 'Accra, Ghana';

  @override
  String get careersPageLocationLagos => 'Lagos, Nigeria';

  @override
  String get careersPageLocationNairobi => 'Nairobi, Kenya';

  @override
  String get careersPageTypeFullTime => 'Temps plein';

  @override
  String get communityPageTitle => 'Rejoignez notre communauté';

  @override
  String get communityPageSubtitle =>
      'Connectez-vous avec des étudiants, conseillers et éducateurs';

  @override
  String get communityPageMembers => 'Membres';

  @override
  String get communityPageGroups => 'Groupes';

  @override
  String get communityPageDiscussions => 'Discussions';

  @override
  String get communityPageFeaturedGroups => 'Groupes en vedette';

  @override
  String get communityPagePopularDiscussions => 'Discussions populaires';

  @override
  String get communityPageUpcomingEvents => 'Événements à venir';

  @override
  String get communityPageAttending => 'participants';

  @override
  String get communityPageJoin => 'Rejoindre';

  @override
  String get communityPageReadyToJoin => 'Prêt à rejoindre ?';

  @override
  String get communityPageCreateAccount =>
      'Créez un compte pour rejoindre la communauté';

  @override
  String get communityPageSignUpFree => 'S\'inscrire gratuitement';

  @override
  String communityPageBy(String author) {
    return 'par $author';
  }

  @override
  String get compliancePageTitle => 'Conformité et Certifications';

  @override
  String get compliancePageHeadline => 'Conformité et certifications';

  @override
  String get compliancePageSubtitle =>
      'Notre engagement envers la sécurité, la confidentialité et la conformité réglementaire';

  @override
  String get compliancePageCertifications => 'Certifications';

  @override
  String get compliancePageSoc2 => 'SOC 2 Type II';

  @override
  String get compliancePageSoc2Desc =>
      'Certifié pour la sécurité, la disponibilité et la confidentialité';

  @override
  String get compliancePageIso => 'ISO 27001';

  @override
  String get compliancePageIsoDesc =>
      'Certification de gestion de la sécurité de l\'information';

  @override
  String get compliancePageGdpr => 'Conforme au RGPD';

  @override
  String get compliancePageGdprDesc =>
      'Règlement général sur la protection des données de l\'UE';

  @override
  String get compliancePageDataProtection => 'Protection des données';

  @override
  String get compliancePageDataProtectionContent =>
      'Nous mettons en œuvre des mesures complètes de protection des données pour sauvegarder vos informations:\n\n• Chiffrement de bout en bout pour les données en transit\n• Chiffrement AES-256 pour les données au repos\n• Audits de sécurité et tests de pénétration réguliers\n• Support de l\'authentification multifacteur\n• Contrôle d\'accès basé sur les rôles\n• Sauvegarde automatisée et reprise après sinistre';

  @override
  String get compliancePagePrivacyPractices => 'Pratiques de confidentialité';

  @override
  String get compliancePagePrivacyContent =>
      'Nos pratiques de confidentialité sont conçues pour protéger vos droits:\n\n• Politiques transparentes de collecte et d\'utilisation des données\n• Gestion du consentement de l\'utilisateur pour le traitement des données\n• Principes de minimisation des données\n• Droit d\'accès, de rectification et de suppression des données personnelles\n• Support de la portabilité des données\n• Évaluations régulières de l\'impact sur la vie privée';

  @override
  String get compliancePageRegulatory => 'Conformité réglementaire';

  @override
  String get compliancePageRegulatoryContent =>
      'Navia adhère aux réglementations internationales et régionales:\n\n• Règlement Général sur la Protection des Données (RGPD) - UE\n• Loi sur la Protection des Informations Personnelles (POPIA) - Afrique du Sud\n• Loi sur la Protection des Données - Ghana, Kenya, Nigéria\n• Loi sur la Protection de la Vie Privée des Enfants en Ligne (COPPA)\n• Loi sur la Protection de la Vie Privée des Consommateurs de Californie (CCPA)';

  @override
  String get compliancePageThirdParty => 'Sécurité des tiers';

  @override
  String get compliancePageThirdPartyContent =>
      'Nous évaluons et surveillons soigneusement nos fournisseurs de services tiers:\n\n• Évaluations de sécurité des fournisseurs\n• Accords de traitement des données\n• Transparence des sous-traitants\n• Examens de conformité réguliers\n• Coordination de la réponse aux incidents';

  @override
  String get compliancePageSecurityPractices => 'Pratiques de sécurité';

  @override
  String get compliancePageRegularUpdates => 'Mises à jour régulières';

  @override
  String get compliancePageRegularUpdatesDesc =>
      'Correctifs de sécurité et mises à jour déployés en continu';

  @override
  String get compliancePageBugBounty => 'Programme Bug Bounty';

  @override
  String get compliancePageBugBountyDesc =>
      'Programme de divulgation responsable pour les chercheurs en sécurité';

  @override
  String get compliancePageMonitoring => 'Surveillance';

  @override
  String get compliancePageMonitoringDesc =>
      'Surveillance de la sécurité et détection des menaces 24h/24 7j/7';

  @override
  String get compliancePageAuditLogs => 'Journaux d\'audit';

  @override
  String get compliancePageAuditLogsDesc =>
      'Journalisation complète de tous les événements de sécurité';

  @override
  String get compliancePageQuestions => 'Questions de conformité ?';

  @override
  String get compliancePageContactTeam =>
      'Contactez notre équipe de conformité pour vos demandes';

  @override
  String compliancePageLastUpdated(String date) {
    return 'Dernière mise à jour : $date';
  }

  @override
  String get cookiesPageTitle => 'Politique de cookies';

  @override
  String get cookiesPageLastUpdated => 'Dernière mise à jour : janvier 2026';

  @override
  String get cookiesPageWhatAreCookies => 'Que sont les cookies ?';

  @override
  String get cookiesPageWhatAreCookiesContent =>
      'Les cookies sont de petits fichiers texte stockés sur votre appareil lorsque vous visitez un site web. Ils aident le site à mémoriser les informations de votre visite, comme votre langue préférée et d\'autres paramètres, ce qui peut faciliter votre prochaine visite.\n\nNous utilisons des cookies et des technologies similaires pour fournir, protéger et améliorer nos services.';

  @override
  String get cookiesPageHowWeUse => 'Comment nous utilisons les cookies';

  @override
  String get cookiesPageHowWeUseContent =>
      'Nous utilisons différents types de cookies à des fins variées :\n\n**Cookies essentiels**\nCes cookies sont nécessaires au bon fonctionnement du site web. Ils activent les fonctionnalités de base comme la navigation, l\'accès sécurisé aux zones protégées et la mémorisation de votre état de connexion.\n\n**Cookies de performance**\nCes cookies nous aident à comprendre comment les visiteurs interagissent avec notre site web. Ils collectent des informations sur les visites de pages et les messages d\'erreur rencontrés.\n\n**Cookies de fonctionnalité**\nCes cookies permettent des fonctionnalités améliorées et la personnalisation, comme la mémorisation de vos préférences et paramètres linguistiques.\n\n**Cookies analytiques**\nNous utilisons des cookies analytiques pour analyser le trafic du site web et optimiser l\'expérience utilisateur.';

  @override
  String get cookiesPageTypesTitle => 'Types de cookies que nous utilisons';

  @override
  String get cookiesPageCookieType => 'Type de cookie';

  @override
  String get cookiesPagePurpose => 'Objectif';

  @override
  String get cookiesPageDuration => 'Durée';

  @override
  String get cookiesPageSession => 'Session';

  @override
  String get cookiesPageAuthentication => 'Authentification';

  @override
  String get cookiesPagePreferences => 'Préférences';

  @override
  String get cookiesPageUserSettings => 'Paramètres utilisateur';

  @override
  String get cookiesPageAnalytics => 'Analytique';

  @override
  String get cookiesPageUsageStatistics => 'Statistiques d\'utilisation';

  @override
  String get cookiesPageSecurity => 'Sécurité';

  @override
  String get cookiesPageFraudPrevention => 'Prévention de la fraude';

  @override
  String get cookiesPageManaging => 'Gérer vos préférences de cookies';

  @override
  String get cookiesPageManagingContent =>
      'Vous avez plusieurs options pour gérer les cookies :\n\n**Paramètres du navigateur**\nLa plupart des navigateurs web vous permettent de contrôler les cookies via leurs paramètres. Vous pouvez configurer votre navigateur pour refuser les cookies ou vous alerter lorsque des cookies sont envoyés.\n\n**Nos paramètres de cookies**\nVous pouvez gérer vos préférences de cookies pour notre plateforme en visitant Paramètres > Préférences de cookies dans votre compte.\n\n**Liens de désinscription**\nPour les cookies analytiques et publicitaires, vous pouvez vous désinscrire via les mécanismes de désinscription de l\'industrie.\n\nNote : La désactivation de certains cookies peut affecter votre expérience et limiter certaines fonctionnalités.';

  @override
  String get cookiesPageThirdParty => 'Cookies tiers';

  @override
  String get cookiesPageThirdPartyContent =>
      'Certains cookies sont placés par des services tiers qui apparaissent sur nos pages. Nous ne contrôlons pas ces cookies.\n\nLes services tiers que nous utilisons et qui peuvent placer des cookies incluent :\n• Supabase (Authentification)\n• Sentry (Suivi des erreurs)\n• Services d\'analyse\n\nVeuillez consulter les politiques de confidentialité de ces services pour plus d\'informations.';

  @override
  String get cookiesPageUpdates => 'Mises à jour de cette politique';

  @override
  String get cookiesPageUpdatesContent =>
      'Nous pouvons mettre à jour cette politique de cookies de temps en temps. Lorsque nous apportons des modifications, nous mettrons à jour la date de « Dernière mise à jour » en haut de cette page.\n\nNous vous encourageons à consulter cette politique périodiquement.';

  @override
  String get cookiesPageManagePreferences => 'Gérer les préférences de cookies';

  @override
  String get cookiesPageCustomize =>
      'Personnalisez les cookies que vous autorisez';

  @override
  String get cookiesPageManageButton => 'Gérer';

  @override
  String get cookiesPageQuestionsTitle => 'Questions sur les cookies ?';

  @override
  String get cookiesPageQuestionsContact =>
      'Contactez-nous à privacy@navia.app';

  @override
  String get dataProtPageTitle => 'Protection des données';

  @override
  String get dataProtPageSubtitle =>
      'Comment nous protégeons et gérons vos données personnelles';

  @override
  String get dataProtPageYourRights => 'Vos droits sur les données';

  @override
  String get dataProtPageRightsIntro =>
      'En vertu des lois sur la protection des données, vous disposez des droits suivants :';

  @override
  String get dataProtPageRightAccess => 'Droit d\'accès';

  @override
  String get dataProtPageRightAccessDesc =>
      'Vous pouvez demander une copie de toutes les données personnelles que nous détenons sur vous. Nous vous la fournirons sous 30 jours.';

  @override
  String get dataProtPageRightRectification => 'Droit de rectification';

  @override
  String get dataProtPageRightRectificationDesc =>
      'Vous pouvez demander la correction de données personnelles inexactes ou incomplètes.';

  @override
  String get dataProtPageRightErasure => 'Droit à l\'effacement';

  @override
  String get dataProtPageRightErasureDesc =>
      'Vous pouvez demander la suppression de vos données personnelles dans certaines circonstances.';

  @override
  String get dataProtPageRightPortability =>
      'Droit à la portabilité des données';

  @override
  String get dataProtPageRightPortabilityDesc =>
      'Vous pouvez demander vos données dans un format structuré et lisible par machine.';

  @override
  String get dataProtPageRightObject => 'Droit d\'opposition';

  @override
  String get dataProtPageRightObjectDesc =>
      'Vous pouvez vous opposer au traitement de vos données personnelles à certaines fins.';

  @override
  String get dataProtPageRightRestrict => 'Droit à la limitation du traitement';

  @override
  String get dataProtPageRightRestrictDesc =>
      'Vous pouvez demander que nous limitions l\'utilisation de vos données.';

  @override
  String get dataProtPageHowWeProtect => 'Comment nous protégeons vos données';

  @override
  String get dataProtPageHowWeProtectContent =>
      'Nous mettons en œuvre des mesures de sécurité robustes pour protéger vos données personnelles :\n\n**Mesures techniques**\n• Chiffrement de bout en bout pour la transmission des données\n• Chiffrement AES-256 pour les données stockées\n• Audits de sécurité réguliers et tests de pénétration\n• Systèmes de détection d\'intrusion\n• Centres de données sécurisés avec sécurité physique\n\n**Mesures organisationnelles**\n• Formation du personnel sur la protection des données\n• Contrôles d\'accès et authentification\n• Évaluations d\'impact sur la protection des données\n• Procédures de réponse aux incidents\n• Revues de conformité régulières';

  @override
  String get dataProtPageStorage => 'Stockage et conservation des données';

  @override
  String get dataProtPageStorageContent =>
      '**Où nous stockons vos données**\nVos données sont stockées sur des serveurs sécurisés situés dans des régions disposant de lois strictes sur la protection des données. Nous utilisons des fournisseurs cloud de premier plan avec des certifications SOC 2 et ISO 27001.\n\n**Durée de conservation de vos données**\n• Données de compte : jusqu\'à la suppression de votre compte\n• Données de candidature : 7 ans pour la conformité\n• Données analytiques : 2 ans\n• Journaux de communication : 3 ans\n\nAprès ces périodes, les données sont supprimées en toute sécurité ou anonymisées.';

  @override
  String get dataProtPageSharing => 'Partage des données';

  @override
  String get dataProtPageSharingContent =>
      'Nous ne partageons vos données que lorsque c\'est nécessaire :\n\n• **Avec votre consentement** : Lorsque vous acceptez explicitement\n• **Prestataires de services** : Partenaires qui nous aident à fournir nos services\n• **Exigences légales** : Lorsque la loi l\'exige\n• **Transferts d\'entreprise** : En cas de fusion ou d\'acquisition\n\nNous ne vendons jamais vos données personnelles à des tiers.';

  @override
  String get dataProtPageExerciseRights => 'Exercez vos droits';

  @override
  String get dataProtPageExerciseRightsDesc =>
      'Pour effectuer une demande de données ou exercer l\'un de vos droits, contactez notre Délégué à la Protection des Données :';

  @override
  String get dataProtPageContactUs => 'Nous contacter';

  @override
  String get dataProtPageManageData => 'Gérer les données';

  @override
  String get dataProtPageRelatedInfo => 'Informations connexes';

  @override
  String get dataProtPagePrivacyPolicy => 'Politique de confidentialité';

  @override
  String get dataProtPageCookiePolicy => 'Politique de cookies';

  @override
  String get dataProtPageTermsOfService => 'Conditions d\'utilisation';

  @override
  String get dataProtPageCompliance => 'Conformité';

  @override
  String get docsPageTitle => 'Documentation';

  @override
  String get docsPageSubtitle =>
      'Tout ce que vous devez savoir sur l\'utilisation de Navia';

  @override
  String get docsPageGettingStarted => 'Pour commencer';

  @override
  String get docsPageGettingStartedDesc => 'Apprenez les bases de Navia';

  @override
  String get docsPageForStudents => 'Pour les étudiants';

  @override
  String get docsPageForStudentsDesc => 'Guides pour les étudiants';

  @override
  String get docsPageForParents => 'Pour les parents';

  @override
  String get docsPageForParentsDesc => 'Guides pour les parents';

  @override
  String get docsPageForCounselors => 'Pour les conseillers';

  @override
  String get docsPageForCounselorsDesc =>
      'Guides pour les conseillers en éducation';

  @override
  String get docsPageForInstitutions => 'Pour les institutions';

  @override
  String get docsPageForInstitutionsDesc =>
      'Guides pour les universités et collèges';

  @override
  String get docsPageCantFind => 'Vous ne trouvez pas ce que vous cherchez ?';

  @override
  String get docsPageCheckHelpCenter =>
      'Consultez notre Centre d\'aide ou contactez le support';

  @override
  String get docsPageHelpCenter => 'Centre d\'aide';

  @override
  String get helpCenterPageTitle => 'Centre d\'aide';

  @override
  String get helpCenterPageHowCanWeHelp => 'Comment pouvons-nous vous aider ?';

  @override
  String get helpCenterPageSearchHint => 'Rechercher de l\'aide...';

  @override
  String get helpCenterPageQuickLinks => 'Liens rapides';

  @override
  String get helpCenterPageUniversitySearch => 'Recherche d\'universités';

  @override
  String get helpCenterPageMyProfile => 'Mon profil';

  @override
  String get helpCenterPageSettings => 'Paramètres';

  @override
  String get helpCenterPageContactSupport => 'Contacter le support';

  @override
  String get helpCenterPageCategories => 'Catégories';

  @override
  String get helpCenterPageFaq => 'Questions fréquemment posées';

  @override
  String get helpCenterPageNoResults => 'Aucun résultat trouvé';

  @override
  String get helpCenterPageStillNeedHelp => 'Besoin d\'aide supplémentaire ?';

  @override
  String get helpCenterPageSupportTeam =>
      'Notre équipe de support est là pour vous aider';

  @override
  String get mobileAppsPageTitle => 'Navia sur mobile';

  @override
  String get mobileAppsPageSubtitle =>
      'Emportez votre parcours éducatif avec vous.\nTéléchargez l\'application Navia sur votre plateforme préférée.';

  @override
  String get mobileAppsPageDownloadNow => 'Télécharger maintenant';

  @override
  String get mobileAppsPageDownloadOnThe => 'Télécharger sur';

  @override
  String get mobileAppsPageFeatures =>
      'Fonctionnalités de l\'application mobile';

  @override
  String get mobileAppsPageOfflineMode => 'Mode hors ligne';

  @override
  String get mobileAppsPageOfflineModeDesc =>
      'Accédez aux fonctionnalités clés sans Internet';

  @override
  String get mobileAppsPagePushNotifications => 'Notifications push';

  @override
  String get mobileAppsPagePushNotificationsDesc =>
      'Restez informé sur vos candidatures';

  @override
  String get mobileAppsPageBiometricLogin => 'Connexion biométrique';

  @override
  String get mobileAppsPageBiometricLoginDesc => 'Accès sécurisé et rapide';

  @override
  String get mobileAppsPageRealtimeSync => 'Synchronisation en temps réel';

  @override
  String get mobileAppsPageRealtimeSyncDesc => 'Données toujours à jour';

  @override
  String get mobileAppsPageDarkMode => 'Mode sombre';

  @override
  String get mobileAppsPageDarkModeDesc => 'Confortable pour les yeux';

  @override
  String get mobileAppsPageFastLight => 'Rapide et léger';

  @override
  String get mobileAppsPageFastLightDesc => 'Optimisé pour la performance';

  @override
  String get mobileAppsPageAppPreview => 'Aperçu de l\'application';

  @override
  String get mobileAppsPageSystemRequirements => 'Configuration requise';

  @override
  String get mobileAppsPageScanToDownload => 'Scanner pour télécharger';

  @override
  String get mobileAppsPageScanDesc =>
      'Scannez ce code QR avec l\'appareil photo de votre téléphone pour télécharger l\'application';

  @override
  String get partnersPageTitle => 'Partenaires';

  @override
  String get partnersPageHeroTitle => 'Devenez partenaire de Navia';

  @override
  String get partnersPageHeroSubtitle =>
      'Rejoignez-nous pour transformer l\'éducation à travers l\'Afrique';

  @override
  String get partnersPageOpportunities => 'Opportunités de partenariat';

  @override
  String get partnersPageUniversities => 'Universités et institutions';

  @override
  String get partnersPageUniversitiesDesc =>
      'Listez vos programmes, connectez-vous avec des étudiants potentiels et simplifiez votre processus d\'admission.';

  @override
  String get partnersPageCounselors => 'Conseillers en éducation';

  @override
  String get partnersPageCounselorsDesc =>
      'Rejoignez notre réseau de conseillers et aidez à guider les étudiants vers le parcours éducatif idéal.';

  @override
  String get partnersPageCorporate => 'Partenaires corporatifs';

  @override
  String get partnersPageCorporateDesc =>
      'Soutenez les initiatives éducatives par des bourses, des stages et des programmes de mentorat.';

  @override
  String get partnersPageNgo => 'ONG et gouvernements';

  @override
  String get partnersPageNgoDesc =>
      'Collaborez sur des initiatives pour améliorer l\'accès et les résultats en éducation dans les régions.';

  @override
  String get partnersPageOurPartners => 'Nos partenaires';

  @override
  String get partnersPageReadyToPartner => 'Prêt à devenir partenaire ?';

  @override
  String get partnersPageLetsDiscuss =>
      'Discutons de comment nous pouvons travailler ensemble';

  @override
  String get partnersPageContactTeam => 'Contacter l\'équipe partenariats';

  @override
  String get partnersPageBenefitDirectAccess =>
      'Accès direct aux candidats qualifiés';

  @override
  String get partnersPageBenefitAppManagement =>
      'Outils de gestion des candidatures';

  @override
  String get partnersPageBenefitAnalytics => 'Analyses et informations';

  @override
  String get partnersPageBenefitBrandVisibility => 'Visibilité de la marque';

  @override
  String get partnersPageBenefitClientManagement =>
      'Outils de gestion des clients';

  @override
  String get partnersPageBenefitStudentMatching => 'Jumelage d\'étudiants';

  @override
  String get partnersPageBenefitScheduling => 'Système de planification';

  @override
  String get partnersPageBenefitRevenue => 'Opportunités de revenus';

  @override
  String get partnersPageBenefitCsrVisibility => 'Visibilité RSE';

  @override
  String get partnersPageBenefitTalentPipeline => 'Pipeline de talents';

  @override
  String get partnersPageBenefitBrandAssociation => 'Association de marque';

  @override
  String get partnersPageBenefitImpactReporting => 'Rapport d\'impact';

  @override
  String get partnersPageBenefitDataInsights => 'Données et informations';

  @override
  String get partnersPageBenefitPlatformIntegration =>
      'Intégration de plateforme';

  @override
  String get partnersPageBenefitReachScale => 'Portée et échelle';

  @override
  String get partnersPageBenefitImpactMeasurement => 'Mesure de l\'impact';

  @override
  String get partnersPagePartnerUnivGhana => 'Université du Ghana';

  @override
  String get partnersPagePartnerAshesi => 'Université Ashesi';

  @override
  String get partnersPagePartnerKenyatta => 'Université Kenyatta';

  @override
  String get partnersPagePartnerUnilag => 'Université de Lagos';

  @override
  String get partnersPagePartnerKnust => 'KNUST';

  @override
  String get partnersPagePartnerMakerere => 'Université Makerere';

  @override
  String get pressPageTitle => 'Dossier de presse';

  @override
  String get pressPageSubtitle =>
      'Ressources pour les médias et la couverture presse';

  @override
  String get pressPageCompanyOverview => 'Présentation de l\'entreprise';

  @override
  String get pressPageCompanyOverviewContent =>
      'Navia est la première plateforme de technologie éducative en Afrique, connectant les étudiants aux universités, conseillers et ressources éducatives. Fondée avec la mission de démocratiser l\'accès à des conseils éducatifs de qualité à travers le continent africain.';

  @override
  String get pressPageKeyFacts => 'Faits clés';

  @override
  String get pressPageFounded => 'Fondée';

  @override
  String get pressPageHeadquarters => 'Siège social';

  @override
  String get pressPageActiveUsers => 'Utilisateurs actifs';

  @override
  String get pressPagePartnerInstitutions => 'Institutions partenaires';

  @override
  String get pressPageCountries => 'Pays';

  @override
  String get pressPageUniversitiesInDb => 'Universités dans la base de données';

  @override
  String get pressPageBrandAssets => 'Ressources de marque';

  @override
  String get pressPageLogoPack => 'Pack de logos';

  @override
  String get pressPageLogoPackDesc => 'Formats PNG, SVG et vectoriels';

  @override
  String get pressPageBrandGuidelines => 'Charte graphique';

  @override
  String get pressPageBrandGuidelinesDesc =>
      'Couleurs, typographie, utilisation';

  @override
  String get pressPageScreenshots => 'Captures d\'écran';

  @override
  String get pressPageScreenshotsDesc =>
      'Captures d\'écran et démos de l\'application';

  @override
  String get pressPageVideoAssets => 'Ressources vidéo';

  @override
  String get pressPageVideoAssetsDesc => 'Vidéos produit et images d\'archives';

  @override
  String get pressPageDownload => 'Télécharger';

  @override
  String get pressPageRecentNews => 'Actualités récentes';

  @override
  String get pressPageMediaContact => 'Contact médias';

  @override
  String get pressPageMediaContactDesc =>
      'Pour les demandes presse, veuillez contacter :';

  @override
  String get apiDocsPageTitle => 'Référence API';

  @override
  String get apiDocsPageSubtitle => 'Intégrez Navia dans vos applications';

  @override
  String get apiDocsPageQuickStart => 'Démarrage Rapide';

  @override
  String get apiDocsPageEndpoints => 'Points de terminaison API';

  @override
  String get apiDocsPageAuthentication => 'Authentification';

  @override
  String get apiDocsPageAuthDesc =>
      'Toutes les requêtes API nécessitent une authentification avec une clé API.';

  @override
  String get apiDocsPageRateLimits => 'Limites de débit';

  @override
  String get apiDocsPageFreeTier => 'Gratuit';

  @override
  String get apiDocsPageBasic => 'Basique';

  @override
  String get apiDocsPagePro => 'Pro';

  @override
  String get apiDocsPageEnterprise => 'Entreprise';

  @override
  String get apiDocsPageUnlimited => 'Illimité';

  @override
  String get apiDocsPageNeedAccess => 'Besoin d\'accès API ?';

  @override
  String get apiDocsPageContactCredentials =>
      'Contactez-nous pour obtenir vos identifiants API';

  @override
  String get apiDocsPageContactUs => 'Nous contacter';

  @override
  String get apiDocsPageUniversities => 'Universités';

  @override
  String get apiDocsPagePrograms => 'Programmes';

  @override
  String get apiDocsPageRecommendations => 'Recommandations';

  @override
  String get apiDocsPageStudentsEndpoint => 'Étudiants';

  @override
  String get apiDocsPageListAll => 'Lister toutes les universités';

  @override
  String get apiDocsPageGetDetails => 'Obtenir les détails d\'une université';

  @override
  String get apiDocsPageSearchUniversities => 'Rechercher des universités';

  @override
  String get apiDocsPageListPrograms => 'Lister les programmes';

  @override
  String get apiDocsPageListAllPrograms => 'Lister tous les programmes';

  @override
  String get apiDocsPageGetProgramDetails =>
      'Obtenir les détails d\'un programme';

  @override
  String get apiDocsPageSearchPrograms => 'Rechercher des programmes';

  @override
  String get apiDocsPageGenerateRec => 'Générer des recommandations';

  @override
  String get apiDocsPageGetRecDetails =>
      'Obtenir les détails d\'une recommandation';

  @override
  String get apiDocsPageGetStudentProfile => 'Obtenir le profil étudiant';

  @override
  String get apiDocsPageUpdateStudentProfile =>
      'Mettre à jour le profil étudiant';

  @override
  String get apiDocsPageListApplications => 'Lister les candidatures';

  @override
  String get swErrorTechnicalDetails => 'Details techniques';

  @override
  String get swErrorRetry => 'Reessayer';

  @override
  String get swErrorConnectionTitle => 'Erreur de connexion';

  @override
  String get swErrorConnectionMessage =>
      'Impossible de se connecter a nos serveurs. Veuillez verifier votre connexion internet et reessayer.';

  @override
  String get swErrorConnectionHelp =>
      'Assurez-vous d\'avoir une connexion internet stable. Si le probleme persiste, nos serveurs sont peut-etre temporairement indisponibles.';

  @override
  String get swErrorAuthTitle => 'Authentification requise';

  @override
  String get swErrorAuthMessage =>
      'Votre session a expire ou vous n\'avez pas la permission d\'acceder a ce contenu.';

  @override
  String get swErrorAuthHelp =>
      'Essayez de vous deconnecter puis de vous reconnecter pour actualiser votre session.';

  @override
  String get swErrorSignOut => 'Se deconnecter';

  @override
  String get swErrorNotFoundTitle => 'Contenu introuvable';

  @override
  String get swErrorNotFoundMessage =>
      'Le contenu que vous recherchez n\'existe pas ou a ete deplace.';

  @override
  String get swErrorNotFoundHelp =>
      'L\'element a peut-etre ete supprime ou vous n\'avez pas acces pour le consulter.';

  @override
  String get swErrorServerTitle => 'Erreur serveur';

  @override
  String get swErrorServerMessage =>
      'Un probleme est survenu de notre cote. Nous travaillons a le resoudre.';

  @override
  String get swErrorServerHelp =>
      'Il s\'agit d\'un probleme temporaire. Veuillez reessayer dans quelques minutes.';

  @override
  String get swErrorRateLimitTitle => 'Trop de requetes';

  @override
  String get swErrorRateLimitMessage =>
      'Vous avez effectue trop de requetes. Veuillez patienter un instant avant de reessayer.';

  @override
  String get swErrorRateLimitHelp =>
      'Pour prevenir les abus, nous limitons le nombre de requetes. Veuillez patienter quelques secondes avant de reessayer.';

  @override
  String get swErrorValidationTitle => 'Erreur de validation';

  @override
  String get swErrorValidationMessage =>
      'Certaines informations semblent incorrectes ou manquantes. Veuillez verifier votre saisie et reessayer.';

  @override
  String get swErrorValidationHelp =>
      'Assurez-vous que tous les champs obligatoires sont correctement remplis.';

  @override
  String get swErrorAccessDeniedTitle => 'Acces refuse';

  @override
  String get swErrorAccessDeniedMessage =>
      'Vous n\'avez pas la permission d\'acceder a ce contenu.';

  @override
  String get swErrorAccessDeniedHelp =>
      'Contactez votre administrateur si vous pensez devoir avoir acces.';

  @override
  String get swErrorGenericTitle => 'Un probleme est survenu';

  @override
  String get swErrorGenericMessage =>
      'Une erreur inattendue s\'est produite. Veuillez reessayer.';

  @override
  String get swErrorGenericHelp =>
      'Si ce probleme persiste, veuillez contacter le support.';

  @override
  String get swErrorFailedToLoad => 'Echec du chargement des donnees';

  @override
  String get swEmptyStateNoApplicationsTitle => 'Aucune candidature';

  @override
  String get swEmptyStateNoApplicationsMessage =>
      'Commencez votre parcours en explorant les programmes et en soumettant votre premiere candidature.';

  @override
  String get swEmptyStateBrowsePrograms => 'Parcourir les programmes';

  @override
  String get swEmptyStateNoActivitiesTitle => 'Aucune activite recente';

  @override
  String get swEmptyStateNoActivitiesMessage =>
      'Vos activites recentes et mises a jour apparaitront ici au fur et a mesure que vous utilisez la plateforme.';

  @override
  String get swEmptyStateNoRecommendationsTitle => 'Aucune recommandation';

  @override
  String get swEmptyStateNoRecommendationsMessage =>
      'Completez votre profil pour recevoir des recommandations personnalisees basees sur vos interets et objectifs.';

  @override
  String get swEmptyStateCompleteProfile => 'Completer le profil';

  @override
  String get swEmptyStateNoMessagesTitle => 'Aucun message';

  @override
  String get swEmptyStateNoMessagesMessage =>
      'Vos conversations et notifications apparaitront ici.';

  @override
  String get swEmptyStateNoResultsTitle => 'Aucun resultat';

  @override
  String get swEmptyStateNoResultsMessage =>
      'Essayez d\'ajuster vos criteres de recherche ou vos filtres pour trouver ce que vous cherchez.';

  @override
  String get swEmptyStateClearFilters => 'Effacer les filtres';

  @override
  String get swEmptyStateNoCoursesTitle => 'Aucun cours disponible';

  @override
  String get swEmptyStateNoCoursesMessage =>
      'Revenez plus tard pour decouvrir de nouveaux cours ou explorez d\'autres opportunites d\'apprentissage.';

  @override
  String get swEmptyStateExplorePrograms => 'Explorer les programmes';

  @override
  String get swEmptyStateNoStudentsTitle => 'Aucun etudiant';

  @override
  String get swEmptyStateNoStudentsMessage =>
      'Les etudiants que vous conseillez apparaitront ici une fois qu\'ils seront assignes ou qu\'ils demanderont votre accompagnement.';

  @override
  String get swEmptyStateNoSessionsTitle => 'Aucune session a venir';

  @override
  String get swEmptyStateNoSessionsMessage =>
      'Vous n\'avez aucune session de conseil planifiee.';

  @override
  String get swEmptyStateScheduleSession => 'Planifier une session';

  @override
  String get swEmptyStateNoDataTitle => 'Aucune donnee disponible';

  @override
  String get swEmptyStateNoDataMessage =>
      'Les donnees apparaitront ici des qu\'il y aura de l\'activite a afficher.';

  @override
  String get swEmptyStateNoNotificationsTitle => 'Aucune notification';

  @override
  String get swEmptyStateNoNotificationsMessage =>
      'Vous etes a jour ! Les nouvelles notifications apparaitront ici.';

  @override
  String get swEmptyStateComingSoonTitle => 'Bientot disponible';

  @override
  String swEmptyStateComingSoonMessage(String feature) {
    return '$feature est actuellement en cours de developpement et sera bientot disponible.';
  }

  @override
  String get swEmptyStateAccessRestrictedTitle => 'Acces restreint';

  @override
  String get swEmptyStateAccessRestrictedMessage =>
      'Vous n\'avez pas la permission de consulter ce contenu. Contactez votre administrateur si vous avez besoin d\'un acces.';

  @override
  String get swComingSoonTitle => 'Bientot disponible';

  @override
  String swComingSoonMessage(String featureName) {
    return '$featureName est actuellement en cours de developpement et sera disponible dans une prochaine mise a jour.';
  }

  @override
  String get swComingSoonStayTuned => 'Restez a l\'ecoute des mises a jour !';

  @override
  String get swComingSoonGotIt => 'Compris';

  @override
  String get swNotifCenterTitle => 'Notifications';

  @override
  String get swNotifCenterMarkAllRead => 'Tout marquer comme lu';

  @override
  String swNotifCenterError(String error) {
    return 'Erreur : $error';
  }

  @override
  String get swNotifCenterRetry => 'Reessayer';

  @override
  String get swNotifCenterEmpty => 'Aucune notification';

  @override
  String get swNotifCenterEmptySubtitle =>
      'Nous vous avertirons quand quelque chose se passera';

  @override
  String get swNotifCenterDeleteTitle => 'Supprimer la notification';

  @override
  String get swNotifCenterDeleteConfirm =>
      'Etes-vous sur de vouloir supprimer cette notification ?';

  @override
  String get swNotifCenterCancel => 'Annuler';

  @override
  String get swNotifCenterDelete => 'Supprimer';

  @override
  String get swNotifCenterMarkAsRead => 'Marquer comme lu';

  @override
  String get swNotifCenterMarkAsUnread => 'Marquer comme non lu';

  @override
  String get swNotifCenterArchive => 'Archiver';

  @override
  String get swNotifCenterFilterTitle => 'Filtrer les notifications';

  @override
  String get swNotifCenterFilterClear => 'Effacer';

  @override
  String get swNotifCenterFilterStatus => 'Statut';

  @override
  String get swNotifCenterFilterAll => 'Tous';

  @override
  String get swNotifCenterFilterUnread => 'Non lus';

  @override
  String get swNotifCenterFilterRead => 'Lus';

  @override
  String get swNotifCenterApplyFilter => 'Appliquer le filtre';

  @override
  String get swNotifBellNoNew => 'Aucune nouvelle notification';

  @override
  String get swNotifBellViewAll => 'Voir toutes les notifications';

  @override
  String get swNotifBellNotifications => 'Notifications';

  @override
  String get swNotifWidgetMarkAsRead => 'Marquer comme lu';

  @override
  String get swNotifWidgetDelete => 'Supprimer';

  @override
  String get swNotifWidgetJustNow => 'A l\'instant';

  @override
  String swNotifWidgetMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Il y a $count minutes',
      one: 'Il y a 1 minute',
    );
    return '$_temp0';
  }

  @override
  String swNotifWidgetHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Il y a $count heures',
      one: 'Il y a 1 heure',
    );
    return '$_temp0';
  }

  @override
  String swNotifWidgetDaysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Il y a $count jours',
      one: 'Il y a 1 jour',
    );
    return '$_temp0';
  }

  @override
  String swNotifWidgetWeeksAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Il y a $count semaines',
      one: 'Il y a 1 semaine',
    );
    return '$_temp0';
  }

  @override
  String swNotifWidgetMonthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Il y a $count mois',
      one: 'Il y a 1 mois',
    );
    return '$_temp0';
  }

  @override
  String swNotifWidgetYearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Il y a $count ans',
      one: 'Il y a 1 an',
    );
    return '$_temp0';
  }

  @override
  String get swNotifWidgetNoNotifications => 'Aucune notification';

  @override
  String get swNotifWidgetAllCaughtUp =>
      'Vous etes a jour ! Revenez plus tard pour les nouvelles mises a jour.';

  @override
  String get swOfflineYouAreOffline => 'Vous etes hors ligne';

  @override
  String swOfflinePendingSync(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions en attente de synchronisation',
      one: '1 action en attente de synchronisation',
    );
    return '$_temp0';
  }

  @override
  String get swOfflineDetails => 'Details';

  @override
  String swOfflineSyncing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Synchronisation de $count actions...',
      one: 'Synchronisation de 1 action...',
    );
    return '$_temp0';
  }

  @override
  String get swOfflineActionsTitle => 'Actions hors ligne';

  @override
  String get swOfflineNoPending => 'Aucune action en attente';

  @override
  String get swOfflineClearAll => 'Tout effacer';

  @override
  String get swOfflineClose => 'Fermer';

  @override
  String get swOfflineSyncNow => 'Synchroniser maintenant';

  @override
  String get swOfflineJustNow => 'A l\'instant';

  @override
  String swOfflineMinutesAgo(int count) {
    return 'Il y a $count min';
  }

  @override
  String swOfflineHoursAgo(int count) {
    return 'Il y a $count h';
  }

  @override
  String swOfflineDaysAgo(int count) {
    return 'Il y a $count j';
  }

  @override
  String swOfflineError(String error) {
    return 'Erreur : $error';
  }

  @override
  String get swExportData => 'Exporter les donnees';

  @override
  String get swExportTooltip => 'Exporter';

  @override
  String get swExportAsPdf => 'Exporter en PDF';

  @override
  String get swExportAsCsv => 'Exporter en CSV';

  @override
  String get swExportAsJson => 'Exporter en JSON';

  @override
  String get swExportNoData => 'Aucune donnee a exporter';

  @override
  String swExportSuccess(String format) {
    return 'Exportation reussie au format $format';
  }

  @override
  String get swExportOk => 'OK';

  @override
  String swExportFailed(String error) {
    return 'Echec de l\'exportation : $error';
  }

  @override
  String get swExportRetry => 'Reessayer';

  @override
  String get swExportCancel => 'Annuler';

  @override
  String get swFilterTitle => 'Filtres';

  @override
  String get swFilterResetAll => 'Tout reinitialiser';

  @override
  String get swFilterCategories => 'Categories';

  @override
  String get swFilterPriceRange => 'Fourchette de prix (USD)';

  @override
  String get swFilterLevel => 'Niveau';

  @override
  String get swFilterCountry => 'Pays';

  @override
  String get swFilterInstitutionType => 'Type d\'etablissement';

  @override
  String get swFilterMinimumRating => 'Note minimale';

  @override
  String get swFilterDuration => 'Duree (semaines)';

  @override
  String get swFilterSpecialOptions => 'Options speciales';

  @override
  String get swFilterOnlineOnly => 'En ligne uniquement';

  @override
  String get swFilterOnlineOnlySubtitle =>
      'Afficher uniquement les cours/programmes en ligne';

  @override
  String get swFilterFinancialAid => 'Aide financiere disponible';

  @override
  String get swFilterFinancialAidSubtitle =>
      'Afficher uniquement les elements avec aide financiere';

  @override
  String get swFilterApply => 'Appliquer les filtres';

  @override
  String get swFilterClearAll => 'Tout effacer';

  @override
  String swFilterStarsPlus(double rating) {
    return '$rating+ etoiles';
  }

  @override
  String swFilterWeeks(int count) {
    return '$count semaines';
  }

  @override
  String get swSearchHint => 'Rechercher...';

  @override
  String get swSearchAll => 'Tous';

  @override
  String get swSearchRecentSearches => 'Recherches recentes';

  @override
  String get swSearchClear => 'Effacer';

  @override
  String get swSearchSuggestions => 'Suggestions';

  @override
  String get swSortByTitle => 'Trier par';

  @override
  String get swSortLabel => 'Trier';

  @override
  String get swSortFilterLabel => 'Filtrer';

  @override
  String get swSortRelevance => 'Pertinence';

  @override
  String get swSortMostPopular => 'Plus populaires';

  @override
  String get swSortHighestRated => 'Mieux notes';

  @override
  String get swSortNewestFirst => 'Plus recents';

  @override
  String get swSortOldestFirst => 'Plus anciens';

  @override
  String get swSortPriceLowToHigh => 'Prix : croissant';

  @override
  String get swSortPriceHighToLow => 'Prix : decroissant';

  @override
  String get swSortNameAZ => 'Nom : A a Z';

  @override
  String get swSortNameZA => 'Nom : Z a A';

  @override
  String get swSortDurationShortest => 'Duree : plus courte';

  @override
  String get swSortDurationLongest => 'Duree : plus longue';

  @override
  String get swStatusPending => 'En attente';

  @override
  String get swStatusApproved => 'Approuve';

  @override
  String get swStatusRejected => 'Rejete';

  @override
  String get swStatusInProgress => 'En cours';

  @override
  String get swStatusCompleted => 'Termine';

  @override
  String swRefreshLastUpdated(String timeAgo) {
    return 'Derniere mise a jour : $timeAgo';
  }

  @override
  String get swRefreshJustNow => 'a l\'instant';

  @override
  String swRefreshSecondsAgo(int count) {
    return 'Il y a $count s';
  }

  @override
  String swRefreshMinutesAgo(int count) {
    return 'Il y a $count min';
  }

  @override
  String swRefreshHoursAgo(int count) {
    return 'Il y a $count h';
  }

  @override
  String get swRefreshYesterday => 'hier';

  @override
  String swRefreshDaysAgo(int count) {
    return 'Il y a $count j';
  }

  @override
  String get swRefreshSuccess => 'Tableau de bord actualise avec succes';

  @override
  String get swRefreshFailed => 'Echec de l\'actualisation du tableau de bord';

  @override
  String get swFileUploadDropHere => 'Deposez les fichiers ici';

  @override
  String get swFileUploadClickToSelect =>
      'Cliquez pour selectionner des fichiers ou glissez-deposez';

  @override
  String swFileUploadTooLarge(String fileName, int maxSize) {
    return '$fileName est trop volumineux. La taille maximale est de $maxSize Mo';
  }

  @override
  String swFileUploadInvalidType(String fileName, String allowedTypes) {
    return '$fileName a un type de fichier invalide. Autorises : $allowedTypes';
  }

  @override
  String swFileUploadPickFailed(String error) {
    return 'Echec de la selection des fichiers : $error';
  }

  @override
  String swFileUploadProgress(int percent) {
    return '$percent % telecharge';
  }

  @override
  String get swFileUploadLabel => 'Telecharger un fichier';

  @override
  String swFileUploadPickImageFailed(String error) {
    return 'Echec de la selection de l\'image : $error';
  }

  @override
  String get swFileUploadTapToSelect => 'Appuyez pour selectionner une image';

  @override
  String get swFileUploadImageFormats => 'JPG, PNG, GIF (max 5 Mo)';

  @override
  String swFileUploadAllowed(String formats) {
    return 'Autorises : $formats';
  }

  @override
  String swFileUploadMaxSize(int size) {
    return 'Max $size Mo';
  }

  @override
  String swDocViewerLoading(String name) {
    return 'Chargement de $name...';
  }

  @override
  String get swDocViewerFailedToLoad => 'Echec du chargement du document';

  @override
  String swDocViewerLoadError(String error) {
    return 'Echec du chargement du document : $error';
  }

  @override
  String get swDocViewerRetry => 'Reessayer';

  @override
  String get swDocViewerPinchToZoom => 'Pincez pour zoomer';

  @override
  String get swDocViewerPreviewNotAvailable => 'Apercu non disponible';

  @override
  String swDocViewerCannotPreview(String extension) {
    return 'Ce type de fichier ($extension) ne peut pas etre previsualise';
  }

  @override
  String swDocViewerDownloading(String name) {
    return 'Telechargement de $name...';
  }

  @override
  String get swDocViewerDownloadToView => 'Telecharger pour voir';

  @override
  String get swDocViewerPdfViewer => 'Visionneuse PDF';

  @override
  String get swDocViewerPdfEnableMessage =>
      'Pour activer la visualisation PDF, ajoutez l\'un de ces packages au pubspec.yaml :';

  @override
  String get swDocViewerPdfOptionCommercial => 'Complet, commercial';

  @override
  String get swDocViewerPdfOptionOpenSource => 'Open source, rendu natif';

  @override
  String get swDocViewerPdfOptionModern => 'Moderne, bonnes performances';

  @override
  String swDocViewerPageOf(int current, int total) {
    return 'Page $current sur $total';
  }

  @override
  String get swDocViewerFailedToLoadImage => 'Echec du chargement de l\'image';

  @override
  String get swScheduleHighPriority => 'Haute';

  @override
  String get swScheduleNow => 'En cours';

  @override
  String get swScheduleCompleted => 'Terminé';

  @override
  String get swScheduleMarkComplete => 'Marquer comme terminé';

  @override
  String get swScheduleToday => 'Aujourd\'hui';

  @override
  String get swScheduleTomorrow => 'Demain';

  @override
  String get swScheduleYesterday => 'Hier';

  @override
  String get swScheduleMonthJan => 'Janv';

  @override
  String get swScheduleMonthFeb => 'Févr';

  @override
  String get swScheduleMonthMar => 'Mars';

  @override
  String get swScheduleMonthApr => 'Avr';

  @override
  String get swScheduleMonthMay => 'Mai';

  @override
  String get swScheduleMonthJun => 'Juin';

  @override
  String get swScheduleMonthJul => 'Juil';

  @override
  String get swScheduleMonthAug => 'Août';

  @override
  String get swScheduleMonthSep => 'Sept';

  @override
  String get swScheduleMonthOct => 'Oct';

  @override
  String get swScheduleMonthNov => 'Nov';

  @override
  String get swScheduleMonthDec => 'Déc';

  @override
  String get swScheduleNoEvents => 'Aucun événement prévu';

  @override
  String get swScheduleAddEvent => 'Ajouter un événement';

  @override
  String get swSettingsThemeLight => 'Clair';

  @override
  String get swSettingsThemeLightSubtitle => 'Interface lumineuse et épurée';

  @override
  String get swSettingsThemeDark => 'Sombre';

  @override
  String get swSettingsThemeDarkSubtitle => 'Confortable en faible luminosité';

  @override
  String get swSettingsThemeSystem => 'Système';

  @override
  String get swSettingsThemeSystemSubtitle =>
      'Suivre les paramètres de l\'appareil';

  @override
  String get swSettingsTotalDataUsage => 'Utilisation totale des données';

  @override
  String get swSettingsDangerZone => 'Zone de danger';

  @override
  String get swSettingsVersion => 'Version';

  @override
  String get swSettingsFlowPlatform => 'Plateforme Navia';

  @override
  String get swSettingsCopyright => '© 2025 Tous droits réservés';

  @override
  String get swTaskToday => 'Aujourd\'hui';

  @override
  String get swTaskTomorrow => 'Demain';

  @override
  String get swTaskYesterday => 'Hier';

  @override
  String swTaskDaysAgo(String count) {
    return 'Il y a $count jours';
  }

  @override
  String swTaskInDays(String count) {
    return 'Dans $count jours';
  }

  @override
  String get swTaskOverdue => 'En retard';

  @override
  String get swTaskMonthJan => 'Janv';

  @override
  String get swTaskMonthFeb => 'Févr';

  @override
  String get swTaskMonthMar => 'Mars';

  @override
  String get swTaskMonthApr => 'Avr';

  @override
  String get swTaskMonthMay => 'Mai';

  @override
  String get swTaskMonthJun => 'Juin';

  @override
  String get swTaskMonthJul => 'Juil';

  @override
  String get swTaskMonthAug => 'Août';

  @override
  String get swTaskMonthSep => 'Sept';

  @override
  String get swTaskMonthOct => 'Oct';

  @override
  String get swTaskMonthNov => 'Nov';

  @override
  String get swTaskMonthDec => 'Déc';

  @override
  String get swTaskNoTasks => 'Aucune tâche pour le moment';

  @override
  String get swTaskAddTask => 'Ajouter une tâche';

  @override
  String get swUserProfileEditProfile => 'Modifier le profil';

  @override
  String get swUserProfileSettings => 'Paramètres';

  @override
  String get swUserProfileJustNow => 'À l\'instant';

  @override
  String swUserProfileMinutesAgo(String count) {
    return 'Il y a $count min';
  }

  @override
  String swUserProfileHoursAgo(String count) {
    return 'Il y a $count h';
  }

  @override
  String swUserProfileDaysAgo(String count) {
    return 'Il y a $count j';
  }

  @override
  String get swUserProfileMonthJan => 'Janv';

  @override
  String get swUserProfileMonthFeb => 'Févr';

  @override
  String get swUserProfileMonthMar => 'Mars';

  @override
  String get swUserProfileMonthApr => 'Avr';

  @override
  String get swUserProfileMonthMay => 'Mai';

  @override
  String get swUserProfileMonthJun => 'Juin';

  @override
  String get swUserProfileMonthJul => 'Juil';

  @override
  String get swUserProfileMonthAug => 'Août';

  @override
  String get swUserProfileMonthSep => 'Sept';

  @override
  String get swUserProfileMonthOct => 'Oct';

  @override
  String get swUserProfileMonthNov => 'Nov';

  @override
  String get swUserProfileMonthDec => 'Déc';

  @override
  String get swUserProfileGetStarted => 'Commencer';

  @override
  String get swVideoCompleted => 'Terminé';

  @override
  String get swVideoInProgress => 'En cours';

  @override
  String get swVideoLike => 'J\'aime';

  @override
  String get swVideoDownloaded => 'Téléchargé';

  @override
  String get swVideoDownload => 'Télécharger';

  @override
  String swVideoViewsMillions(String count) {
    return '${count}M de vues';
  }

  @override
  String swVideoViewsThousands(String count) {
    return '${count}K de vues';
  }

  @override
  String swVideoViewsCount(String count) {
    return '$count vues';
  }

  @override
  String swVideoPercentWatched(String percent) {
    return '$percent% regardé';
  }

  @override
  String swVideoPlaylistCompleted(String completed, String total) {
    return '$completed/$total terminé(s)';
  }

  @override
  String get swVideoNoVideos => 'Aucune vidéo disponible';

  @override
  String get swVideoBrowseVideos => 'Parcourir les vidéos';

  @override
  String get swStatsCurrent => 'Actuel';

  @override
  String get connectionStatusLive => 'En direct';

  @override
  String get connectionStatusConnecting => 'Connexion...';

  @override
  String get connectionStatusConnectingShort => 'Connexion';

  @override
  String get connectionStatusOffline => 'Hors ligne';

  @override
  String get connectionStatusError => 'Erreur';

  @override
  String get connectionStatusTooltipConnected =>
      'Les mises à jour en temps réel sont actives';

  @override
  String get connectionStatusTooltipConnecting =>
      'Établissement de la connexion en temps réel...';

  @override
  String get connectionStatusTooltipDisconnected =>
      'Les mises à jour en temps réel ne sont pas disponibles. Les données seront actualisées périodiquement.';

  @override
  String get connectionStatusTooltipError =>
      'Erreur de connexion. Veuillez vérifier votre connexion Internet.';

  @override
  String get loadingIndicatorDefault => 'Chargement...';

  @override
  String messageBadgeUnread(String count) {
    return '$count messages non lus';
  }

  @override
  String get messageBadgeMessages => 'Messages';

  @override
  String notificationBadgeUnread(String count) {
    return '$count notifications non lues';
  }

  @override
  String get notificationBadgeNotifications => 'Notifications';

  @override
  String typingIndicatorOneUser(String user) {
    return '$user est en train d\'écrire';
  }

  @override
  String typingIndicatorTwoUsers(String user1, String user2) {
    return '$user1 et $user2 sont en train d\'écrire';
  }

  @override
  String typingIndicatorMultipleUsers(
    String user1,
    String user2,
    String count,
  ) {
    return '$user1, $user2 et $count autres sont en train d\'écrire';
  }

  @override
  String get lessonEditorEdit => 'Modifier';

  @override
  String get lessonEditorSaveLesson => 'Enregistrer la leçon';

  @override
  String get lessonEditorBasicInfo => 'Informations de base';

  @override
  String get lessonEditorLessonTitle => 'Titre de la leçon *';

  @override
  String get lessonEditorLessonTitleHelper =>
      'Donnez à votre leçon un titre clair et descriptif';

  @override
  String get lessonEditorLessonTitleError =>
      'Veuillez saisir un titre de leçon';

  @override
  String get lessonEditorDescription => 'Description';

  @override
  String get lessonEditorDescriptionHelper =>
      'Fournissez un bref aperçu de cette leçon';

  @override
  String get lessonEditorDuration => 'Durée (minutes)';

  @override
  String get lessonEditorMandatory => 'Obligatoire';

  @override
  String get lessonEditorMandatorySubtitle =>
      'Les étudiants doivent compléter cette leçon';

  @override
  String get lessonEditorPublished => 'Publié';

  @override
  String get lessonEditorPublishedSubtitle => 'Visible par les étudiants';

  @override
  String get lessonEditorLessonContent => 'Contenu de la leçon';

  @override
  String get lessonEditorSaveSuccess => 'Leçon enregistrée avec succès';

  @override
  String get lessonEditorSaveError =>
      'Erreur lors de l\'enregistrement de la leçon';

  @override
  String get lessonEditorVideoSavePending =>
      'Le contenu vidéo sera enregistré (intégration API en attente)';

  @override
  String get lessonEditorTextSavePending =>
      'Le contenu texte sera enregistré (intégration API en attente)';

  @override
  String get lessonEditorQuizSavePending =>
      'Le contenu du quiz sera enregistré (intégration API en attente)';

  @override
  String get lessonEditorAssignmentSavePending =>
      'Le contenu du devoir sera enregistré (intégration API en attente)';

  @override
  String get adminApprovalConfiguration => 'Configuration des approbations';

  @override
  String get adminApprovalRefresh => 'Actualiser';

  @override
  String get adminApprovalFailedToLoadConfigurations =>
      'Impossible de charger les configurations';

  @override
  String get adminApprovalRetry => 'Reessayer';

  @override
  String get adminApprovalNoConfigurationsFound =>
      'Aucune configuration trouvee';

  @override
  String get adminApprovalEditConfiguration => 'Modifier la configuration';

  @override
  String get adminApprovalType => 'Type';

  @override
  String get adminApprovalApprovalLevel => 'Niveau d\'approbation';

  @override
  String get adminApprovalPriority => 'Priorite';

  @override
  String get adminApprovalExpires => 'Expire';

  @override
  String get adminApprovalAutoExecute => 'Execution auto';

  @override
  String get adminApprovalYes => 'Oui';

  @override
  String get adminApprovalNo => 'Non';

  @override
  String get adminApprovalMfaRequired => 'MFA requis';

  @override
  String get adminApprovalSkipLevels => 'Sauter les niveaux';

  @override
  String get adminApprovalAllowed => 'Autorise';

  @override
  String get adminApprovalInitiatorRoles => 'Roles initiateurs';

  @override
  String get adminApprovalApproverRoles => 'Roles approbateurs';

  @override
  String get adminApprovalNotifications => 'Notifications';

  @override
  String get adminApprovalConfigurationUpdated => 'Configuration mise a jour';

  @override
  String get adminApprovalFailedToUpdateConfiguration =>
      'Impossible de mettre a jour la configuration';

  @override
  String get adminApprovalEdit => 'Modifier';

  @override
  String get adminApprovalDescription => 'Description';

  @override
  String get adminApprovalDescribeWorkflow => 'Decrivez ce flux d\'approbation';

  @override
  String get adminApprovalDefaultPriority => 'Priorite par defaut';

  @override
  String get adminApprovalPriorityLow => 'Basse';

  @override
  String get adminApprovalPriorityNormal => 'Normale';

  @override
  String get adminApprovalPriorityHigh => 'Haute';

  @override
  String get adminApprovalPriorityUrgent => 'Urgente';

  @override
  String get adminApprovalExpirationHours => 'Expiration (heures)';

  @override
  String get adminApprovalLeaveEmptyNoExpiration =>
      'Laisser vide pour pas d\'expiration';

  @override
  String get adminApprovalSettings => 'Parametres';

  @override
  String get adminApprovalActive => 'Actif';

  @override
  String get adminApprovalEnableDisableWorkflow =>
      'Activer ou desactiver ce flux';

  @override
  String get adminApprovalAutoExecuteTitle => 'Execution auto';

  @override
  String get adminApprovalAutoExecuteSubtitle =>
      'Executer automatiquement l\'action apres l\'approbation finale';

  @override
  String get adminApprovalRequireMfa => 'Exiger le MFA';

  @override
  String get adminApprovalRequireMfaSubtitle =>
      'Exiger l\'authentification multi-facteurs pour l\'approbation';

  @override
  String get adminApprovalAllowLevelSkipping => 'Autoriser le saut de niveau';

  @override
  String get adminApprovalAllowLevelSkippingSubtitle =>
      'Permettre aux admins de niveau superieur de sauter des niveaux';

  @override
  String get adminApprovalNotificationChannels => 'Canaux de notification';

  @override
  String get adminApprovalInApp => 'In-App';

  @override
  String get adminApprovalEmail => 'E-mail';

  @override
  String get adminApprovalPush => 'Push';

  @override
  String get adminApprovalSms => 'SMS';

  @override
  String get adminApprovalCancel => 'Annuler';

  @override
  String get adminApprovalSaveChanges => 'Enregistrer';

  @override
  String get adminApprovalStatusActive => 'Actif';

  @override
  String get adminApprovalStatusInactive => 'Inactif';

  @override
  String get adminApprovalWorkflow => 'Flux d\'approbation';

  @override
  String get adminApprovalViewAllRequests => 'Voir toutes les demandes';

  @override
  String get adminApprovalOverview => 'Vue d\'ensemble';

  @override
  String adminApprovalErrorLoadingStats(String error) {
    return 'Erreur de chargement des statistiques : $error';
  }

  @override
  String get adminApprovalYourPendingActions => 'Vos actions en attente';

  @override
  String adminApprovalErrorLoadingPending(String error) {
    return 'Erreur de chargement des actions en attente : $error';
  }

  @override
  String get adminApprovalQuickActions => 'Actions rapides';

  @override
  String get adminApprovalTotalRequests => 'Total des demandes';

  @override
  String get adminApprovalPendingReview => 'En attente de revision';

  @override
  String get adminApprovalUnderReview => 'En cours de revision';

  @override
  String get adminApprovalApproved => 'Approuve';

  @override
  String get adminApprovalDenied => 'Refuse';

  @override
  String get adminApprovalExecuted => 'Execute';

  @override
  String get adminApprovalAllCaughtUp => 'Tout est a jour !';

  @override
  String get adminApprovalNoPendingActions =>
      'Vous n\'avez aucune action en attente.';

  @override
  String get adminApprovalPendingReviews => 'Revisions en attente';

  @override
  String get adminApprovalAwaitingYourResponse => 'En attente de votre reponse';

  @override
  String get adminApprovalDelegatedToYou => 'Deleguees a vous';

  @override
  String get adminApprovalNewRequest => 'Nouvelle demande';

  @override
  String get adminApprovalAllRequests => 'Toutes les demandes';

  @override
  String get adminApprovalMyRequests => 'Mes demandes';

  @override
  String get adminApprovalConfigurationLabel => 'Configuration';

  @override
  String get adminApprovalRequest => 'Demande d\'approbation';

  @override
  String adminApprovalErrorWithMessage(String error) {
    return 'Erreur : $error';
  }

  @override
  String get adminApprovalRequestNotFound => 'Demande introuvable';

  @override
  String get adminApprovalDetails => 'Details';

  @override
  String get adminApprovalInitiatedBy => 'Initie par';

  @override
  String get adminApprovalRole => 'Role';

  @override
  String get adminApprovalRequestType => 'Type de demande';

  @override
  String get adminApprovalCreated => 'Cree le';

  @override
  String get adminApprovalExpiresLabel => 'Expire le';

  @override
  String get adminApprovalJustification => 'Justification';

  @override
  String get adminApprovalChain => 'Chaine d\'approbation';

  @override
  String get adminApprovalActions => 'Actions';

  @override
  String get adminApprovalNotesOptional => 'Notes (facultatif)';

  @override
  String get adminApprovalAddNotesHint =>
      'Ajoutez des notes pour votre action...';

  @override
  String get adminApprovalApprove => 'Approuver';

  @override
  String get adminApprovalDeny => 'Refuser';

  @override
  String get adminApprovalRequestInfo => 'Demander des infos';

  @override
  String get adminApprovalEscalate => 'Escalader';

  @override
  String get adminApprovalComments => 'Commentaires';

  @override
  String get adminApprovalAddCommentHint => 'Ajouter un commentaire...';

  @override
  String get adminApprovalNoCommentsYet => 'Aucun commentaire';

  @override
  String get adminApprovalStatusPending => 'En attente';

  @override
  String get adminApprovalEscalated => 'Esclade';

  @override
  String get adminApprovalLevelRegional => 'Regional';

  @override
  String get adminApprovalLevelSuper => 'Super';

  @override
  String get adminApprovalConfirmApproval => 'Confirmer l\'approbation';

  @override
  String get adminApprovalConfirmApproveMessage =>
      'Etes-vous sur de vouloir approuver cette demande ?';

  @override
  String get adminApprovalDenyRequest => 'Refuser la demande';

  @override
  String get adminApprovalProvideReasonDenial =>
      'Veuillez fournir une raison pour le refus :';

  @override
  String get adminApprovalReason => 'Raison';

  @override
  String get adminApprovalRequestInformation => 'Demande d\'information';

  @override
  String get adminApprovalWhatInfoNeeded =>
      'De quelles informations avez-vous besoin du demandeur ?';

  @override
  String get adminApprovalQuestion => 'Question';

  @override
  String get adminApprovalSend => 'Envoyer';

  @override
  String get adminApprovalEscalateRequest => 'Escalader la demande';

  @override
  String get adminApprovalConfirmEscalateMessage =>
      'Etes-vous sur de vouloir escalader cette demande a un niveau superieur ?';

  @override
  String get adminApprovalEscalatedForReview =>
      'Escaladee pour revision superieure';

  @override
  String get adminApprovalRequests => 'Demandes d\'approbation';

  @override
  String get adminApprovalFilter => 'Filtrer';

  @override
  String get adminApprovalFiltersApplied => 'Filtres appliques';

  @override
  String get adminApprovalClear => 'Effacer';

  @override
  String adminApprovalRequestCount(int count) {
    return '$count demandes';
  }

  @override
  String get adminApprovalNoRequestsFound =>
      'Aucune demande d\'approbation trouvee';

  @override
  String get adminApprovalCreateNewRequest => 'Creer une nouvelle demande';

  @override
  String get adminApprovalCreateRequest => 'Creer une demande d\'approbation';

  @override
  String get adminApprovalCategory => 'Categorie';

  @override
  String get adminApprovalAction => 'Action';

  @override
  String get adminApprovalTargetResource => 'Ressource cible';

  @override
  String get adminApprovalResourceType => 'Type de ressource';

  @override
  String get adminApprovalResourceIdOptional => 'ID de ressource (facultatif)';

  @override
  String get adminApprovalEnterResourceId =>
      'Entrez l\'ID de la ressource cible';

  @override
  String get adminApprovalJustificationDescription =>
      'Veuillez fournir une justification detaillee pour cette demande.';

  @override
  String get adminApprovalJustificationHint =>
      'Expliquez pourquoi cette action est necessaire et son impact attendu...';

  @override
  String get adminApprovalPleaseProvideJustification =>
      'Veuillez fournir une justification';

  @override
  String get adminApprovalJustificationMinLength =>
      'La justification doit comporter au moins 20 caracteres';

  @override
  String get adminApprovalSubmitRequest => 'Soumettre la demande';

  @override
  String get adminApprovalRequestSubmittedSuccess =>
      'Demande d\'approbation soumise avec succes';

  @override
  String get adminApprovalApply => 'Appliquer';

  @override
  String get adminApprovalFilterRequests => 'Filtrer les demandes';

  @override
  String get adminApprovalSearch => 'Rechercher';

  @override
  String get adminApprovalSearchHint =>
      'Rechercher par numero de demande ou justification';

  @override
  String get adminApprovalStatus => 'Statut';

  @override
  String get adminApprovalClearAll => 'Tout effacer';

  @override
  String get adminApprovalUnknown => 'Inconnu';

  @override
  String get adminApprovalExpired => 'Expire';

  @override
  String adminApprovalExpiresInDays(int days) {
    return 'Expire dans ${days}j';
  }

  @override
  String adminApprovalExpiresInHours(int hours) {
    return 'Expire dans ${hours}h';
  }

  @override
  String adminApprovalExpiresInMinutes(int minutes) {
    return 'Expire dans ${minutes}m';
  }

  @override
  String get adminApprovalStatusDraft => 'Brouillon';

  @override
  String get adminApprovalStatusUnderReview => 'En cours de revision';

  @override
  String get adminApprovalStatusInfoNeeded => 'Infos requises';

  @override
  String get adminApprovalStatusEscalated => 'Escalade';

  @override
  String get adminApprovalStatusApprovedLabel => 'Approuve';

  @override
  String get adminApprovalStatusDeniedLabel => 'Refuse';

  @override
  String get adminApprovalStatusWithdrawn => 'Retire';

  @override
  String get adminApprovalStatusExpired => 'Expire';

  @override
  String get adminApprovalStatusExecuted => 'Execute';

  @override
  String get adminApprovalStatusFailed => 'Echoue';

  @override
  String get adminApprovalStatusReviewing => 'En revision';

  @override
  String get adminApprovalNoItems => 'Aucun element';

  @override
  String adminApprovalViewAllItems(int count) {
    return 'Voir les $count elements';
  }

  @override
  String adminApprovalByName(String name) {
    return 'Par : $name';
  }

  @override
  String get adminApprovalTypeUserManagement => 'Gestion des utilisateurs';

  @override
  String get adminApprovalTypeContent => 'Contenu';

  @override
  String get adminApprovalTypeFinancial => 'Financier';

  @override
  String get adminApprovalTypeSystem => 'Systeme';

  @override
  String get adminApprovalTypeNotifications => 'Notifications';

  @override
  String get adminApprovalTypeDataExport => 'Export de donnees';

  @override
  String get adminApprovalTypeAdminManagement => 'Gestion des administrateurs';

  @override
  String get adminApprovalActionCreateUser => 'Creer un utilisateur';

  @override
  String get adminApprovalActionDeleteUserAccount =>
      'Supprimer un compte utilisateur';

  @override
  String get adminApprovalActionSuspendUserAccount =>
      'Suspendre un compte utilisateur';

  @override
  String get adminApprovalActionUnsuspendUserAccount =>
      'Reactiver un compte utilisateur';

  @override
  String get adminApprovalActionGrantAdminRole =>
      'Accorder un role administrateur';

  @override
  String get adminApprovalActionRevokeAdminRole =>
      'Revoquer un role administrateur';

  @override
  String get adminApprovalActionModifyUserPermissions =>
      'Modifier les permissions utilisateur';

  @override
  String get adminApprovalActionPublishContent => 'Publier du contenu';

  @override
  String get adminApprovalActionUnpublishContent => 'Depublier du contenu';

  @override
  String get adminApprovalActionDeleteContent => 'Supprimer du contenu';

  @override
  String get adminApprovalActionDeleteProgram => 'Supprimer un programme';

  @override
  String get adminApprovalActionDeleteInstitutionContent =>
      'Supprimer le contenu d\'une institution';

  @override
  String get adminApprovalActionProcessLargeRefund =>
      'Traiter un remboursement important';

  @override
  String get adminApprovalActionModifyFeeStructure =>
      'Modifier la structure tarifaire';

  @override
  String get adminApprovalActionVoidTransaction => 'Annuler une transaction';

  @override
  String get adminApprovalActionSendBulkNotification =>
      'Envoyer une notification en masse';

  @override
  String get adminApprovalActionSendPlatformAnnouncement =>
      'Envoyer une annonce plateforme';

  @override
  String get adminApprovalActionExportSensitiveData =>
      'Exporter des donnees sensibles';

  @override
  String get adminApprovalActionExportUserData =>
      'Exporter des donnees utilisateur';

  @override
  String get adminApprovalActionModifySystemSettings =>
      'Modifier les parametres systeme';

  @override
  String get adminApprovalActionClearCache => 'Vider le cache';

  @override
  String get adminApprovalActionCreateAdmin => 'Creer un administrateur';

  @override
  String get adminApprovalActionModifyAdmin => 'Modifier un administrateur';

  @override
  String get adminContentAssessmentsManagement => 'Gestion des evaluations';

  @override
  String get adminContentManageQuizzesAndAssignments =>
      'Gerer les quiz et devoirs de tous les cours';

  @override
  String get adminContentRefresh => 'Actualiser';

  @override
  String get adminContentCreateAssessment => 'Creer une evaluation';

  @override
  String get adminContentCreateNewAssessment => 'Creer une nouvelle evaluation';

  @override
  String get adminContentAssessmentTypeRequired => 'Type d\'evaluation *';

  @override
  String get adminContentQuiz => 'Quiz';

  @override
  String get adminContentAssignment => 'Devoir';

  @override
  String get adminContentCourseRequired => 'Cours *';

  @override
  String get adminContentLoadingCourses => 'Chargement des cours...';

  @override
  String get adminContentSelectACourse => 'Selectionner un cours';

  @override
  String get adminContentModuleRequired => 'Module *';

  @override
  String get adminContentLoadingModules => 'Chargement des modules...';

  @override
  String get adminContentSelectACourseFirst => 'Selectionner d\'abord un cours';

  @override
  String get adminContentNoModulesInCourse => 'Aucun module dans ce cours';

  @override
  String get adminContentSelectAModule => 'Selectionner un module';

  @override
  String get adminContentLessonTitleRequired => 'Titre de la lecon *';

  @override
  String get adminContentEnterLessonTitle => 'Entrez le titre de la lecon';

  @override
  String get adminContentTitleRequired => 'Titre *';

  @override
  String get adminContentEnterTitle => 'Entrez le titre';

  @override
  String get adminContentPassingScorePercent => 'Note de passage (%)';

  @override
  String get adminContentInstructionsRequired => 'Instructions *';

  @override
  String get adminContentEnterAssignmentInstructions =>
      'Entrez les instructions du devoir';

  @override
  String get adminContentPointsPossible => 'Points possibles';

  @override
  String get adminContentQuizDraftNotice =>
      'Le quiz sera cree en brouillon. Ajoutez des questions dans le constructeur de cours.';

  @override
  String get adminContentAssignmentDraftNotice =>
      'Le devoir sera cree en brouillon. Configurez les details dans le constructeur de cours.';

  @override
  String get adminContentCancel => 'Annuler';

  @override
  String get adminContentPleaseSelectCourseAndModule =>
      'Veuillez selectionner un cours et un module';

  @override
  String get adminContentPleaseFillRequiredFields =>
      'Veuillez remplir tous les champs obligatoires';

  @override
  String get adminContentPleaseEnterInstructions =>
      'Veuillez entrer les instructions du devoir';

  @override
  String adminContentAssessmentCreated(String type) {
    return '$type cree(e)';
  }

  @override
  String get adminContentFailedToCreateAssessment =>
      'Impossible de creer l\'evaluation';

  @override
  String get adminContentCreate => 'Creer';

  @override
  String get adminContentTotalAssessments => 'Total des evaluations';

  @override
  String get adminContentAllAssessments => 'Toutes les evaluations';

  @override
  String get adminContentQuizzes => 'Quiz';

  @override
  String get adminContentAutoGraded => 'Correction auto';

  @override
  String get adminContentAssignments => 'Devoirs';

  @override
  String get adminContentManualGrading => 'Correction manuelle';

  @override
  String get adminContentPendingGrading => 'Correction en attente';

  @override
  String get adminContentAwaitingReview => 'En attente de revision';

  @override
  String get adminContentSearchAssessments =>
      'Rechercher des evaluations par titre...';

  @override
  String get adminContentAssessmentType => 'Type d\'evaluation';

  @override
  String get adminContentAllTypes => 'Tous les types';

  @override
  String get adminContentTitleLabel => 'Titre';

  @override
  String get adminContentTypeLabel => 'Type';

  @override
  String get adminContentCourseLabel => 'Cours';

  @override
  String get adminContentQuestionsSubmissions => 'Questions / Soumissions';

  @override
  String adminContentQuestionsAttempts(int questions, int attempts) {
    return '$questions questions ($attempts tentatives)';
  }

  @override
  String adminContentSubmissionsGraded(int submissions, int graded) {
    return '$submissions soumissions ($graded corrigees)';
  }

  @override
  String get adminContentScoreGrade => 'Score / Note';

  @override
  String adminContentPassRate(String rate) {
    return '$rate% reussite';
  }

  @override
  String adminContentAvgGrade(String grade) {
    return '$grade% moy.';
  }

  @override
  String get adminContentUpdated => 'Mis a jour';

  @override
  String get adminContentViewStats => 'Voir les stats';

  @override
  String get adminContentEditInCourseBuilder => 'Modifier dans le constructeur';

  @override
  String get adminContentQuestions => 'Questions';

  @override
  String get adminContentAttempts => 'Tentatives';

  @override
  String get adminContentAverageScore => 'Score moyen';

  @override
  String get adminContentPassRateLabel => 'Taux de reussite';

  @override
  String get adminContentSubmissions => 'Soumissions';

  @override
  String get adminContentGraded => 'Corrigees';

  @override
  String get adminContentPending => 'En attente';

  @override
  String get adminContentAverageGrade => 'Note moyenne';

  @override
  String get adminContentDueDate => 'Date limite';

  @override
  String get adminContentLastUpdated => 'Derniere mise a jour';

  @override
  String get adminContentClose => 'Fermer';

  @override
  String get adminContentToday => 'Aujourd\'hui';

  @override
  String get adminContentYesterday => 'Hier';

  @override
  String adminContentDaysAgo(int days) {
    return 'Il y a $days jours';
  }

  @override
  String adminContentWeeksAgo(int weeks) {
    return 'Il y a $weeks semaines';
  }

  @override
  String adminContentMonthsAgo(int months) {
    return 'Il y a $months mois';
  }

  @override
  String adminContentYearsAgo(int years) {
    return 'Il y a $years ans';
  }

  @override
  String get adminContentManagement => 'Gestion du contenu';

  @override
  String get adminContentManageVideoCourses =>
      'Gerer les cours video et tutoriels';

  @override
  String get adminContentManageTextMaterials =>
      'Gerer les supports d\'apprentissage textuels';

  @override
  String get adminContentManageInteractive =>
      'Gerer le contenu d\'apprentissage interactif';

  @override
  String get adminContentManageLiveSessions =>
      'Gerer les sessions en direct et webinaires';

  @override
  String get adminContentManageHybrid =>
      'Gerer les experiences d\'apprentissage hybrides';

  @override
  String get adminContentManageEducational =>
      'Gerer le contenu educatif, les cours et les programmes';

  @override
  String get adminContentExportComingSoon =>
      'Fonctionnalite d\'exportation bientot disponible';

  @override
  String get adminContentExport => 'Exporter';

  @override
  String get adminContentCreateContent => 'Creer du contenu';

  @override
  String get adminContentCreateNewContent => 'Creer un nouveau contenu';

  @override
  String get adminContentEnterContentTitle => 'Entrez le titre du contenu';

  @override
  String get adminContentDescription => 'Description';

  @override
  String get adminContentEnterDescription => 'Entrez la description du contenu';

  @override
  String get adminContentDraftNotice =>
      'Le contenu sera cree en brouillon. Vous pourrez le modifier et le publier plus tard.';

  @override
  String get adminContentPleaseEnterTitle => 'Veuillez entrer un titre';

  @override
  String get adminContentCurriculumManagement => 'Gestion du programme';

  @override
  String get adminContentManageModulesAndLessons =>
      'Gerer les modules et lecons de tous les cours';

  @override
  String get adminContentCreateModule => 'Creer un module';

  @override
  String get adminContentCreateNewModule => 'Creer un nouveau module';

  @override
  String get adminContentResourcesManagement => 'Gestion des ressources';

  @override
  String get adminContentManageVideoAndText =>
      'Gerer le contenu video et texte de tous les cours';

  @override
  String get adminContentCreateResource => 'Creer une ressource';

  @override
  String get adminContentCreateNewResource => 'Creer une nouvelle ressource';

  @override
  String get adminContentPageContentManagement =>
      'Gestion du contenu des pages';

  @override
  String get adminContentManageFooterPages =>
      'Gerer le contenu des pages du pied de page (A propos, Confidentialite, Conditions, etc.)';

  @override
  String get adminContentErrorLoadingPages => 'Erreur de chargement des pages';

  @override
  String get adminContentRetry => 'Reessayer';

  @override
  String get adminContentNoPagesFound => 'Aucune page trouvee';

  @override
  String get adminContentRunMigration =>
      'Executez la migration de base de donnees pour initialiser le contenu des pages.';

  @override
  String get adminContentAtLeastOneSection =>
      'Au moins une section est requise';

  @override
  String get adminContentRemoveSection => 'Supprimer la section';

  @override
  String get adminContentConfirmRemoveSection =>
      'Etes-vous sur de vouloir supprimer cette section ?';

  @override
  String get adminContentRemove => 'Supprimer';

  @override
  String get adminContentInvalidJson =>
      'JSON invalide dans le champ de contenu';

  @override
  String get adminContentPageSavedSuccessfully =>
      'Page enregistree avec succes';

  @override
  String get adminContentFailedToSavePage =>
      'Impossible d\'enregistrer la page';

  @override
  String get adminContentPagePublishedSuccessfully =>
      'Page publiee avec succes';

  @override
  String get adminContentFailedToPublishPage => 'Impossible de publier la page';

  @override
  String get adminContentPageUnpublished => 'Page depubliee';

  @override
  String get adminContentFailedToUnpublishPage =>
      'Impossible de depublier la page';

  @override
  String get adminContentUnsavedChanges => 'Modifications non enregistrees';

  @override
  String get adminContentDiscardChanges =>
      'Vous avez des modifications non enregistrees. Voulez-vous les abandonner ?';

  @override
  String get adminContentDiscard => 'Abandonner';

  @override
  String get adminContentStartTyping =>
      'Commencez a saisir votre contenu ici...';

  @override
  String get adminContentSupportsMarkdown =>
      'Prend en charge le formatage Markdown';

  @override
  String adminContentCharacterCount(int count) {
    return '$count caracteres';
  }

  @override
  String adminContentSectionIndex(int index) {
    return 'Section $index';
  }

  @override
  String get adminContentSectionTitle => 'Titre de la section';

  @override
  String get adminContentEnterSectionTitle => 'Entrez le titre de la section';

  @override
  String get adminContentSectionContent => 'Contenu de la section';

  @override
  String get adminContentEnterSectionContent =>
      'Entrez le contenu de la section...';

  @override
  String get swAchievementToday => 'Aujourd\'hui';

  @override
  String get swAchievementYesterday => 'Hier';

  @override
  String swAchievementDaysAgo(int count) {
    return 'il y a $count jours';
  }

  @override
  String swAchievementWeeksAgo(int count) {
    return 'il y a $count semaines';
  }

  @override
  String get swAchievementYou => 'Vous';

  @override
  String get swAchievementPoints => 'points';

  @override
  String get swChartNoDataAvailable => 'Aucune donnée disponible';

  @override
  String get swCollabPublic => 'Public';

  @override
  String swCollabMembersCount(int current, int max) {
    return '$current/$max membres';
  }

  @override
  String swCollabOnlineCount(int count) {
    return '$count en ligne';
  }

  @override
  String get swCollabGroupFull => 'Groupe complet';

  @override
  String get swCollabJoinGroup => 'Rejoindre le groupe';

  @override
  String get swCollabNoGroupsYet => 'Aucun groupe pour le moment';

  @override
  String get swCollabCreateGroup => 'Créer un groupe';

  @override
  String swExamQuestionsCount(int count) {
    return '$count Questions';
  }

  @override
  String swExamMarksCount(int count) {
    return '$count Points';
  }

  @override
  String swExamScoreDisplay(int score, int total) {
    return '$score/$total';
  }

  @override
  String get swExamStartExam => 'Commencer l\'examen';

  @override
  String get swExamToday => 'Aujourd\'hui';

  @override
  String get swExamTomorrow => 'Demain';

  @override
  String swExamDaysCount(int count) {
    return '$count jours';
  }

  @override
  String get swExamWriteAnswerHint => 'Écrivez votre réponse ici...';

  @override
  String get swExamEnterAnswerHint => 'Entrez votre réponse...';

  @override
  String get swExamExplanation => 'Explication';

  @override
  String get swFocusFocusMode => 'Mode Concentration';

  @override
  String get swFocusPaused => 'En pause';

  @override
  String get swFocusThisWeek => 'Cette semaine';

  @override
  String swHelpSupportArticlesCount(int count) {
    return '$count articles';
  }

  @override
  String swHelpSupportViewsCount(int count) {
    return '$count vues';
  }

  @override
  String swHelpSupportHelpfulCount(int count) {
    return '$count ont trouvé utile';
  }

  @override
  String get swHelpSupportWasThisHelpful => 'Cela vous a-t-il été utile ?';

  @override
  String get swHelpSupportYes => 'Oui';

  @override
  String get swHelpSupportToday => 'Aujourd\'hui';

  @override
  String get swHelpSupportYesterday => 'Hier';

  @override
  String swHelpSupportDaysAgo(int count) {
    return 'il y a $count jours';
  }

  @override
  String get swHelpSupportJustNow => 'À l\'instant';

  @override
  String swHelpSupportMinutesAgo(int count) {
    return 'il y a ${count}m';
  }

  @override
  String swHelpSupportHoursAgo(int count) {
    return 'il y a ${count}h';
  }

  @override
  String swHelpSupportDaysShortAgo(int count) {
    return 'il y a ${count}j';
  }

  @override
  String swInvoiceNumber(String number) {
    return 'Facture #$number';
  }

  @override
  String swInvoiceIssued(String date) {
    return 'Émise le : $date';
  }

  @override
  String swInvoiceDue(String date) {
    return 'Échéance : $date';
  }

  @override
  String get swInvoiceBillTo => 'FACTURER À';

  @override
  String get swInvoiceDescription => 'DESCRIPTION';

  @override
  String get swInvoiceQty => 'QTÉ';

  @override
  String get swInvoiceRate => 'TARIF';

  @override
  String get swInvoiceAmount => 'MONTANT';

  @override
  String get swInvoiceSubtotal => 'Sous-total';

  @override
  String get swInvoiceDiscount => 'Remise';

  @override
  String get swInvoiceTax => 'Taxe';

  @override
  String get swInvoiceTotal => 'TOTAL';

  @override
  String get swInvoiceTransactionId => 'ID de transaction';

  @override
  String get swInvoiceDownloadReceipt => 'Télécharger le reçu';

  @override
  String get swJobCareerPostedToday => 'Publié aujourd\'hui';

  @override
  String get swJobCareerPostedYesterday => 'Publié hier';

  @override
  String swJobCareerPostedDaysAgo(int count) {
    return 'Publié il y a $count jours';
  }

  @override
  String get swJobCareerRemote => 'À distance';

  @override
  String swJobCareerApplyBy(String date) {
    return 'Postuler avant le $date';
  }

  @override
  String get swJobCareerExpired => 'Expiré';

  @override
  String get swJobCareerToday => 'Aujourd\'hui';

  @override
  String get swJobCareerTomorrow => 'Demain';

  @override
  String swJobCareerInDays(int count) {
    return 'dans $count jours';
  }

  @override
  String get swJobCareerAvailable => 'Disponible';

  @override
  String swJobCareerSessionsCount(int count) {
    return '$count séances';
  }

  @override
  String get swJobCareerBookSession => 'Réserver une séance';

  @override
  String swJobCareerApplied(String time) {
    return 'Postulé $time';
  }

  @override
  String swJobCareerUpdated(String time) {
    return 'Mis à jour $time';
  }

  @override
  String swJobCareerDaysAgo(int count) {
    return 'il y a ${count}j';
  }

  @override
  String swJobCareerHoursAgo(int count) {
    return 'il y a ${count}h';
  }

  @override
  String swJobCareerMinutesAgo(int count) {
    return 'il y a ${count}m';
  }

  @override
  String get swJobCareerJustNow => 'À l\'instant';

  @override
  String swJobCareerViewsCount(int count) {
    return '$count vues';
  }

  @override
  String get swMessageNoMessagesYet => 'Aucun message pour le moment';

  @override
  String get swMessageTypeMessage => 'Tapez un message...';

  @override
  String get swMessageToday => 'Aujourd\'hui';

  @override
  String get swMessageYesterday => 'Hier';

  @override
  String get swNoteEdit => 'Modifier';

  @override
  String get swNoteUnpin => 'Désépingler';

  @override
  String get swNotePin => 'Épingler';

  @override
  String get swNoteDelete => 'Supprimer';

  @override
  String get swNoteJustNow => 'À l\'instant';

  @override
  String swNoteMinutesAgo(int count) {
    return 'il y a ${count}m';
  }

  @override
  String swNoteHoursAgo(int count) {
    return 'il y a ${count}h';
  }

  @override
  String swNoteDaysAgo(int count) {
    return 'il y a ${count}j';
  }

  @override
  String swNoteNotesCount(int count) {
    return '$count notes';
  }

  @override
  String get swNoteNoNotesYet => 'Aucune note pour le moment';

  @override
  String get swNoteStartTakingNotes =>
      'Commencez à prendre des notes pour retenir les informations importantes';

  @override
  String get swNoteCreateNote => 'Créer une note';

  @override
  String get swNoteSearchNotes => 'Rechercher des notes...';

  @override
  String swOnboardingStepOf(int current, int total) {
    return 'Étape $current sur $total';
  }

  @override
  String get swOnboardingSkipTutorial => 'Passer le tutoriel';

  @override
  String get swOnboardingNext => 'Suivant';

  @override
  String get swOnboardingFinish => 'Terminer';

  @override
  String get swPaymentPending => 'En attente';

  @override
  String get swPaymentProcessing => 'En cours';

  @override
  String get swPaymentCompleted => 'Terminé';

  @override
  String get swPaymentFailed => 'Échoué';

  @override
  String get swPaymentRefunded => 'Remboursé';

  @override
  String get swPaymentCancelled => 'Annulé';

  @override
  String get swPaymentDefault => 'Par défaut';

  @override
  String get swPaymentCard => 'Carte';

  @override
  String get swPaymentBankAccount => 'Compte bancaire';

  @override
  String get swPaymentPaypalAccount => 'Compte PayPal';

  @override
  String get swPaymentStripePayment => 'Paiement Stripe';

  @override
  String get swPaymentRemoveMethod => 'Supprimer le moyen de paiement';

  @override
  String get swPaymentToday => 'Aujourd\'hui';

  @override
  String get swPaymentYesterday => 'Hier';

  @override
  String swPaymentDaysAgo(int count) {
    return 'il y a $count jours';
  }

  @override
  String get swPaymentCardNumber => 'Numéro de carte';

  @override
  String get swPaymentExpiryDate => 'Date d\'expiration';

  @override
  String get swPaymentCvv => 'CVV';

  @override
  String swQuizQuestionOf(int current, int total) {
    return 'Question $current sur $total';
  }

  @override
  String swQuizPointsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'pts',
      one: 'pt',
    );
    return '$count $_temp0';
  }

  @override
  String get swQuizTypeAnswerHint => 'Tapez votre réponse ici...';

  @override
  String get swQuizExplanation => 'Explication';

  @override
  String get swQuizCongratulations => 'Félicitations !';

  @override
  String get swQuizKeepPracticing => 'Continuez à vous entraîner !';

  @override
  String get swQuizYouScored => 'Vous avez obtenu';

  @override
  String swQuizScoreOutOf(int score, int total) {
    return '$score sur $total points';
  }

  @override
  String swQuizQuestionsCount(int count) {
    return '$count questions';
  }

  @override
  String swQuizDurationMin(int count) {
    return '$count min';
  }

  @override
  String swQuizAttemptsCount(int used, int max) {
    return '$used/$max tentatives';
  }

  @override
  String swQuizBestScore(String score) {
    return 'Meilleur score : $score%';
  }

  @override
  String get swResourceRemoveBookmark => 'Retirer le signet';

  @override
  String get swResourceBookmark => 'Ajouter un signet';

  @override
  String get swResourceDownloaded => 'Téléchargé';

  @override
  String get swResourceDownload => 'Télécharger';

  @override
  String get swResourceNoResourcesAvailable => 'Aucune ressource disponible';

  @override
  String get swResourceWillAppearHere =>
      'Les ressources apparaîtront ici lorsqu\'elles seront disponibles';

  @override
  String get swResourceDownloading => 'Téléchargement';

  @override
  String swProgressLessonsCount(int completed, int total) {
    return '$completed/$total leçons';
  }

  @override
  String swProgressUnlocked(String date) {
    return 'Débloqué $date';
  }

  @override
  String get swProgressToday => 'Aujourd\'hui';

  @override
  String get swProgressYesterday => 'Hier';

  @override
  String swProgressDaysAgo(int count) {
    return 'il y a $count jours';
  }

  @override
  String get swProgressCompleted => 'Terminé';

  @override
  String get swProgressOverdue => 'En retard';

  @override
  String swProgressDaysLeft(int count) {
    return '$count jours restants';
  }

  @override
  String get swProgressDayStreak => 'jours consécutifs';

  @override
  String swProgressLongestStreak(int count) {
    return 'Record : $count jours';
  }

  @override
  String get adminAnalytics30DayActiveChange =>
      'Changement d\'activité sur 30 jours';

  @override
  String get adminAnalyticsActive30d => 'Actifs (30j)';

  @override
  String get adminAnalyticsActiveApplications => 'Candidatures actives';

  @override
  String get adminAnalyticsActiveChange => 'Changement d\'activité';

  @override
  String get adminAnalyticsActiveLast30Days => 'Actifs ces 30 derniers jours';

  @override
  String get adminAnalyticsActiveUsers => 'Utilisateurs actifs';

  @override
  String get adminAnalyticsActiveUsers30d => 'Utilisateurs actifs (30j)';

  @override
  String get adminAnalyticsAllRegisteredUsers =>
      'Tous les utilisateurs inscrits';

  @override
  String get adminAnalyticsAllTime => 'Tout le temps';

  @override
  String get adminAnalyticsApplicationAnalytics => 'Analyse des candidatures';

  @override
  String get adminAnalyticsApplications => 'Candidatures';

  @override
  String get adminAnalyticsApplicationSubmissions =>
      'Soumissions de candidatures';

  @override
  String get adminAnalyticsApproved => 'Approuvé';

  @override
  String get adminAnalyticsApps7d => 'Candidatures (7j)';

  @override
  String get adminAnalyticsAppTrendData =>
      'Données de tendance des candidatures';

  @override
  String get adminAnalyticsAverageTime => 'Temps moyen';

  @override
  String get adminAnalyticsAverageValue => 'Valeur moyenne';

  @override
  String get adminAnalyticsAvgCompletion => 'Taux de complétion moyen';

  @override
  String get adminAnalyticsAvgTransaction => 'Transaction moyenne';

  @override
  String get adminAnalyticsAwaitingReview => 'En attente de révision';

  @override
  String get adminAnalyticsBounceRate => 'Taux de rebond';

  @override
  String get adminAnalyticsByUserType => 'Par type d\'utilisateur';

  @override
  String get adminAnalyticsClose => 'Fermer';

  @override
  String get adminAnalyticsContent => 'Contenu';

  @override
  String get adminAnalyticsContentAnalytics => 'Analyse du contenu';

  @override
  String get adminAnalyticsContentCompletionRate =>
      'Taux de complétion du contenu';

  @override
  String get adminAnalyticsContentEngagement => 'Engagement du contenu';

  @override
  String get adminAnalyticsContentEngagementData =>
      'Données d\'engagement du contenu';

  @override
  String get adminAnalyticsCounselors => 'Conseillers';

  @override
  String get adminAnalyticsCourses => 'Cours';

  @override
  String get adminAnalyticsCsv => 'CSV';

  @override
  String get adminAnalyticsCsvDesc => 'Télécharger en tant que fichier CSV';

  @override
  String get adminAnalyticsCustomDashboards => 'Tableaux de bord personnalisés';

  @override
  String get adminAnalyticsDailyActiveUserData =>
      'Données des utilisateurs actifs quotidiens';

  @override
  String get adminAnalyticsDailyActiveUsers => 'Utilisateurs actifs quotidiens';

  @override
  String get adminAnalyticsDashboardSubtitle =>
      'Voir les métriques et analyses de la plateforme';

  @override
  String get adminAnalyticsDataExplorer => 'Explorateur de données';

  @override
  String get adminAnalyticsDataExplorerSubtitle =>
      'Requêter et analyser les données brutes';

  @override
  String get adminAnalyticsDataExports => 'Exportations de données';

  @override
  String get adminAnalyticsDataExportsSubtitle =>
      'Télécharger les rapports et données';

  @override
  String get adminAnalyticsDistributionByRole => 'Distribution par rôle';

  @override
  String get adminAnalyticsEngagement => 'Engagement';

  @override
  String get adminAnalyticsEngagementLabel => 'Engagement';

  @override
  String get adminAnalyticsExcel => 'Excel';

  @override
  String get adminAnalyticsExcelDesc =>
      'Télécharger en tant que classeur Excel';

  @override
  String get adminAnalyticsExportReport => 'Exporter le rapport';

  @override
  String get adminAnalyticsExportTitle => 'Exporter les analyses';

  @override
  String get adminAnalyticsFinancial => 'Financier';

  @override
  String get adminAnalyticsFinancialAnalytics => 'Analyses financières';

  @override
  String get adminAnalyticsInstitutions => 'Établissements';

  @override
  String get adminAnalyticsKpi => 'KPI';

  @override
  String get adminAnalyticsLast30Days => '30 derniers jours';

  @override
  String get adminAnalyticsLast7Days => '7 derniers jours';

  @override
  String get adminAnalyticsLast7DaysShort => '7 derniers j';

  @override
  String get adminAnalyticsLast90Days => '90 derniers jours';

  @override
  String get adminAnalyticsMonthToDate => 'Depuis le début du mois';

  @override
  String get adminAnalyticsMostViewedItems => 'Éléments les plus consultés';

  @override
  String get adminAnalyticsNew7d => 'Nouveaux (7j)';

  @override
  String get adminAnalyticsNewAppsOverTime =>
      'Nouvelles candidatures dans le temps';

  @override
  String get adminAnalyticsNewExport => 'Nouvelle exportation';

  @override
  String get adminAnalyticsNewRegOverTime =>
      'Nouvelles inscriptions dans le temps';

  @override
  String get adminAnalyticsNewSignUpsOverTime =>
      'Nouvelles inscriptions dans le temps';

  @override
  String get adminAnalyticsNewUsers => 'Nouveaux utilisateurs';

  @override
  String get adminAnalyticsNewUsersThisWeek =>
      'Nouveaux utilisateurs cette semaine';

  @override
  String get adminAnalyticsNoDataAvailable => 'Aucune donnée disponible';

  @override
  String get adminAnalyticsNoMatchingRows =>
      'Aucune ligne correspondante trouvée';

  @override
  String get adminAnalyticsNoRecentActivity => 'Aucune activité récente';

  @override
  String get adminAnalyticsNoRoleDistData =>
      'Aucune donnée de distribution par rôle disponible';

  @override
  String get adminAnalyticsNoUserGrowthData =>
      'Aucune donnée de croissance des utilisateurs disponible';

  @override
  String get adminAnalyticsNoWidgets => 'Aucun widget configuré';

  @override
  String get adminAnalyticsOverview => 'Vue d\'ensemble';

  @override
  String get adminAnalyticsPageViews => 'Pages vues';

  @override
  String get adminAnalyticsPdf => 'PDF';

  @override
  String get adminAnalyticsPdfDesc => 'Télécharger en tant que document PDF';

  @override
  String get adminAnalyticsPending => 'En attente';

  @override
  String get adminAnalyticsPlatformEngagement => 'Engagement sur la plateforme';

  @override
  String get adminAnalyticsPlatformUptime => 'Disponibilité de la plateforme';

  @override
  String get adminAnalyticsPopularContent => 'Contenu populaire';

  @override
  String get adminAnalyticsPrograms => 'Programmes';

  @override
  String get adminAnalyticsPublishedItems => 'Éléments publiés';

  @override
  String get adminAnalyticsQuickStats => 'Statistiques rapides';

  @override
  String get adminAnalyticsRecentApplications => 'Candidatures récentes';

  @override
  String get adminAnalyticsRecommenders => 'Recommandataires';

  @override
  String get adminAnalyticsRefreshAll => 'Tout actualiser';

  @override
  String get adminAnalyticsRefreshData => 'Actualiser les données';

  @override
  String get adminAnalyticsRegionalDataNotAvailable =>
      'Données régionales non disponibles';

  @override
  String get adminAnalyticsRegionalDistribution => 'Distribution régionale';

  @override
  String get adminAnalyticsRejected => 'Rejeté';

  @override
  String get adminAnalyticsRevenueBreakdown => 'Répartition des revenus';

  @override
  String get adminAnalyticsRevenueMtd => 'Revenus du mois';

  @override
  String get adminAnalyticsRevenueTrend => 'Tendance des revenus';

  @override
  String get adminAnalyticsRevenueTrendData =>
      'Données de tendance des revenus';

  @override
  String get adminAnalyticsSearchColumns => 'Rechercher des colonnes...';

  @override
  String get adminAnalyticsSelectDataSource =>
      'Sélectionner la source de données';

  @override
  String get adminAnalyticsSelectFormat => 'Sélectionner le format';

  @override
  String get adminAnalyticsSessionDuration => 'Durée de session';

  @override
  String get adminAnalyticsSinglePageVisits => 'Visites d\'une seule page';

  @override
  String get adminAnalyticsStudents => 'Étudiants';

  @override
  String get adminAnalyticsSubtitle =>
      'Analyses et informations de la plateforme';

  @override
  String get adminAnalyticsSuccessRate => 'Taux de réussite';

  @override
  String get adminAnalyticsThisMonth => 'Ce mois-ci';

  @override
  String get adminAnalyticsThisYear => 'Cette année';

  @override
  String get adminAnalyticsTitle => 'Tableau de bord analytique';

  @override
  String get adminAnalyticsToggleWidgets => 'Afficher/Masquer les widgets';

  @override
  String get adminAnalyticsTotalApproved => 'Total approuvé';

  @override
  String get adminAnalyticsTotalContent => 'Contenu total';

  @override
  String get adminAnalyticsTotalCounselors => 'Total des conseillers';

  @override
  String get adminAnalyticsTotalInstitutions => 'Total des établissements';

  @override
  String get adminAnalyticsTotalInteractions => 'Total des interactions';

  @override
  String get adminAnalyticsTotalRecommenders => 'Total des recommandataires';

  @override
  String get adminAnalyticsTotalRejected => 'Total rejeté';

  @override
  String get adminAnalyticsTotalRevenue => 'Revenus totaux';

  @override
  String get adminAnalyticsTotalStudents => 'Total des étudiants';

  @override
  String get adminAnalyticsTotalTransactions => 'Total des transactions';

  @override
  String get adminAnalyticsTotalUsers => 'Total des utilisateurs';

  @override
  String get adminAnalyticsTotalViews => 'Total des vues';

  @override
  String get adminAnalyticsTransactions => 'Transactions';

  @override
  String get adminAnalyticsTransactionSuccess => 'Succès des transactions';

  @override
  String get adminAnalyticsTrends => 'Tendances';

  @override
  String get adminAnalyticsUniversities => 'Universités';

  @override
  String get adminAnalyticsUserActivityOverTime =>
      'Activité des utilisateurs dans le temps';

  @override
  String get adminAnalyticsUserAnalytics => 'Analyse des utilisateurs';

  @override
  String get adminAnalyticsUserDistribution => 'Distribution des utilisateurs';

  @override
  String get adminAnalyticsUserGrowth => 'Croissance des utilisateurs';

  @override
  String get adminAnalyticsUserGrowthVsPrevious =>
      'Croissance des utilisateurs vs période précédente';

  @override
  String get adminAnalyticsUserInteractionsOverTime =>
      'Interactions des utilisateurs dans le temps';

  @override
  String get adminAnalyticsUserRegistrations => 'Inscriptions des utilisateurs';

  @override
  String get adminAnalyticsUsers => 'Utilisateurs';

  @override
  String get adminAnalyticsUsersByRegion => 'Utilisateurs par région';

  @override
  String get adminAnalyticsUserTypes => 'Types d\'utilisateurs';

  @override
  String get adminAnalyticsVsLastPeriod => 'vs période précédente';

  @override
  String get adminAnalyticsWidgets => 'Widgets';

  @override
  String get adminChatArchive => 'Archiver';

  @override
  String get adminChatCancel => 'Annuler';

  @override
  String get adminChatCannedClosingLabel => 'Clôture';

  @override
  String get adminChatCannedClosingText =>
      'Merci de nous avoir contactés. Bonne journée !';

  @override
  String get adminChatCannedEscalatingLabel => 'Escalade';

  @override
  String get adminChatCannedEscalatingText =>
      'Je vais transférer cela à un spécialiste qui pourra mieux vous aider.';

  @override
  String get adminChatCannedFollowUpLabel => 'Suivi';

  @override
  String get adminChatCannedFollowUpText =>
      'Y a-t-il autre chose avec laquelle je peux vous aider ?';

  @override
  String get adminChatCannedGreetingLabel => 'Salutation';

  @override
  String get adminChatCannedGreetingText =>
      'Bonjour ! Comment puis-je vous aider aujourd\'hui ?';

  @override
  String get adminChatCannedMoreInfoLabel => 'Plus d\'infos';

  @override
  String get adminChatCannedMoreInfoText =>
      'Pourriez-vous fournir plus de détails sur votre problème ?';

  @override
  String get adminChatCannedResolutionLabel => 'Résolution';

  @override
  String get adminChatCannedResolutionText =>
      'Votre problème a été résolu. N\'hésitez pas à me contacter si vous avez besoin d\'aide supplémentaire.';

  @override
  String get adminChatConvDetailsTitle => 'Détails de la conversation';

  @override
  String get adminChatConvHistorySubtitle =>
      'Voir les conversations et messages passés';

  @override
  String get adminChatConvHistoryTitle => 'Historique des conversations';

  @override
  String get adminChatConvNotFound => 'Conversation non trouvée';

  @override
  String get adminChatDelete => 'Supprimer';

  @override
  String get adminChatDeleteConvConfirm =>
      'Êtes-vous sûr de vouloir supprimer cette conversation ? Cette action est irréversible.';

  @override
  String get adminChatDeleteConvTitle => 'Supprimer la conversation';

  @override
  String get adminChatFaqActivate => 'Activer';

  @override
  String get adminChatFaqAdd => 'Ajouter une FAQ';

  @override
  String get adminChatFaqAllCategories => 'Toutes les catégories';

  @override
  String get adminChatFaqAnswer => 'Réponse';

  @override
  String get adminChatFaqAnswerHint => 'Entrez la réponse à cette question';

  @override
  String get adminChatFaqAnswerRequired => 'La réponse est requise';

  @override
  String get adminChatFaqCategory => 'Catégorie';

  @override
  String get adminChatFaqCreate => 'Créer une FAQ';

  @override
  String get adminChatFaqCreated => 'FAQ créée avec succès';

  @override
  String get adminChatFaqCreateFirst => 'Créez votre première entrée FAQ';

  @override
  String get adminChatFaqCreateTitle => 'Créer une entrée FAQ';

  @override
  String get adminChatFaqDeactivate => 'Désactiver';

  @override
  String get adminChatFaqDeleted => 'FAQ supprimée avec succès';

  @override
  String get adminChatFaqDeleteTitle => 'Supprimer la FAQ';

  @override
  String get adminChatFaqEdit => 'Modifier';

  @override
  String get adminChatFaqEditTitle => 'Modifier l\'entrée FAQ';

  @override
  String get adminChatFaqHelpful => 'Utile';

  @override
  String get adminChatFaqInactive => 'Inactif';

  @override
  String get adminChatFaqKeywords => 'Mots-clés';

  @override
  String get adminChatFaqKeywordsHelper =>
      'Les mots-clés aident le chatbot à trouver cette FAQ';

  @override
  String get adminChatFaqKeywordsHint =>
      'Entrez les mots-clés séparés par des virgules';

  @override
  String get adminChatFaqLoadMore => 'Charger plus';

  @override
  String get adminChatFaqNoFaqs => 'Aucune FAQ trouvée';

  @override
  String get adminChatFaqNotHelpful => 'Pas utile';

  @override
  String get adminChatFaqPriority => 'Priorité';

  @override
  String get adminChatFaqQuestion => 'Question';

  @override
  String get adminChatFaqQuestionHint => 'Entrez la question';

  @override
  String get adminChatFaqQuestionRequired => 'La question est requise';

  @override
  String get adminChatFaqSearch => 'Rechercher des FAQ...';

  @override
  String get adminChatFaqShowInactive => 'Afficher les inactifs';

  @override
  String get adminChatFaqSubtitle => 'Gérer les entrées FAQ pour le chatbot';

  @override
  String get adminChatFaqTitle => 'Gestion des FAQ';

  @override
  String get adminChatFaqUpdate => 'Mettre à jour la FAQ';

  @override
  String get adminChatFaqUpdated => 'FAQ mise à jour avec succès';

  @override
  String get adminChatFaqUses => 'Utilisations';

  @override
  String get adminChatFilter => 'Filtrer';

  @override
  String get adminChatFilterAll => 'Tous';

  @override
  String get adminChatFlag => 'Signaler';

  @override
  String get adminChatLiveActiveFiveMin => 'Actif ces 5 dernières minutes';

  @override
  String get adminChatLiveAutoRefresh => 'Actualisation auto';

  @override
  String get adminChatLiveLive => 'EN DIRECT';

  @override
  String get adminChatLiveLoadFailed =>
      'Échec du chargement des chats en direct';

  @override
  String get adminChatLiveNoActive => 'Aucun chat actif en ce moment';

  @override
  String get adminChatLivePaused => 'En pause';

  @override
  String get adminChatLiveSubtitle =>
      'Surveiller les sessions de chat actives en temps réel';

  @override
  String get adminChatLiveTitle => 'Moniteur de chat en direct';

  @override
  String get adminChatNoConversations => 'Aucune conversation trouvée';

  @override
  String get adminChatQueueAllPriorities => 'Toutes les priorités';

  @override
  String get adminChatQueueAllStatus => 'Tous les statuts';

  @override
  String get adminChatQueueAssigned => 'Assigné';

  @override
  String get adminChatQueueAssignedToYou => 'Assigné à vous';

  @override
  String get adminChatQueueAssignToMe => 'M\'assigner';

  @override
  String get adminChatQueueEscalatedHint =>
      'Cette conversation a été escaladée';

  @override
  String get adminChatQueueHigh => 'Haute';

  @override
  String get adminChatQueueInProgress => 'En cours';

  @override
  String get adminChatQueueLoadFailed =>
      'Échec du chargement de la file d\'attente';

  @override
  String get adminChatQueueLow => 'Basse';

  @override
  String get adminChatQueueNoItems => 'Aucun élément dans la file d\'attente';

  @override
  String get adminChatQueueNormal => 'Normale';

  @override
  String get adminChatQueueOpen => 'Ouvert';

  @override
  String get adminChatQueuePending => 'En attente';

  @override
  String get adminChatQueueReasonAutoEscalation =>
      'Escalade automatique due au temps d\'attente';

  @override
  String get adminChatQueueReasonLowConfidence =>
      'Réponse IA à faible confiance';

  @override
  String get adminChatQueueReasonNegativeFeedback =>
      'Retour négatif de l\'utilisateur';

  @override
  String get adminChatQueueReasonUserRequest =>
      'L\'utilisateur a demandé un support humain';

  @override
  String get adminChatQueueStatus => 'Statut';

  @override
  String get adminChatQueueSubtitle =>
      'Gérer les conversations escaladées nécessitant attention';

  @override
  String get adminChatQueueTitle => 'File d\'attente du support';

  @override
  String get adminChatQueueUrgent => 'Urgente';

  @override
  String get adminChatQuickReplies => 'Réponses rapides';

  @override
  String get adminChatRefresh => 'Actualiser';

  @override
  String get adminChatRefreshNow => 'Actualiser maintenant';

  @override
  String get adminChatReplyHint => 'Tapez votre réponse...';

  @override
  String get adminChatReplySentResolved =>
      'Réponse envoyée et conversation résolue';

  @override
  String get adminChatRestore => 'Restaurer';

  @override
  String get adminChatRetry => 'Réessayer';

  @override
  String get adminChatSearchConversations => 'Rechercher des conversations...';

  @override
  String get adminChatSendAndResolve => 'Envoyer et résoudre';

  @override
  String get adminChatSendReply => 'Envoyer la réponse';

  @override
  String get adminChatStatusActive => 'Actif';

  @override
  String get adminChatStatusArchived => 'Archivé';

  @override
  String get adminChatStatusEscalated => 'Escaladé';

  @override
  String get adminChatStatusFlagged => 'Signalé';

  @override
  String get adminChatSupportAgent => 'Agent de support';

  @override
  String get adminChatUnknownUser => 'Utilisateur inconnu';

  @override
  String get adminFinanceActionCannotBeUndone =>
      'Cette action est irréversible';

  @override
  String get adminFinanceAll => 'Tous';

  @override
  String get adminFinanceAllCompletedPayments => 'Tous les paiements complétés';

  @override
  String get adminFinanceAllLevels => 'Tous les niveaux';

  @override
  String get adminFinanceAllRefundTransactions =>
      'Toutes les transactions de remboursement';

  @override
  String get adminFinanceAllStatus => 'Tous les statuts';

  @override
  String get adminFinanceAllTime => 'Tout le temps';

  @override
  String get adminFinanceAllTransactionsNormal =>
      'Toutes les transactions semblent normales';

  @override
  String get adminFinanceAllTypes => 'Tous les types';

  @override
  String get adminFinanceAlreadyReviewed => 'Déjà examiné';

  @override
  String get adminFinanceAmount => 'Montant';

  @override
  String get adminFinanceAvgSettlement => 'Règlement moyen';

  @override
  String get adminFinanceAwaitingProcessing => 'En attente de traitement';

  @override
  String get adminFinanceCancel => 'Annuler';

  @override
  String get adminFinanceChooseTransaction => 'Choisir une transaction';

  @override
  String get adminFinanceClose => 'Fermer';

  @override
  String get adminFinanceCompleted => 'Complété';

  @override
  String get adminFinanceConfirmRefund => 'Confirmer le remboursement';

  @override
  String get adminFinanceCritical => 'Critique';

  @override
  String get adminFinanceCriticalHighRisk => 'Critique/Risque élevé';

  @override
  String get adminFinanceCurrency => 'Devise';

  @override
  String get adminFinanceDate => 'Date';

  @override
  String get adminFinanceDateRange => 'Plage de dates';

  @override
  String get adminFinanceDescription => 'Description';

  @override
  String get adminFinanceDownloadReceipt => 'Télécharger le reçu';

  @override
  String get adminFinanceEligible => 'Éligible';

  @override
  String get adminFinanceExportReport => 'Exporter le rapport';

  @override
  String get adminFinanceFailed => 'Échoué';

  @override
  String get adminFinanceFlaggedTransactions => 'Transactions signalées';

  @override
  String get adminFinanceFraudDetectionSubtitle =>
      'Surveiller les activités suspectes et les transactions signalées';

  @override
  String get adminFinanceFraudDetectionTitle => 'Détection de fraude';

  @override
  String get adminFinanceHigh => 'Élevé';

  @override
  String get adminFinanceHighRisk => 'Risque élevé';

  @override
  String get adminFinanceItemType => 'Type d\'élément';

  @override
  String get adminFinanceLast30Days => '30 derniers jours';

  @override
  String get adminFinanceLast7Days => '7 derniers jours';

  @override
  String get adminFinanceLow => 'Faible';

  @override
  String get adminFinanceMarkReviewed => 'Marquer comme examiné';

  @override
  String get adminFinanceMedium => 'Moyen';

  @override
  String get adminFinanceNewRefund => 'Nouveau remboursement';

  @override
  String get adminFinanceNoEligibleTransactions =>
      'Aucune transaction éligible au remboursement';

  @override
  String get adminFinanceNoMatchingAlerts =>
      'Aucune alerte correspondante trouvée';

  @override
  String get adminFinanceNoSettlementsFound => 'Aucun règlement trouvé';

  @override
  String get adminFinanceNoSuspiciousActivity =>
      'Aucune activité suspecte détectée';

  @override
  String get adminFinanceOriginalTxn => 'Transaction originale';

  @override
  String get adminFinancePayment => 'Paiement';

  @override
  String get adminFinancePaymentsEligibleForRefund =>
      'Paiements éligibles au remboursement';

  @override
  String get adminFinancePending => 'En attente';

  @override
  String get adminFinancePendingReview => 'En attente d\'examen';

  @override
  String get adminFinancePendingSettlement => 'Règlement en attente';

  @override
  String get adminFinanceProcessing => 'En traitement';

  @override
  String get adminFinanceProcessNewRefund => 'Traiter un nouveau remboursement';

  @override
  String get adminFinanceProcessRefund => 'Traiter le remboursement';

  @override
  String get adminFinanceReason => 'Raison';

  @override
  String get adminFinanceReasonForRefund => 'Raison du remboursement';

  @override
  String get adminFinanceRefresh => 'Actualiser';

  @override
  String get adminFinanceRefreshTransactions => 'Actualiser les transactions';

  @override
  String get adminFinanceRefund => 'Remboursement';

  @override
  String get adminFinanceRefundDetails => 'Détails du remboursement';

  @override
  String get adminFinanceRefunded => 'Remboursé';

  @override
  String get adminFinanceRefundedAmount => 'Montant remboursé';

  @override
  String get adminFinanceRefundFailed => 'Échec du remboursement';

  @override
  String get adminFinanceRefundId => 'ID du remboursement';

  @override
  String get adminFinanceRefundProcessedFail =>
      'Échec du traitement du remboursement';

  @override
  String get adminFinanceRefundProcessedSuccess =>
      'Remboursement traité avec succès';

  @override
  String get adminFinanceRefundsSubtitle =>
      'Traiter et gérer les remboursements clients';

  @override
  String get adminFinanceRefundsTitle => 'Remboursements';

  @override
  String get adminFinanceRefundSuccess => 'Remboursement réussi';

  @override
  String get adminFinanceRescanTransactions => 'Réanalyser les transactions';

  @override
  String get adminFinanceRetry => 'Réessayer';

  @override
  String get adminFinanceReviewed => 'Examiné';

  @override
  String get adminFinanceRiskLevel => 'Niveau de risque';

  @override
  String get adminFinanceSearchRefundsHint =>
      'Rechercher des remboursements...';

  @override
  String get adminFinanceSearchSettlementsHint =>
      'Rechercher des règlements...';

  @override
  String get adminFinanceSearchTransactionsHint =>
      'Rechercher des transactions...';

  @override
  String get adminFinanceSelectTransactionToRefund =>
      'Sélectionner une transaction à rembourser';

  @override
  String get adminFinanceSettled => 'Réglé';

  @override
  String get adminFinanceSettlement => 'Règlement';

  @override
  String get adminFinanceSettlementBatches => 'Lots de règlement';

  @override
  String get adminFinanceSettlementsSubtitle =>
      'Voir et gérer les règlements de paiement';

  @override
  String get adminFinanceSettlementsTitle => 'Règlements';

  @override
  String get adminFinanceShowReviewed => 'Afficher les examinés';

  @override
  String get adminFinanceStatus => 'Statut';

  @override
  String get adminFinanceSuccessful => 'Réussi';

  @override
  String get adminFinanceSuccessfullyRefunded => 'Remboursé avec succès';

  @override
  String get adminFinanceToday => 'Aujourd\'hui';

  @override
  String get adminFinanceTotalFlags => 'Total des signalements';

  @override
  String get adminFinanceTotalRefunds => 'Total des remboursements';

  @override
  String get adminFinanceTotalSettled => 'Total réglé';

  @override
  String get adminFinanceTotalVolume => 'Volume total';

  @override
  String get adminFinanceTransactionDetails => 'Détails de la transaction';

  @override
  String get adminFinanceTransactionId => 'ID de transaction';

  @override
  String get adminFinanceTransactionsSubtitle =>
      'Voir et gérer toutes les transactions financières';

  @override
  String get adminFinanceTransactionsTitle => 'Transactions';

  @override
  String get adminFinanceType => 'Type';

  @override
  String get adminFinanceUnreviewed => 'Non examiné';

  @override
  String get adminFinanceUser => 'Utilisateur';

  @override
  String get adminFinanceUserId => 'ID utilisateur';

  @override
  String get adminFinanceViewDetails => 'Voir les détails';

  @override
  String get adminFinanceYesterday => 'Hier';

  @override
  String get adminReportActivated => 'Activé';

  @override
  String get adminReportAllReports => 'Tous les rapports';

  @override
  String get adminReportBuilderHelpTitle => 'Aide du générateur de rapports';

  @override
  String get adminReportBuilderTitle => 'Générateur de rapports';

  @override
  String get adminReportCancel => 'Annuler';

  @override
  String get adminReportCreate => 'Créer un rapport';

  @override
  String get adminReportCreateAutomatedReports =>
      'Créer des rapports automatisés qui s\'exécutent selon un calendrier';

  @override
  String get adminReportCreateSchedule => 'Créer un calendrier';

  @override
  String get adminReportCsvDescription => 'Format tableur pour Excel';

  @override
  String get adminReportCsvSpreadsheet => 'Tableur CSV';

  @override
  String get adminReportDaily => 'Quotidien';

  @override
  String get adminReportDateRange => 'Plage de dates';

  @override
  String get adminReportDelete => 'Supprimer';

  @override
  String get adminReportDeleteScheduledReport =>
      'Supprimer le rapport programmé';

  @override
  String get adminReportDescriptionHint => 'Entrez la description du rapport';

  @override
  String get adminReportDescriptionOptional => 'Description (Facultatif)';

  @override
  String get adminReportEdit => 'Modifier';

  @override
  String get adminReportEditScheduledReport => 'Modifier le rapport programmé';

  @override
  String get adminReportEmailRecipients => 'Destinataires';

  @override
  String get adminReportEndDate => 'Date de fin';

  @override
  String get adminReportExportFormat => 'Format d\'exportation';

  @override
  String get adminReportFeature1 =>
      'Sélectionner les métriques et points de données';

  @override
  String get adminReportFeature2 => 'Choisir les plages de dates';

  @override
  String get adminReportFeature3 => 'Exporter dans plusieurs formats';

  @override
  String get adminReportFeature4 => 'Planifier des rapports automatisés';

  @override
  String get adminReportFeatures => 'Fonctionnalités';

  @override
  String get adminReportFrequency => 'Fréquence';

  @override
  String get adminReportGenerate => 'Générer';

  @override
  String get adminReportGeneratedSuccess => 'Rapport généré avec succès';

  @override
  String get adminReportGenerating => 'Génération en cours...';

  @override
  String get adminReportGenerationStarted => 'Génération du rapport démarrée';

  @override
  String get adminReportGotIt => 'Compris';

  @override
  String get adminReportHelp => 'Aide';

  @override
  String get adminReportHelpPresetsInfo =>
      'Utilisez les préréglages pour une génération rapide de rapports';

  @override
  String get adminReportHelpStep1 => 'Sélectionnez les métriques à inclure';

  @override
  String get adminReportHelpStep2 => 'Choisissez une plage de dates';

  @override
  String get adminReportHelpStep3 => 'Sélectionnez le format d\'exportation';

  @override
  String get adminReportHelpStep4 =>
      'Cliquez sur Générer pour créer le rapport';

  @override
  String get adminReportHelpStep5 => 'Téléchargez ou partagez le rapport';

  @override
  String get adminReportHowToUse => 'Comment utiliser';

  @override
  String get adminReportHowToUseScheduled =>
      'Comment utiliser les rapports programmés';

  @override
  String get adminReportInformation => 'Information';

  @override
  String get adminReportJsonData => 'Données JSON';

  @override
  String get adminReportJsonDescription =>
      'Format de données brutes pour les développeurs';

  @override
  String get adminReportLast30Days => '30 derniers jours';

  @override
  String get adminReportLast7Days => '7 derniers jours';

  @override
  String get adminReportLastMonth => 'Mois dernier';

  @override
  String get adminReportMetricAcceptanceRate => 'Taux d\'acceptation';

  @override
  String get adminReportMetricActiveSessions => 'Sessions actives';

  @override
  String get adminReportMetricConversion => 'Taux de conversion';

  @override
  String get adminReportMetricEngagement => 'Engagement';

  @override
  String get adminReportMetricNewRegistrations => 'Nouvelles inscriptions';

  @override
  String get adminReportMetricRevenue => 'Revenus';

  @override
  String get adminReportMetricTotalApplications => 'Total des candidatures';

  @override
  String get adminReportMetricTotalUsers => 'Total des utilisateurs';

  @override
  String get adminReportMonthly => 'Mensuel';

  @override
  String get adminReportNewSchedule => 'Nouveau calendrier';

  @override
  String get adminReportNewScheduledReport => 'Nouveau rapport programmé';

  @override
  String get adminReportNextRun => 'Prochaine exécution';

  @override
  String get adminReportNoScheduledReports => 'Aucun rapport programmé';

  @override
  String get adminReportPaused => 'En pause';

  @override
  String get adminReportPdfDescription => 'Document formaté pour l\'impression';

  @override
  String get adminReportPdfDocument => 'Document PDF';

  @override
  String get adminReportQuickPresets => 'Préréglages rapides';

  @override
  String get adminReportRecipientsRequired =>
      'Au moins un destinataire est requis';

  @override
  String get adminReportReportsSubtitle =>
      'Générer et télécharger des rapports';

  @override
  String get adminReportReportsTitle => 'Rapports';

  @override
  String get adminReportRunNow => 'Exécuter maintenant';

  @override
  String get adminReportSave => 'Enregistrer';

  @override
  String get adminReportScheduledCreated => 'Rapport programmé créé';

  @override
  String get adminReportScheduledReportDeleted => 'Rapport programmé supprimé';

  @override
  String get adminReportScheduledReports => 'Rapports programmés';

  @override
  String get adminReportScheduledReportsHelp => 'Aide des rapports programmés';

  @override
  String get adminReportScheduledStep1 => 'Créez un nouveau rapport programmé';

  @override
  String get adminReportScheduledStep2 =>
      'Sélectionnez la fréquence (quotidien, hebdomadaire, mensuel)';

  @override
  String get adminReportScheduledStep3 => 'Choisissez les métriques à inclure';

  @override
  String get adminReportScheduledStep4 => 'Ajoutez les destinataires';

  @override
  String get adminReportScheduledStep5 =>
      'Les rapports seront envoyés automatiquement';

  @override
  String get adminReportScheduledUpdated => 'Rapport programmé mis à jour';

  @override
  String get adminReportSelectAll => 'Tout sélectionner';

  @override
  String get adminReportSelectAtLeastOneMetric =>
      'Sélectionnez au moins une métrique';

  @override
  String get adminReportSelectMetrics => 'Sélectionner les métriques';

  @override
  String get adminReportStartDate => 'Date de début';

  @override
  String get adminReportThisMonth => 'Ce mois-ci';

  @override
  String get adminReportTitle => 'Titre du rapport';

  @override
  String get adminReportTitleHint => 'Entrez le titre du rapport';

  @override
  String get adminReportTitleRequired => 'Le titre est requis';

  @override
  String get adminReportTo => 'à';

  @override
  String get adminReportToday => 'Aujourd\'hui';

  @override
  String get adminReportTomorrow => 'Demain';

  @override
  String get adminReportWeekly => 'Hebdomadaire';

  @override
  String get adminSupportAcademic => 'Académique';

  @override
  String get adminSupportAccount => 'Compte';

  @override
  String get adminSupportActive => 'Actif';

  @override
  String get adminSupportAllCategories => 'Toutes les catégories';

  @override
  String get adminSupportAllStatus => 'Tous les statuts';

  @override
  String get adminSupportAnswer => 'Réponse';

  @override
  String get adminSupportBilling => 'Facturation';

  @override
  String get adminSupportCancel => 'Annuler';

  @override
  String get adminSupportCategory => 'Catégorie';

  @override
  String get adminSupportCreateAction => 'Créer';

  @override
  String get adminSupportCreateFaq => 'Créer une FAQ';

  @override
  String get adminSupportDelete => 'Supprimer';

  @override
  String get adminSupportDeleteFaq => 'Supprimer la FAQ';

  @override
  String get adminSupportDraftArticles => 'Articles brouillons';

  @override
  String get adminSupportEdit => 'Modifier';

  @override
  String get adminSupportEditFaq => 'Modifier la FAQ';

  @override
  String get adminSupportFaqCreated => 'FAQ créée avec succès';

  @override
  String get adminSupportFaqDeleted => 'FAQ supprimée avec succès';

  @override
  String get adminSupportFaqEntries => 'Entrées FAQ';

  @override
  String get adminSupportFaqUpdated => 'FAQ mise à jour avec succès';

  @override
  String get adminSupportGeneral => 'Général';

  @override
  String get adminSupportHelpful => 'Utile';

  @override
  String get adminSupportHighestHelpfulVotes => 'Plus de votes utiles';

  @override
  String get adminSupportInactive => 'Inactif';

  @override
  String get adminSupportKeywords => 'Mots-clés';

  @override
  String get adminSupportKnowledgeBase => 'Base de connaissances';

  @override
  String get adminSupportKnowledgeBaseSubtitle =>
      'Gérer les entrées FAQ et articles d\'aide';

  @override
  String get adminSupportMostHelpful => 'Plus utile';

  @override
  String get adminSupportNotHelpful => 'Pas utile';

  @override
  String get adminSupportPriority => 'Priorité';

  @override
  String get adminSupportPublishedArticles => 'Articles publiés';

  @override
  String get adminSupportQuestion => 'Question';

  @override
  String get adminSupportRefresh => 'Actualiser';

  @override
  String get adminSupportSearchFaqHint => 'Rechercher des FAQ...';

  @override
  String get adminSupportStatus => 'Statut';

  @override
  String get adminSupportTechnical => 'Technique';

  @override
  String get adminSupportToggleActive => 'Activer/Désactiver';

  @override
  String get adminSupportTotalArticles => 'Total des articles';

  @override
  String get adminSupportUpdate => 'Mettre à jour';

  @override
  String get adminSupportUses => 'Utilisations';

  @override
  String get adminUserAcademic => 'Académique';

  @override
  String get adminUserAcademicCounseling => 'Conseil académique';

  @override
  String get adminUserAccountActiveDesc =>
      'Le compte est actif et peut accéder à la plateforme';

  @override
  String get adminUserAccountInactiveDesc =>
      'Le compte est inactif et ne peut pas accéder à la plateforme';

  @override
  String get adminUserAccountSettings => 'Paramètres du compte';

  @override
  String get adminUserAccountStatus => 'Statut du compte';

  @override
  String get adminUserAccountUpdatedSuccess => 'Compte mis à jour avec succès';

  @override
  String get adminUserActivate => 'Activer';

  @override
  String get adminUserActivateCounselors => 'Activer les conseillers';

  @override
  String get adminUserActive => 'Actif';

  @override
  String get adminUserAddCounselor => 'Ajouter un conseiller';

  @override
  String get adminUserAddNewCounselor => 'Ajouter un nouveau conseiller';

  @override
  String get adminUserAdminColumn => 'Admin';

  @override
  String get adminUserAdminInformation => 'Informations administrateur';

  @override
  String get adminUserAdminRole => 'Rôle administrateur';

  @override
  String get adminUserAdmins => 'Admins';

  @override
  String get adminUserAdminUsers => 'Utilisateurs admin';

  @override
  String get adminUserAll => 'Tous';

  @override
  String get adminUserAllRoles => 'Tous les rôles';

  @override
  String get adminUserAllSpecialties => 'Toutes les spécialités';

  @override
  String get adminUserAllStatus => 'Tous les statuts';

  @override
  String get adminUserAnalyticsAdmin => 'Admin analytique';

  @override
  String get adminUserAvailability => 'Disponibilité';

  @override
  String get adminUserAvailabilityHint => 'Ex: Lun-Ven 9h-17h';

  @override
  String get adminUserBackToCounselors => 'Retour aux conseillers';

  @override
  String get adminUserCancel => 'Annuler';

  @override
  String get adminUserCareer => 'Carrière';

  @override
  String get adminUserCareerGuidance => 'Orientation professionnelle';

  @override
  String get adminUserChooseRoleHelperText =>
      'Choisissez le rôle administrateur pour cet utilisateur';

  @override
  String get adminUserCollege => 'Collège';

  @override
  String get adminUserCollegeAdmissions => 'Admissions universitaires';

  @override
  String get adminUserConfirmDeactivation => 'Confirmer la désactivation';

  @override
  String get adminUserConfirmPassword => 'Confirmer le mot de passe';

  @override
  String get adminUserContactAndAvailability => 'Contact et disponibilité';

  @override
  String get adminUserContentAdmin => 'Admin contenu';

  @override
  String get adminUserCounselorColumn => 'Conseiller';

  @override
  String get adminUserCounselorCreatedSuccess => 'Conseiller créé avec succès';

  @override
  String get adminUserCounselorId => 'ID conseiller';

  @override
  String get adminUserCounselors => 'Conseillers';

  @override
  String get adminUserCounselorUpdatedSuccess =>
      'Conseiller mis à jour avec succès';

  @override
  String get adminUserCreate => 'Créer';

  @override
  String get adminUserCreateAdmin => 'Créer un admin';

  @override
  String get adminUserCreateAdminAccount => 'Créer un compte admin';

  @override
  String get adminUserCreateAdminSubtitle =>
      'Créer un nouveau compte utilisateur admin';

  @override
  String get adminUserCreateCounselor => 'Créer un conseiller';

  @override
  String get adminUserCreateCounselorSubtitle =>
      'Créer un nouveau compte conseiller';

  @override
  String get adminUserCreated => 'Créé';

  @override
  String get adminUserCredentials => 'Identifiants';

  @override
  String get adminUserCredentialsHint =>
      'Certifications et licences professionnelles';

  @override
  String get adminUserDashboard => 'Tableau de bord';

  @override
  String get adminUserDeactivate => 'Désactiver';

  @override
  String get adminUserDeactivateAccount => 'Désactiver le compte';

  @override
  String get adminUserDeactivateCounselors => 'Désactiver les conseillers';

  @override
  String get adminUserDeactivationComingSoon =>
      'Fonctionnalité de désactivation bientôt disponible';

  @override
  String get adminUserEdit => 'Modifier';

  @override
  String get adminUserEditAdmin => 'Modifier l\'admin';

  @override
  String get adminUserEditAdminAccount => 'Modifier le compte admin';

  @override
  String get adminUserEditCounselor => 'Modifier le conseiller';

  @override
  String get adminUserEmail => 'Email';

  @override
  String get adminUserEmailCannotBeChanged =>
      'L\'email ne peut pas être modifié';

  @override
  String get adminUserEmailLoginHelper =>
      'Cet email sera utilisé pour se connecter';

  @override
  String get adminUserExport => 'Exporter';

  @override
  String get adminUserExportComingSoon =>
      'Fonctionnalité d\'export bientôt disponible';

  @override
  String get adminUserExportCounselors => 'Exporter les conseillers';

  @override
  String get adminUserFailedCreateAccount => 'Échec de création du compte';

  @override
  String get adminUserFailedLoadData => 'Échec du chargement des données';

  @override
  String get adminUserFailedUpdateAccount => 'Échec de mise à jour du compte';

  @override
  String get adminUserFinanceAdmin => 'Admin finance';

  @override
  String get adminUserFinancialAid => 'Aide financière';

  @override
  String get adminUserFirstName => 'Prénom';

  @override
  String get adminUserFullName => 'Nom complet';

  @override
  String get adminUserInactive => 'Inactif';

  @override
  String get adminUserInstitutionCreatedSuccess =>
      'Établissement créé avec succès';

  @override
  String get adminUserInstitutionInformation =>
      'Informations de l\'établissement';

  @override
  String get adminUserInstitutionName => 'Nom de l\'établissement';

  @override
  String get adminUserInstitutionUpdatedSuccess =>
      'Établissement mis à jour avec succès';

  @override
  String get adminUserInvalidEmail => 'Adresse email invalide';

  @override
  String get adminUserJoined => 'Inscrit';

  @override
  String get adminUserLanguageSchool => 'École de langues';

  @override
  String get adminUserLastLogin => 'Dernière connexion';

  @override
  String get adminUserLastName => 'Nom';

  @override
  String get adminUserLicenseNumber => 'Numéro de licence';

  @override
  String get adminUserManageAdminAccounts => 'Gérer les comptes admin';

  @override
  String get adminUserManageCounselorAccounts =>
      'Gérer les comptes conseillers';

  @override
  String get adminUserMentalHealth => 'Santé mentale';

  @override
  String get adminUserNoPermissionDeactivate =>
      'Vous n\'avez pas la permission de désactiver ce compte';

  @override
  String get adminUserNoPermissionEdit =>
      'Vous n\'avez pas la permission de modifier ce compte';

  @override
  String get adminUserOfficeLocation => 'Emplacement du bureau';

  @override
  String get adminUserOfficeLocationHint => 'Bâtiment et numéro de salle';

  @override
  String get adminUserPassword => 'Mot de passe';

  @override
  String get adminUserPasswordHelper => 'Minimum 8 caractères';

  @override
  String get adminUserPasswordsDoNotMatch =>
      'Les mots de passe ne correspondent pas';

  @override
  String get adminUserPending => 'En attente';

  @override
  String get adminUserPendingApproval => 'En attente d\'approbation';

  @override
  String get adminUserPendingVerification => 'En attente de vérification';

  @override
  String get adminUserPersonalInformation => 'Informations personnelles';

  @override
  String get adminUserPhone => 'Téléphone';

  @override
  String get adminUserPhoneHelper => 'Inclure l\'indicatif du pays';

  @override
  String get adminUserPhoneNumber => 'Numéro de téléphone';

  @override
  String get adminUserPleaseConfirmPassword =>
      'Veuillez confirmer votre mot de passe';

  @override
  String get adminUserProfessionalInformation =>
      'Informations professionnelles';

  @override
  String get adminUserRegionalAdmin => 'Admin régional';

  @override
  String get adminUserRegionalScope => 'Portée régionale';

  @override
  String get adminUserRegionalScopeHelper =>
      'Sélectionnez les régions que cet admin peut gérer';

  @override
  String get adminUserRejected => 'Rejeté';

  @override
  String get adminUserRequired => 'Requis';

  @override
  String get adminUserRequiredForRegional =>
      'Requis pour le rôle d\'admin régional';

  @override
  String get adminUserRoleColumn => 'Rôle';

  @override
  String get adminUserSaveChanges => 'Enregistrer';

  @override
  String get adminUserSearchByNameOrEmail => 'Rechercher par nom ou email';

  @override
  String get adminUserSearchCounselors => 'Rechercher des conseillers...';

  @override
  String get adminUserSecuritySettings => 'Paramètres de sécurité';

  @override
  String get adminUserSelectAdminRole => 'Sélectionner le rôle admin';

  @override
  String get adminUserSessions => 'Sessions';

  @override
  String get adminUserSpecialty => 'Spécialité';

  @override
  String get adminUserStatus => 'Statut';

  @override
  String get adminUserStatusColumn => 'Statut';

  @override
  String get adminUserStudents => 'Étudiants';

  @override
  String get adminUserStudySkills => 'Compétences d\'étude';

  @override
  String get adminUserSuperAdmin => 'Super Admin';

  @override
  String get adminUserSupportAdmin => 'Admin support';

  @override
  String get adminUserSuspended => 'Suspendu';

  @override
  String get adminUserType => 'Type';

  @override
  String get adminUserUniversity => 'Université';

  @override
  String get adminUserUpdateAdminSubtitle =>
      'Mettre à jour les informations du compte admin';

  @override
  String get adminUserUpdateCounselor => 'Mettre à jour le conseiller';

  @override
  String get adminUserUpdateCounselorSubtitle =>
      'Mettre à jour les informations du compte conseiller';

  @override
  String get adminUserVerified => 'Vérifié';

  @override
  String get adminUserViewDetails => 'Voir les détails';

  @override
  String get adminUserVocationalSchool => 'École professionnelle';

  @override
  String get adminUserWebsite => 'Site web';

  @override
  String get adminUserYearsOfExperience => 'Années d\'expérience';

  @override
  String adminAnalyticsShowingRows(Object count, Object total) {
    return 'Affichage de $count sur $total lignes';
  }

  @override
  String adminAnalyticsColumnsCount(Object count) {
    return '$count colonnes';
  }

  @override
  String adminChatFailedSendReply(Object error) {
    return 'Échec de l\'envoi de la réponse : $error';
  }

  @override
  String adminChatRole(Object role) {
    return 'Rôle : $role';
  }

  @override
  String adminChatMessageCount(Object count) {
    return '$count messages';
  }

  @override
  String adminChatStarted(Object date) {
    return 'Commencé : $date';
  }

  @override
  String adminChatLastMessage(Object date) {
    return 'Dernier message : $date';
  }

  @override
  String adminChatDuration(Object duration) {
    return 'Durée : $duration';
  }

  @override
  String adminChatFaqDeleteConfirm(Object question) {
    return 'Êtes-vous sûr de vouloir supprimer \"$question\" ?';
  }

  @override
  String adminChatFaqDeleteFailed(Object error) {
    return 'Échec de la suppression de la FAQ : $error';
  }

  @override
  String adminChatFaqUpdateFailed(Object error) {
    return 'Échec de la mise à jour de la FAQ : $error';
  }

  @override
  String adminChatFaqSaveFailed(Object error) {
    return 'Échec de l\'enregistrement de la FAQ : $error';
  }

  @override
  String adminChatQueueAssignFailed(Object error) {
    return 'Échec de l\'assignation de la conversation : $error';
  }

  @override
  String adminReportGenerateFailed(Object error) {
    return 'Échec de la génération du rapport : $error';
  }

  @override
  String adminReportNameGeneratedSuccess(Object name) {
    return '$name généré avec succès';
  }

  @override
  String adminReportInDays(Object days) {
    return 'dans $days jours';
  }

  @override
  String adminUserErrorLoadingData(Object error) {
    return 'Erreur de chargement des données : $error';
  }

  @override
  String adminUserAccountCreatedSuccess(Object email) {
    return 'Compte $email créé avec succès';
  }

  @override
  String adminUserError(Object error) {
    return 'Erreur : $error';
  }

  @override
  String adminUserCannotActivateInsufficient(Object count) {
    return 'Impossible d\'activer $count admins : permissions insuffisantes';
  }

  @override
  String adminUserAdminsActivated(Object count) {
    return '$count admins activés';
  }

  @override
  String adminUserCannotDeactivateInsufficient(Object count) {
    return 'Impossible de désactiver $count admins : permissions insuffisantes';
  }

  @override
  String adminUserConfirmDeactivateAdmins(Object count) {
    return 'Êtes-vous sûr de vouloir désactiver $count admins ?';
  }

  @override
  String adminUserAdminsDeactivated(Object count) {
    return '$count admins désactivés';
  }

  @override
  String adminUserConfirmActivateCounselors(Object count) {
    return 'Êtes-vous sûr de vouloir activer $count conseillers ?';
  }

  @override
  String adminUserConfirmDeactivateCounselors(Object count) {
    return 'Êtes-vous sûr de vouloir désactiver $count conseillers ?';
  }

  @override
  String get adminActivityTitle => 'Journaux d\'activite';

  @override
  String get adminActivitySubtitle =>
      'Historique de toutes les actions administratives';

  @override
  String get adminActivityExportLogs => 'Exporter les journaux';

  @override
  String get adminActivityResetFilters => 'Reinitialiser les filtres';

  @override
  String get adminActivitySearchHint =>
      'Rechercher par admin, action ou cible...';

  @override
  String get adminActivityActionType => 'Type d\'action';

  @override
  String get adminActivityAllTypes => 'Tous les types';

  @override
  String get adminActivityCreate => 'Creer';

  @override
  String get adminActivityUpdate => 'Mettre a jour';

  @override
  String get adminActivityDelete => 'Supprimer';

  @override
  String get adminActivityLogin => 'Connexion';

  @override
  String get adminActivityLogout => 'Deconnexion';

  @override
  String get adminActivityExport => 'Exporter';

  @override
  String get adminActivityBulkOperation => 'Operation en masse';

  @override
  String get adminActivitySeverity => 'Severite';

  @override
  String get adminActivityAllSeverity => 'Toutes les severites';

  @override
  String get adminActivityInfo => 'Info';

  @override
  String get adminActivityWarning => 'Avertissement';

  @override
  String get adminActivityCritical => 'Critique';

  @override
  String get adminActivityDateRange => 'Plage de dates';

  @override
  String get adminActivityTimestamp => 'Horodatage';

  @override
  String get adminActivityAdmin => 'Admin';

  @override
  String get adminActivityAction => 'Action';

  @override
  String get adminActivityTarget => 'Cible';

  @override
  String get adminActivityDetails => 'Details';

  @override
  String get adminActivityIpAddress => 'Adresse IP';

  @override
  String get adminActivityExportDialogTitle =>
      'Exporter les journaux d\'activite';

  @override
  String get adminActivityLogsReport => 'Rapport des journaux d\'activite';

  @override
  String get homePageApiDocsTitle => 'Documentation API';

  @override
  String get homePagePressKit => 'Kit de presse';

  @override
  String get adminDashSystemUser => 'Systeme';

  @override
  String adminDashErrorWithMessage(Object message) {
    return 'Erreur: $message';
  }

  @override
  String get adminSettingsTimezoneNairobi => 'Nairobi (EAT)';

  @override
  String get adminSettingsTimezoneLagos => 'Lagos (WAT)';

  @override
  String get adminSettingsTimezoneCairo => 'Le Caire (EET)';

  @override
  String get adminRichTextBoldTooltip => 'Gras (**texte**)';

  @override
  String get adminRichTextBoldPlaceholder => 'texte en gras';

  @override
  String get adminRichTextItalicTooltip => 'Italique (*texte*)';

  @override
  String get adminRichTextItalicPlaceholder => 'texte en italique';

  @override
  String get adminRichTextUnderlineTooltip => 'Souligné';

  @override
  String get adminRichTextUnderlinePlaceholder => 'texte souligné';

  @override
  String get adminRichTextStrikethroughTooltip => 'Barré (~~texte~~)';

  @override
  String get adminRichTextStrikethroughPlaceholder => 'texte barré';

  @override
  String get adminRichTextHeading1Tooltip => 'Titre 1';

  @override
  String get adminRichTextHeading2Tooltip => 'Titre 2';

  @override
  String get adminRichTextHeading3Tooltip => 'Titre 3';

  @override
  String get adminRichTextBulletListTooltip => 'Liste à puces';

  @override
  String get adminRichTextNumberedListTooltip => 'Liste numérotée';

  @override
  String get adminRichTextQuoteTooltip => 'Citation';

  @override
  String get adminRichTextLinkTooltip => 'Insérer un lien [texte](url)';

  @override
  String get adminRichTextLinkPlaceholder => 'texte du lien';

  @override
  String get adminRichTextCodeTooltip => 'Code en ligne';

  @override
  String get adminRichTextCodePlaceholder => 'code';

  @override
  String get adminRichTextHorizontalLineTooltip => 'Ligne horizontale';

  @override
  String get instCourseMarkdown => 'Markdown';

  @override
  String get instCourseRichText => 'Texte enrichi';

  @override
  String get studCourseRetry => 'Réessayer';

  @override
  String get studCourseSubmitAssignment => 'Soumettre le devoir';

  @override
  String get adminNotifTitle => 'Centre de notifications';

  @override
  String get adminNotifSubtitle =>
      'Restez informé des événements système et des activités des utilisateurs';

  @override
  String get adminNotifMarkAllAsRead => 'Tout marquer comme lu';

  @override
  String get adminNotifClearAll => 'Tout effacer';

  @override
  String adminNotifUnreadCount(Object count) {
    return '$count non lu(s)';
  }

  @override
  String get adminNotifPriority => 'Priorité';

  @override
  String get adminNotifAllPriorities => 'Toutes les priorités';

  @override
  String get adminNotifUnreadOnly => 'Non lus uniquement';

  @override
  String get adminNotifNotificationTypes => 'Types de notifications';

  @override
  String get adminNotifAllNotifications => 'Toutes les notifications';

  @override
  String get adminNotifMarkAsUnread => 'Marquer comme non lu';

  @override
  String get adminNotifMarkAsRead => 'Marquer comme lu';

  @override
  String get adminNotifDelete => 'Supprimer';

  @override
  String get adminNotifNoNotifications => 'Aucune notification';

  @override
  String get adminNotifAllCaughtUp => 'Vous êtes à jour !';

  @override
  String get adminNotifJustNow => 'À l\'instant';

  @override
  String adminNotifMinutesAgo(Object minutes) {
    return 'Il y a $minutes min';
  }

  @override
  String adminNotifHoursAgo(Object hours) {
    return 'Il y a $hours h';
  }

  @override
  String adminNotifDaysAgo(Object days) {
    return 'Il y a $days j';
  }

  @override
  String get adminNotifClearAllTitle => 'Effacer toutes les notifications';

  @override
  String get adminNotifClearAllConfirmation =>
      'Êtes-vous sûr de vouloir effacer toutes les notifications ? Cette action est irréversible.';

  @override
  String get adminNotifCancel => 'Annuler';

  @override
  String get adminCounselorsListUnknownCounselor => 'Conseiller inconnu';

  @override
  String get adminCounselorsListNotSpecified => 'Non spécifié';

  @override
  String get adminCounselorsListToday => 'Aujourd\'hui';

  @override
  String get adminCounselorsListYesterday => 'Hier';

  @override
  String adminCounselorsListDaysAgo(Object count) {
    return 'Il y a $count jours';
  }

  @override
  String adminCounselorsListWeeksAgo(Object count) {
    return 'Il y a $count semaines';
  }

  @override
  String adminCounselorsListMonthsAgo(Object count) {
    return 'Il y a $count mois';
  }

  @override
  String adminCounselorsListYearsAgo(Object count) {
    return 'Il y a $count ans';
  }

  @override
  String adminCounselorsListError(Object error) {
    return 'Erreur : $error';
  }

  @override
  String get homePageAboutTitle => 'À propos de nous';

  @override
  String get homePageOurMission => 'Notre mission';

  @override
  String adminReportLastGenerated(Object date) {
    return 'Dernier : $date';
  }

  @override
  String get adminReportUserActivityReport =>
      'Rapport d\'activite des utilisateurs';

  @override
  String get adminReportUserActivityDescription =>
      'Apercu complet des inscriptions, connexions et comportements des utilisateurs';

  @override
  String get adminReportEngagementMetrics => 'Metriques d\'engagement';

  @override
  String get adminReportEngagementDescription =>
      'Suivre l\'engagement des utilisateurs, les inscriptions aux cours et les interactions sur la plateforme';

  @override
  String get adminReportSystemPerformance => 'Performance du systeme';

  @override
  String get adminReportSystemPerformanceDescription =>
      'Temps de reponse API, debit et metriques de performance systeme';

  @override
  String get adminReportRevenueReport => 'Rapport de revenus';

  @override
  String get adminReportRevenueDescription =>
      'Repartition detaillee des revenus, abonnements et transactions';

  @override
  String get adminReportPaymentAnalytics => 'Analyse des paiements';

  @override
  String get adminReportPaymentAnalyticsDescription =>
      'Taux de reussite des paiements, delais de traitement et analyse des transactions';

  @override
  String get adminReportUserGrowthReport =>
      'Rapport de croissance des utilisateurs';

  @override
  String get adminReportUserGrowthDescription =>
      'Suivre l\'acquisition, la retention et les tendances de croissance des utilisateurs';

  @override
  String get adminReportSystemHealthReport => 'Rapport de sante du systeme';

  @override
  String get adminReportSystemHealthDescription =>
      'Etat de l\'infrastructure, disponibilite, utilisation des ressources et metriques de sante';

  @override
  String get adminReportApplicationFunnel => 'Entonnoir de candidatures';

  @override
  String get adminReportApplicationFunnelDescription =>
      'Suivre les soumissions de candidatures, les conversions et les taux de completion';

  @override
  String get adminReportAuditTrailReport => 'Rapport de piste d\'audit';

  @override
  String get adminReportAuditTrailDescription =>
      'Piste d\'audit complete des actions administratives et des modifications systeme';

  @override
  String get adminReportDataAccessReport => 'Rapport d\'acces aux donnees';

  @override
  String get adminReportDataAccessDescription =>
      'Suivre les modeles d\'acces aux donnees et les demandes d\'informations sensibles';

  @override
  String get adminReportDefaultTitle => 'Rapport d\'analyse';

  @override
  String get adminReportMetricHeader => 'Metrique';

  @override
  String get adminReportValueHeader => 'Valeur';

  @override
  String adminReportDeleteConfirmation(Object title) {
    return 'Etes-vous sur de vouloir supprimer \"$title\" ?';
  }

  @override
  String adminReportRecipientsCount(Object count) {
    return '$count destinataires';
  }

  @override
  String get adminReportEmailRecipientsHint =>
      'admin@exemple.com, responsable@exemple.com';

  @override
  String get adminSqlTitle => 'Requetes SQL';

  @override
  String get adminSqlSubtitle =>
      'Executer des requetes pre-construites sur les donnees de la plateforme';

  @override
  String get adminSqlSearchHint => 'Rechercher des requetes...';

  @override
  String get adminSqlRetry => 'Reessayer';

  @override
  String get adminSqlSelectQuery => 'Selectionnez une requete a executer';

  @override
  String get adminSqlSelectQueryHint =>
      'Choisissez dans la bibliotheque de requetes a gauche';

  @override
  String get adminSqlNoResults => 'Aucun resultat';

  @override
  String adminSqlResultCount(Object columns, Object rows) {
    return '$rows lignes  |  $columns colonnes';
  }

  @override
  String get adminSqlAllUsersName => 'Tous les utilisateurs';

  @override
  String get adminSqlAllUsersDescription =>
      'Liste de tous les utilisateurs enregistres avec leurs donnees de profil';

  @override
  String get adminSqlStudentsOnlyName => 'Etudiants uniquement';

  @override
  String get adminSqlStudentsOnlyDescription =>
      'Filtrer les utilisateurs pour afficher uniquement les etudiants';

  @override
  String get adminSqlAdminUsersName => 'Utilisateurs administrateurs';

  @override
  String get adminSqlAdminUsersDescription =>
      'Liste de tous les comptes administrateurs';

  @override
  String get adminSqlRecentActivityName => 'Activite recente';

  @override
  String get adminSqlRecentActivityDescription =>
      'Les 50 dernieres activites de la plateforme depuis le journal d\'audit';

  @override
  String get adminSqlActivityStatisticsName => 'Statistiques d\'activite';

  @override
  String get adminSqlActivityStatisticsDescription =>
      'Comptages d\'activites agreges par type';

  @override
  String get adminSqlPlatformMetricsName => 'Metriques de la plateforme';

  @override
  String get adminSqlPlatformMetricsDescription =>
      'Metriques cles : nombre d\'utilisateurs, candidatures, taux de croissance';

  @override
  String get adminSqlFinanceOverviewName => 'Apercu financier';

  @override
  String get adminSqlFinanceOverviewDescription =>
      'Revenus, transactions et indicateurs financiers cles';

  @override
  String get adminSqlContentStatisticsName => 'Statistiques de contenu';

  @override
  String get adminSqlContentStatisticsDescription =>
      'Comptages de contenu publie, en brouillon et en attente';

  @override
  String get adminSqlOpenSupportTicketsName => 'Tickets de support ouverts';

  @override
  String get adminSqlOpenSupportTicketsDescription =>
      'Tous les tickets de support actuellement ouverts';

  @override
  String get adminSqlRecentTransactionsName => 'Transactions recentes';

  @override
  String get adminSqlRecentTransactionsDescription =>
      'Transactions financieres (100 dernieres)';

  @override
  String get adminSqlUserGrowthName => 'Croissance des utilisateurs (6 mois)';

  @override
  String get adminSqlUserGrowthDescription =>
      'Tendance mensuelle des inscriptions d\'utilisateurs';

  @override
  String get adminSqlRoleDistributionName => 'Repartition des roles';

  @override
  String get adminSqlRoleDistributionDescription =>
      'Repartition des utilisateurs par type de role';

  @override
  String get adminInstitutionLocation => 'Emplacement';

  @override
  String get adminInstitutionAddress => 'Adresse';

  @override
  String get adminInstitutionCity => 'Ville';

  @override
  String get adminInstitutionCountry => 'Pays';

  @override
  String get adminInstitutionContactPerson => 'Personne de contact';

  @override
  String get adminInstitutionFullName => 'Nom complet';

  @override
  String get adminInstitutionPosition => 'Poste';

  @override
  String get adminInstitutionContactEmail => 'Email';

  @override
  String get adminInstitutionContactPhone => 'Telephone';

  @override
  String get adminInstitutionRequired => 'Obligatoire';

  @override
  String get adminInstitutionInvalidEmail => 'Email invalide';

  @override
  String get adminInstitutionBackToInstitutions => 'Retour aux etablissements';

  @override
  String get adminInstitutionEditInstitution => 'Modifier l\'etablissement';

  @override
  String get adminInstitutionAddNewInstitution =>
      'Ajouter un nouvel etablissement';

  @override
  String get adminInstitutionUpdateAccountInfo =>
      'Mettre a jour les informations du compte de l\'etablissement';

  @override
  String get adminInstitutionCreateAccountInfo =>
      'Creer un nouveau compte d\'etablissement';

  @override
  String get adminInstitutionCancel => 'Annuler';

  @override
  String get adminInstitutionUpdateInstitution =>
      'Mettre a jour l\'etablissement';

  @override
  String get adminInstitutionCreateInstitution => 'Creer l\'etablissement';

  @override
  String get adminMessagingTitle => 'Messagerie groupee';

  @override
  String get adminMessagingSubtitle =>
      'Envoyer des messages a plusieurs utilisateurs a la fois';

  @override
  String get adminMessagingNewMessage => 'Nouveau message';

  @override
  String get adminMessagingSubjectLabel => 'Objet';

  @override
  String get adminMessagingSubjectHint => 'Entrez l\'objet du message';

  @override
  String get adminMessagingMessageLabel => 'Message';

  @override
  String get adminMessagingMessageHint => 'Entrez votre message ici...';

  @override
  String get adminMessagingSaveDraft => 'Enregistrer le brouillon';

  @override
  String get adminMessagingPreview => 'Apercu';

  @override
  String get adminMessagingSending => 'Envoi en cours...';

  @override
  String get adminMessagingSendMessage => 'Envoyer le message';

  @override
  String get adminMessagingRecipients => 'Destinataires';

  @override
  String get adminMessagingDeliveryChannel => 'Canal de diffusion';

  @override
  String get adminMessagingSchedule => 'Planifier';

  @override
  String get adminMessagingTemplates => 'Modeles de messages';

  @override
  String get adminMessagingRecentMessages => 'Messages recents';

  @override
  String adminMessagingSentCount(Object count) {
    return '$count envoye(s)';
  }

  @override
  String get adminMessagingFillAllFields => 'Veuillez remplir tous les champs';

  @override
  String get adminMessagingSendMessageTitle => 'Envoyer le message';

  @override
  String adminMessagingSendConfirmation(Object group) {
    return 'Etes-vous sur de vouloir envoyer ce message a $group ?';
  }

  @override
  String get adminMessagingCancel => 'Annuler';

  @override
  String get adminMessagingSend => 'Envoyer';

  @override
  String get adminMessagingSentSuccess => 'Message envoye avec succes';

  @override
  String get adminMessagingDraftSaved => 'Brouillon enregistre';

  @override
  String get adminMessagingPreviewTitle => 'Apercu du message';

  @override
  String adminMessagingPreviewSubject(Object subject) {
    return 'Objet : $subject';
  }

  @override
  String adminMessagingPreviewTo(Object recipient) {
    return 'A : $recipient';
  }

  @override
  String adminMessagingPreviewVia(Object channel) {
    return 'Via : $channel';
  }

  @override
  String get adminMessagingClose => 'Fermer';

  @override
  String get adminMessagingTemplateWelcomeName => 'Message de bienvenue';

  @override
  String get adminMessagingTemplateWelcomeSubject => 'Bienvenue sur Navia !';

  @override
  String get adminMessagingTemplateWelcomeContent =>
      'Bonjour ! Bienvenue sur Navia, votre parcours educatif commence ici. Nous sommes ravis de vous accueillir dans notre communaute.';

  @override
  String get adminMessagingTemplatePaymentName => 'Rappel de paiement';

  @override
  String get adminMessagingTemplatePaymentSubject =>
      'Rappel de paiement a effectuer';

  @override
  String get adminMessagingTemplatePaymentContent =>
      'Ceci est un rappel amical que votre paiement arrive bientot a echeance. Veuillez effectuer votre paiement pour continuer a profiter de nos services.';

  @override
  String get adminMessagingTemplateSystemName => 'Mise a jour systeme';

  @override
  String get adminMessagingTemplateSystemSubject =>
      'Avis de maintenance systeme';

  @override
  String get adminMessagingTemplateSystemContent =>
      'Nous effectuerons une maintenance programmee sur nos systemes. Pendant cette periode, certaines fonctionnalites peuvent etre indisponibles.';

  @override
  String get adminMessagingRecentWelcomeSubject =>
      'Bienvenue pour le nouveau semestre';

  @override
  String get adminMessagingRecentWelcomeContent =>
      'Nous esperons que vous avez passe de bonnes vacances ! Preparez-vous pour un semestre passionnant.';

  @override
  String get adminMessagingRecentPaymentSubject =>
      'Rappel de paiement a effectuer';

  @override
  String get adminMessagingRecentPaymentContent =>
      'Ceci est un rappel que votre paiement doit etre effectue d\'ici la fin de cette semaine.';

  @override
  String get adminMessagingRecentFeaturesSubject =>
      'Nouvelles fonctionnalites disponibles';

  @override
  String get adminMessagingRecentFeaturesContent =>
      'Decouvrez nos dernieres fonctionnalites et ameliorations pour enrichir votre experience.';

  @override
  String get instCourseAdvancedModule => 'Module avancé';

  @override
  String get instCourseImportQuiz => 'Importer le quiz';

  @override
  String get adminLoginTitle => 'Portail Administrateur';

  @override
  String get adminLoginSubtitle => 'Acces Administrateur Securise';

  @override
  String get adminLoginEmailLabel => 'Email Administrateur';

  @override
  String get adminLoginEmailHint => 'admin@exemple.com';

  @override
  String get adminLoginEmailRequired => 'Veuillez entrer votre email';

  @override
  String get adminLoginEmailInvalid => 'Veuillez entrer un email valide';

  @override
  String get adminLoginPasswordLabel => 'Mot de passe';

  @override
  String get adminLoginPasswordHint => 'Entrez votre mot de passe';

  @override
  String get adminLoginPasswordRequired => 'Veuillez entrer votre mot de passe';

  @override
  String get adminLoginPasswordTooShort =>
      'Le mot de passe doit contenir au moins 8 caracteres';

  @override
  String get adminLoginSignInButton => 'Connexion Securisee';

  @override
  String get adminLoginSecurityNotice =>
      'Toutes les activites administrateur sont enregistrees et surveillees pour la securite.';

  @override
  String get adminLoginBackToSite => 'Retour au site principal';

  @override
  String adminLoginFailed(Object error) {
    return 'Echec de la connexion : $error';
  }

  @override
  String get homePageBlogTitle => 'Blog';

  @override
  String get homePageSubscribe => 'S\'abonner';

  @override
  String get adminKbRetry => 'Reessayer';

  @override
  String get adminKbKeywordsHint =>
      'ex. connexion, mot de passe, reinitialisation';

  @override
  String get adminKbPriorityLow => '0 - Basse';

  @override
  String get adminKbPriorityMedium => '1 - Moyenne';

  @override
  String get adminKbPriorityHigh => '2 - Haute';

  @override
  String get adminKbPriorityCritical => '3 - Critique';

  @override
  String adminKbDeleteConfirmMessage(Object question) {
    return 'Etes-vous sur de vouloir supprimer \"$question\" ?';
  }

  @override
  String get instCounselorsSearchHint =>
      'Rechercher des conseillers par nom ou email';

  @override
  String get instCounselorsRetry => 'Réessayer';

  @override
  String get instCounselorsNoCounselorsFound => 'Aucun Conseiller Trouvé';

  @override
  String get instCounselorsNoMatchSearch =>
      'Aucun conseiller ne correspond à votre recherche';

  @override
  String get instCounselorsAddToInstitution =>
      'Ajoutez des conseillers à votre institution pour commencer';

  @override
  String instCounselorsPageOf(int current, int total) {
    return 'Page $current sur $total';
  }

  @override
  String get instCounselorsCounselingOverview => 'Aperçu du Counseling';

  @override
  String get instCounselorsCounselors => 'Conseillers';

  @override
  String get instCounselorsStudents => 'Étudiants';

  @override
  String get instCounselorsSessions => 'Sessions';

  @override
  String get instCounselorsCompleted => 'Terminées';

  @override
  String get instCounselorsUpcoming => 'À venir';

  @override
  String get instCounselorsAvgRating => 'Note Moy.';

  @override
  String get instCounselorsStudentAssigned => 'Étudiant assigné avec succès';

  @override
  String get instCounselorsAssign => 'Assigner';

  @override
  String get instCounselorsTotalSessions => 'Total Sessions';

  @override
  String get instCounselorsAssignStudents => 'Assigner des Étudiants';

  @override
  String instCounselorsAssignStudentTo(String name) {
    return 'Assigner un étudiant à $name';
  }

  @override
  String get instCounselorsSearchStudents => 'Rechercher des étudiants...';

  @override
  String get instCounselorsNoStudentsFound => 'Aucun étudiant trouvé';

  @override
  String get instCounselorsUnknown => 'Inconnu';

  @override
  String instCounselorsError(String error) {
    return 'Erreur: $error';
  }

  @override
  String get instCounselorsCancel => 'Annuler';

  @override
  String get adminAuditAction => 'Admin Audit Action';

  @override
  String get adminAuditActionType => 'Admin Audit Action Type';

  @override
  String get adminAuditAllActions => 'Admin Audit All Actions';

  @override
  String get adminAuditBackendIntegrationNote =>
      'Admin Audit Backend Integration Note';

  @override
  String get adminAuditClose => 'Admin Audit Close';

  @override
  String get adminAuditCreateRecord => 'Admin Audit Create Record';

  @override
  String get adminAuditCustomRange => 'Admin Audit Custom Range';

  @override
  String get adminAuditDateRange => 'Admin Audit Date Range';

  @override
  String get adminAuditDeleteRecord => 'Admin Audit Delete Record';

  @override
  String get adminAuditDetails => 'Admin Audit Details';

  @override
  String get adminAuditExportData => 'Admin Audit Export Data';

  @override
  String get adminAuditExportReport => 'Admin Audit Export Report';

  @override
  String get adminAuditIpAddress => 'Admin Audit Ip Address';

  @override
  String get adminAuditLast30Days => 'Admin Audit Last30 Days';

  @override
  String get adminAuditLast7Days => 'Admin Audit Last7 Days';

  @override
  String get adminAuditLogDetails => 'Admin Audit Log Details';

  @override
  String get adminAuditLogin => 'Admin Audit Login';

  @override
  String get adminAuditLogout => 'Admin Audit Logout';

  @override
  String get adminAuditRefreshLogs => 'Admin Audit Refresh Logs';

  @override
  String get adminAuditResource => 'Admin Audit Resource';

  @override
  String get adminAuditRole => 'Admin Audit Role';

  @override
  String get adminAuditSearchHint => 'Admin Audit Search Hint';

  @override
  String get adminAuditSubtitle => 'Admin Audit Subtitle';

  @override
  String get adminAuditTimestamp => 'Admin Audit Timestamp';

  @override
  String get adminAuditTitle => 'Admin Audit Title';

  @override
  String get adminAuditToday => 'Admin Audit Today';

  @override
  String get adminAuditUpdateRecord => 'Admin Audit Update Record';

  @override
  String get adminAuditUser => 'Admin Audit User';

  @override
  String get adminAuditViewDetails => 'Admin Audit View Details';

  @override
  String get adminAuditYesterday => 'Admin Audit Yesterday';

  @override
  String get adminCommActionDelete => 'Admin Comm Action Delete';

  @override
  String get adminCommActionDuplicate => 'Admin Comm Action Duplicate';

  @override
  String get adminCommActionSchedule => 'Admin Comm Action Schedule';

  @override
  String get adminCommActionSendNow => 'Admin Comm Action Send Now';

  @override
  String get adminCommActionViewDetails => 'Admin Comm Action View Details';

  @override
  String get adminCommCampaignDeleted => 'Admin Comm Campaign Deleted';

  @override
  String adminCommCampaignScheduledFor(String date) {
    return 'Admin Comm Campaign Scheduled For: $date';
  }

  @override
  String get adminCommCampaignTitleHint => 'Admin Comm Campaign Title Hint';

  @override
  String get adminCommCampaignTitleLabel => 'Admin Comm Campaign Title Label';

  @override
  String get adminCommCancel => 'Admin Comm Cancel';

  @override
  String get adminCommClose => 'Admin Comm Close';

  @override
  String get adminCommConfirm => 'Admin Comm Confirm';

  @override
  String get adminCommCreateCampaign => 'Admin Comm Create Campaign';

  @override
  String get adminCommCreateCampaignDialogTitle =>
      'Admin Comm Create Campaign Dialog Title';

  @override
  String adminCommDeleteCampaignMessage(String campaign) {
    return 'Admin Comm Delete Campaign Message: $campaign';
  }

  @override
  String get adminCommDeleteCampaignTitle => 'Admin Comm Delete Campaign Title';

  @override
  String get adminCommDetailCreated => 'Admin Comm Detail Created';

  @override
  String get adminCommDetailDelivered => 'Admin Comm Detail Delivered';

  @override
  String get adminCommDetailMessage => 'Admin Comm Detail Message';

  @override
  String get adminCommDetailOpened => 'Admin Comm Detail Opened';

  @override
  String get adminCommDetailRecipients => 'Admin Comm Detail Recipients';

  @override
  String get adminCommDetailScheduled => 'Admin Comm Detail Scheduled';

  @override
  String get adminCommDetailSent => 'Admin Comm Detail Sent';

  @override
  String get adminCommDetailStatus => 'Admin Comm Detail Status';

  @override
  String get adminCommDetailType => 'Admin Comm Detail Type';

  @override
  String get adminCommDuplicateCampaignDialogTitle =>
      'Admin Comm Duplicate Campaign Dialog Title';

  @override
  String get adminCommEmptySubtitle => 'Admin Comm Empty Subtitle';

  @override
  String get adminCommEmptyTitle => 'Admin Comm Empty Title';

  @override
  String get adminCommErrorTitle => 'Admin Comm Error Title';

  @override
  String get adminCommNewCampaign => 'Admin Comm New Campaign';

  @override
  String get adminCommNoMessageContent => 'Admin Comm No Message Content';

  @override
  String get adminCommRefresh => 'Admin Comm Refresh';

  @override
  String get adminCommRetry => 'Admin Comm Retry';

  @override
  String get adminCommScheduleCampaignTitle =>
      'Admin Comm Schedule Campaign Title';

  @override
  String get adminCommSearchHint => 'Admin Comm Search Hint';

  @override
  String adminCommSendCampaignMessage(String campaign) {
    return 'Admin Comm Send Campaign Message: $campaign';
  }

  @override
  String get adminCommSendCampaignTitle => 'Admin Comm Send Campaign Title';

  @override
  String get adminCommSendingCampaign => 'Admin Comm Sending Campaign';

  @override
  String get adminCommStatAllCampaigns => 'Admin Comm Stat All Campaigns';

  @override
  String get adminCommStatDraft => 'Admin Comm Stat Draft';

  @override
  String get adminCommStatNotSentYet => 'Admin Comm Stat Not Sent Yet';

  @override
  String get adminCommStatPendingDelivery => 'Admin Comm Stat Pending Delivery';

  @override
  String get adminCommStatScheduled => 'Admin Comm Stat Scheduled';

  @override
  String get adminCommStatSent => 'Admin Comm Stat Sent';

  @override
  String get adminCommStatSuccessfullySent =>
      'Admin Comm Stat Successfully Sent';

  @override
  String get adminCommStatTotalCampaigns => 'Admin Comm Stat Total Campaigns';

  @override
  String get adminCommSubtitle => 'Admin Comm Subtitle';

  @override
  String get adminCommTabAllCampaigns => 'Admin Comm Tab All Campaigns';

  @override
  String get adminCommTabAnnouncements => 'Admin Comm Tab Announcements';

  @override
  String get adminCommTabEmails => 'Admin Comm Tab Emails';

  @override
  String get adminCommTabPushNotifications =>
      'Admin Comm Tab Push Notifications';

  @override
  String get adminCommTitle => 'Admin Comm Title';

  @override
  String get adminContentAdvanced => 'Admin Content Advanced';

  @override
  String get adminContentAllCategories => 'Admin Content All Categories';

  @override
  String get adminContentAllContentItems => 'Admin Content All Content Items';

  @override
  String get adminContentAllStatus => 'Admin Content All Status';

  @override
  String get adminContentAllStudents => 'Admin Content All Students';

  @override
  String get adminContentArchive => 'Admin Content Archive';

  @override
  String get adminContentArchiveContent => 'Admin Content Archive Content';

  @override
  String get adminContentArchived => 'Admin Content Archived';

  @override
  String get adminContentArchivedNotVisible =>
      'Admin Content Archived Not Visible';

  @override
  String get adminContentArchivedSuccessfully =>
      'Admin Content Archived Successfully';

  @override
  String get adminContentArts => 'Admin Content Arts';

  @override
  String get adminContentAssign => 'Admin Content Assign';

  @override
  String get adminContentAssignContent => 'Admin Content Assign Content';

  @override
  String get adminContentAssignTo => 'Admin Content Assign To';

  @override
  String get adminContentAuthorInstitution =>
      'Admin Content Author Institution';

  @override
  String get adminContentBeginner => 'Admin Content Beginner';

  @override
  String get adminContentBusiness => 'Admin Content Business';

  @override
  String get adminContentCategory => 'Admin Content Category';

  @override
  String get adminContentClearAll => 'Admin Content Clear All';

  @override
  String adminContentConfirmArchive(String title) {
    return 'Admin Content Confirm Archive: $title';
  }

  @override
  String adminContentCreatedAsDraft(String title) {
    return 'Admin Content Created As Draft: $title';
  }

  @override
  String get adminContentDelete => 'Admin Content Delete';

  @override
  String get adminContentDraft => 'Admin Content Draft';

  @override
  String get adminContentEditContent => 'Admin Content Edit Content';

  @override
  String get adminContentEducation => 'Admin Content Education';

  @override
  String get adminContentExpert => 'Admin Content Expert';

  @override
  String get adminContentFailedToArchive => 'Admin Content Failed To Archive';

  @override
  String get adminContentFailedToCreate => 'Admin Content Failed To Create';

  @override
  String get adminContentHybrid => 'Admin Content Hybrid';

  @override
  String get adminContentInProgress => 'Admin Content In Progress';

  @override
  String get adminContentInteractive => 'Admin Content Interactive';

  @override
  String get adminContentIntermediate => 'Admin Content Intermediate';

  @override
  String get adminContentLevelRequired => 'Admin Content Level Required';

  @override
  String get adminContentLive => 'Admin Content Live';

  @override
  String get adminContentLiveContent => 'Admin Content Live Content';

  @override
  String get adminContentLiveSession => 'Admin Content Live Session';

  @override
  String get adminContentMandatoryForUsers =>
      'Admin Content Mandatory For Users';

  @override
  String get adminContentOptionalForUsers => 'Admin Content Optional For Users';

  @override
  String get adminContentPendingApproval => 'Admin Content Pending Approval';

  @override
  String get adminContentPreview => 'Admin Content Preview';

  @override
  String get adminContentPublishUnpublish => 'Admin Content Publish Unpublish';

  @override
  String get adminContentPublished => 'Admin Content Published';

  @override
  String get adminContentRequired => 'Admin Content Required';

  @override
  String get adminContentScience => 'Admin Content Science';

  @override
  String get adminContentSearchByTitleAuthor =>
      'Admin Content Search By Title Author';

  @override
  String get adminContentSearchInstitutions =>
      'Admin Content Search Institutions';

  @override
  String get adminContentSearchStudents => 'Admin Content Search Students';

  @override
  String adminContentSelectedCount(int count) {
    return 'Admin Content Selected Count: $count';
  }

  @override
  String get adminContentSpecificInstitutions =>
      'Admin Content Specific Institutions';

  @override
  String get adminContentSpecificStudents => 'Admin Content Specific Students';

  @override
  String get adminContentStatus => 'Admin Content Status';

  @override
  String get adminContentTechnology => 'Admin Content Technology';

  @override
  String get adminContentText => 'Admin Content Text';

  @override
  String get adminContentTextCourse => 'Admin Content Text Course';

  @override
  String get adminContentTitle => 'Admin Content Title';

  @override
  String get adminContentTotalContent => 'Admin Content Total Content';

  @override
  String get adminContentType => 'Admin Content Type';

  @override
  String get adminContentTypeRequired => 'Admin Content Type Required';

  @override
  String get adminContentVideo => 'Admin Content Video';

  @override
  String get adminContentVideoCourse => 'Admin Content Video Course';

  @override
  String get adminCookiesAcceptAll => 'Admin Cookies Accept All';

  @override
  String get adminCookiesCategoryAcceptanceRates =>
      'Admin Cookies Category Acceptance Rates';

  @override
  String get adminCookiesConsentAnalyticsSubtitle =>
      'Admin Cookies Consent Analytics Subtitle';

  @override
  String get adminCookiesConsentAnalyticsTitle =>
      'Admin Cookies Consent Analytics Title';

  @override
  String get adminCookiesConsentRate => 'Admin Cookies Consent Rate';

  @override
  String get adminCookiesConsentStatusDistribution =>
      'Admin Cookies Consent Status Distribution';

  @override
  String get adminCookiesCustomized => 'Admin Cookies Customized';

  @override
  String get adminCookiesDeclined => 'Admin Cookies Declined';

  @override
  String adminCookiesErrorLoadingStatistics(String error) {
    return 'Admin Cookies Error Loading Statistics: $error';
  }

  @override
  String get adminCookiesExportAllData => 'Admin Cookies Export All Data';

  @override
  String get adminCookiesFilter => 'Admin Cookies Filter';

  @override
  String get adminCookiesFilterAccepted => 'Admin Cookies Filter Accepted';

  @override
  String get adminCookiesFilterAll => 'Admin Cookies Filter All';

  @override
  String get adminCookiesNoRecentActivity => 'Admin Cookies No Recent Activity';

  @override
  String get adminCookiesNotAsked => 'Admin Cookies Not Asked';

  @override
  String get adminCookiesOverview => 'Admin Cookies Overview';

  @override
  String get adminCookiesRecentConsentActivity =>
      'Admin Cookies Recent Consent Activity';

  @override
  String get adminCookiesRefresh => 'Admin Cookies Refresh';

  @override
  String get adminCookiesSearchByUserId => 'Admin Cookies Search By User Id';

  @override
  String get adminCookiesTotalUsers => 'Admin Cookies Total Users';

  @override
  String get adminCookiesUserCookieDataSubtitle =>
      'Admin Cookies User Cookie Data Subtitle';

  @override
  String get adminCookiesUserCookieDataTitle =>
      'Admin Cookies User Cookie Data Title';

  @override
  String get adminCookiesViewAll => 'Admin Cookies View All';

  @override
  String adminExportsErrorExportFailed(String error) {
    return 'Admin Exports Error Export Failed: $error';
  }

  @override
  String get adminExportsErrorFetchFailed => 'Admin Exports Error Fetch Failed';

  @override
  String get adminExportsErrorNoData => 'Admin Exports Error No Data';

  @override
  String get adminExportsExportData => 'Admin Exports Export Data';

  @override
  String get adminExportsExporting => 'Admin Exports Exporting';

  @override
  String get adminExportsFormatCsv => 'Admin Exports Format Csv';

  @override
  String get adminExportsFormatCsvDesc => 'Admin Exports Format Csv Desc';

  @override
  String get adminExportsFormatJson => 'Admin Exports Format Json';

  @override
  String get adminExportsFormatJsonDesc => 'Admin Exports Format Json Desc';

  @override
  String get adminExportsHistoryEmpty => 'Admin Exports History Empty';

  @override
  String adminExportsHistoryItemDetails(
    String source,
    String rows,
    String format,
  ) {
    return '$source • $rows lignes • $format';
  }

  @override
  String get adminExportsHistoryTitle => 'Admin Exports History Title';

  @override
  String get adminExportsSelectFormat => 'Admin Exports Select Format';

  @override
  String get adminExportsSourceActivity => 'Admin Exports Source Activity';

  @override
  String get adminExportsSourceActivityDesc =>
      'Admin Exports Source Activity Desc';

  @override
  String get adminExportsSourceCampaigns => 'Admin Exports Source Campaigns';

  @override
  String get adminExportsSourceCampaignsDesc =>
      'Admin Exports Source Campaigns Desc';

  @override
  String get adminExportsSourceContent => 'Admin Exports Source Content';

  @override
  String get adminExportsSourceContentDesc =>
      'Admin Exports Source Content Desc';

  @override
  String get adminExportsSourceTickets => 'Admin Exports Source Tickets';

  @override
  String get adminExportsSourceTicketsDesc =>
      'Admin Exports Source Tickets Desc';

  @override
  String get adminExportsSourceTransactions =>
      'Admin Exports Source Transactions';

  @override
  String get adminExportsSourceTransactionsDesc =>
      'Admin Exports Source Transactions Desc';

  @override
  String get adminExportsSourceUsers => 'Admin Exports Source Users';

  @override
  String get adminExportsSourceUsersDesc => 'Admin Exports Source Users Desc';

  @override
  String adminExportsSuccessMessage(int count, String fileName) {
    return '$count enregistrements exportés vers $fileName';
  }

  @override
  String get adminSharedAdminAccessRequired =>
      'Admin Shared Admin Access Required';

  @override
  String get adminSharedAdminNavigationSidebar =>
      'Admin Shared Admin Navigation Sidebar';

  @override
  String get adminSharedAdminToolbar => 'Admin Shared Admin Toolbar';

  @override
  String get adminSharedCancel => 'Admin Shared Cancel';

  @override
  String get adminSharedClear => 'Admin Shared Clear';

  @override
  String get adminSharedFeatureUnderDevelopment =>
      'Admin Shared Feature Under Development';

  @override
  String get adminSharedGoBack => 'Admin Shared Go Back';

  @override
  String adminSharedItemsSelected(int count) {
    return 'Admin Shared Items Selected: $count';
  }

  @override
  String get adminSharedMainContent => 'Admin Shared Main Content';

  @override
  String get adminSharedNotifications => 'Admin Shared Notifications';

  @override
  String get adminSharedPleaseSignInWithAdmin =>
      'Admin Shared Please Sign In With Admin';

  @override
  String get adminSharedProfile => 'Admin Shared Profile';

  @override
  String get adminSharedRefreshing => 'Admin Shared Refreshing';

  @override
  String get adminSharedSettings => 'Admin Shared Settings';

  @override
  String get adminSharedSignOut => 'Admin Shared Sign Out';

  @override
  String get adminSharedSignOutConfirmation =>
      'Admin Shared Sign Out Confirmation';

  @override
  String get adminSharedSwitchToDarkMode => 'Admin Shared Switch To Dark Mode';

  @override
  String get adminSharedSwitchToLightMode =>
      'Admin Shared Switch To Light Mode';

  @override
  String get adminSharedToggleDarkMode => 'Admin Shared Toggle Dark Mode';

  @override
  String adminSharedUserMenuFor(String name) {
    return 'Admin Shared User Menu For: $name';
  }

  @override
  String get adminSupportTicketAllCategories =>
      'Admin Support Ticket All Categories';

  @override
  String get adminSupportTicketAllPriorities =>
      'Admin Support Ticket All Priorities';

  @override
  String get adminSupportTicketAllStatus => 'Admin Support Ticket All Status';

  @override
  String get adminSupportTicketAvgResolutionTime =>
      'Admin Support Ticket Avg Resolution Time';

  @override
  String get adminSupportTicketAvgResponse =>
      'Admin Support Ticket Avg Response';

  @override
  String get adminSupportTicketBeingHandled =>
      'Admin Support Ticket Being Handled';

  @override
  String get adminSupportTicketCategoryAccount =>
      'Admin Support Ticket Category Account';

  @override
  String get adminSupportTicketCategoryBilling =>
      'Admin Support Ticket Category Billing';

  @override
  String get adminSupportTicketCategoryGeneral =>
      'Admin Support Ticket Category General';

  @override
  String get adminSupportTicketCategoryLabel =>
      'Admin Support Ticket Category Label';

  @override
  String get adminSupportTicketCategoryTechnical =>
      'Admin Support Ticket Category Technical';

  @override
  String get adminSupportTicketColumnAssignedTo =>
      'Admin Support Ticket Column Assigned To';

  @override
  String get adminSupportTicketColumnCategory =>
      'Admin Support Ticket Column Category';

  @override
  String get adminSupportTicketColumnPriority =>
      'Admin Support Ticket Column Priority';

  @override
  String get adminSupportTicketColumnStatus =>
      'Admin Support Ticket Column Status';

  @override
  String get adminSupportTicketColumnSubject =>
      'Admin Support Ticket Column Subject';

  @override
  String get adminSupportTicketColumnTicketId =>
      'Admin Support Ticket Column Ticket Id';

  @override
  String get adminSupportTicketColumnUser => 'Admin Support Ticket Column User';

  @override
  String adminSupportTicketDaysAgo(int days) {
    return 'Admin Support Ticket Days Ago: $days';
  }

  @override
  String adminSupportTicketHoursAgo(int hours) {
    return 'Admin Support Ticket Hours Ago: $hours';
  }

  @override
  String get adminSupportTicketInProgress => 'Admin Support Ticket In Progress';

  @override
  String get adminSupportTicketJustNow => 'Admin Support Ticket Just Now';

  @override
  String get adminSupportTicketKnowledgeBase =>
      'Admin Support Ticket Knowledge Base';

  @override
  String get adminSupportTicketLiveChat => 'Admin Support Ticket Live Chat';

  @override
  String adminSupportTicketMinutesAgo(int minutes) {
    return 'Admin Support Ticket Minutes Ago: $minutes';
  }

  @override
  String get adminSupportTicketOpenTickets =>
      'Admin Support Ticket Open Tickets';

  @override
  String get adminSupportTicketPendingResolution =>
      'Admin Support Ticket Pending Resolution';

  @override
  String get adminSupportTicketPriorityHigh =>
      'Admin Support Ticket Priority High';

  @override
  String get adminSupportTicketPriorityLabel =>
      'Admin Support Ticket Priority Label';

  @override
  String get adminSupportTicketPriorityLow =>
      'Admin Support Ticket Priority Low';

  @override
  String get adminSupportTicketPriorityMedium =>
      'Admin Support Ticket Priority Medium';

  @override
  String get adminSupportTicketPriorityUrgent =>
      'Admin Support Ticket Priority Urgent';

  @override
  String get adminSupportTicketRefresh => 'Admin Support Ticket Refresh';

  @override
  String get adminSupportTicketResolved => 'Admin Support Ticket Resolved';

  @override
  String get adminSupportTicketRetry => 'Admin Support Ticket Retry';

  @override
  String get adminSupportTicketSearchHint =>
      'Rechercher par ID, sujet ou client...';

  @override
  String get adminSupportTicketStatusClosed =>
      'Admin Support Ticket Status Closed';

  @override
  String get adminSupportTicketStatusInProgress =>
      'Admin Support Ticket Status In Progress';

  @override
  String get adminSupportTicketStatusLabel =>
      'Admin Support Ticket Status Label';

  @override
  String get adminSupportTicketStatusOpen => 'Admin Support Ticket Status Open';

  @override
  String get adminSupportTicketStatusResolved =>
      'Admin Support Ticket Status Resolved';

  @override
  String get adminSupportTicketSubtitle => 'Admin Support Ticket Subtitle';

  @override
  String get adminSupportTicketTitle => 'Admin Support Ticket Title';

  @override
  String get adminSupportTicketTotalResolved =>
      'Admin Support Ticket Total Resolved';

  @override
  String get adminSystemApiBaseUrl => 'URL de base de l\'API';

  @override
  String get adminSystemApiBaseUrlDesc =>
      'L\'URL de base pour les points de terminaison API';

  @override
  String get adminSystemApiKey => 'Clé API';

  @override
  String get adminSystemApiRateLimiting => 'Activer la limitation de débit';

  @override
  String get adminSystemApiRateLimitingDesc =>
      'Limiter les requêtes API pour prévenir les abus';

  @override
  String get adminSystemApiSettingsSubtitle =>
      'Configurer les points de terminaison API et les intégrations tierces';

  @override
  String get adminSystemApiSettingsTitle => 'API et intégrations';

  @override
  String get adminSystemApiVersion => 'Version de l\'API';

  @override
  String get adminSystemApiVersionDesc => 'Version actuelle de l\'API utilisée';

  @override
  String get adminSystemApplicationName => 'Nom de l\'application';

  @override
  String get adminSystemApplicationNameDesc =>
      'Le nom d\'affichage de votre application';

  @override
  String get adminSystemApplicationSubmissions => 'Soumissions de candidatures';

  @override
  String get adminSystemApplicationSubmissionsDesc =>
      'Permettre aux étudiants de soumettre des candidatures universitaires';

  @override
  String get adminSystemConsumerKey => 'Clé consommateur';

  @override
  String get adminSystemConsumerSecret => 'Secret consommateur';

  @override
  String get adminSystemDefaultCurrency => 'Devise par défaut';

  @override
  String get adminSystemDefaultCurrencyDesc =>
      'Devise par défaut pour les transactions';

  @override
  String get adminSystemDefaultLanguage => 'Langue par défaut';

  @override
  String get adminSystemDefaultLanguageDesc =>
      'Langue par défaut de la plateforme';

  @override
  String get adminSystemDefaultRegion => 'Région par défaut';

  @override
  String get adminSystemDefaultRegionDesc =>
      'Région par défaut pour les nouveaux utilisateurs';

  @override
  String get adminSystemDocumentUpload => 'Téléversement de documents';

  @override
  String get adminSystemDocumentUploadDesc =>
      'Permettre aux utilisateurs de téléverser des documents';

  @override
  String get adminSystemEmailApiKeyDesc =>
      'Clé API du fournisseur de service email';

  @override
  String get adminSystemEmailNotifications => 'Notifications par email';

  @override
  String get adminSystemEmailNotificationsDesc =>
      'Envoyer des notifications par email';

  @override
  String get adminSystemEmailService => 'Service email';

  @override
  String get adminSystemEmailServiceDesc =>
      'Fournisseur de service email à utiliser';

  @override
  String get adminSystemEmailSettingsSubtitle =>
      'Configurer le fournisseur de service email et les modèles';

  @override
  String get adminSystemEmailSettingsTitle => 'Paramètres email';

  @override
  String get adminSystemEmailVerification => 'Vérification email';

  @override
  String get adminSystemEmailVerificationDesc =>
      'Exiger la vérification email pour les nouveaux comptes';

  @override
  String get adminSystemEnableCardPayments => 'Activer les paiements par carte';

  @override
  String get adminSystemEnableCardPaymentsDesc =>
      'Accepter les paiements par carte de crédit/débit';

  @override
  String get adminSystemEnableMpesa => 'Activer M-Pesa';

  @override
  String get adminSystemEnableMpesaDesc =>
      'Accepter les paiements mobile M-Pesa';

  @override
  String get adminSystemFeatureFlagsSubtitle =>
      'Activer ou désactiver les fonctionnalités de la plateforme';

  @override
  String get adminSystemFeatureFlagsTitle => 'Fonctionnalités';

  @override
  String get adminSystemFromEmail => 'Email expéditeur';

  @override
  String get adminSystemFromEmailDesc =>
      'Adresse email pour les emails sortants';

  @override
  String get adminSystemFromName => 'Nom expéditeur';

  @override
  String get adminSystemFromNameDesc =>
      'Nom d\'affichage pour les emails sortants';

  @override
  String get adminSystemGeneralSettingsSubtitle =>
      'Configurer les paramètres de base de l\'application';

  @override
  String get adminSystemGeneralSettingsTitle => 'Paramètres généraux';

  @override
  String get adminSystemGoogleAnalyticsId => 'ID Google Analytics';

  @override
  String get adminSystemGoogleAnalyticsIdDesc => 'ID de suivi Google Analytics';

  @override
  String get adminSystemMpesaConsumerKeyDesc =>
      'Clé consommateur API Safaricom M-Pesa';

  @override
  String get adminSystemMpesaConsumerSecretDesc =>
      'Secret consommateur API Safaricom M-Pesa';

  @override
  String get adminSystemMpesaShortcodeDesc => 'Code court entreprise M-Pesa';

  @override
  String get adminSystemNavApiIntegrations => 'API et intégrations';

  @override
  String get adminSystemNavBackupRecovery => 'Sauvegarde et récupération';

  @override
  String get adminSystemNavEmailSettings => 'Paramètres email';

  @override
  String get adminSystemNavFeatureFlags => 'Fonctionnalités';

  @override
  String get adminSystemNavGeneral => 'Général';

  @override
  String get adminSystemNavPaymentGateways => 'Passerelles de paiement';

  @override
  String get adminSystemNavSecurity => 'Sécurité';

  @override
  String get adminSystemNavSmsSettings => 'Paramètres SMS';

  @override
  String get adminSystemPaymentProcessing => 'Traitement des paiements';

  @override
  String get adminSystemPaymentProcessingDesc =>
      'Activer le traitement des paiements pour les frais';

  @override
  String get adminSystemPaymentProcessor => 'Processeur de paiement';

  @override
  String get adminSystemPaymentProcessorDesc =>
      'Processeur de paiement par carte à utiliser';

  @override
  String get adminSystemPaymentSettingsSubtitle =>
      'Configurer les passerelles et processeurs de paiement';

  @override
  String get adminSystemPaymentSettingsTitle => 'Paramètres de paiement';

  @override
  String get adminSystemPublishableKey => 'Clé publique';

  @override
  String get adminSystemPublishableKeyDesc =>
      'Clé API publique pour utilisation côté client';

  @override
  String get adminSystemPushNotifications => 'Notifications push';

  @override
  String get adminSystemPushNotificationsDesc =>
      'Envoyer des notifications push aux applications mobiles';

  @override
  String get adminSystemRecommendations => 'Recommandations';

  @override
  String get adminSystemRecommendationsDesc =>
      'Activer les recommandations universitaires par IA';

  @override
  String get adminSystemSecretKey => 'Clé secrète';

  @override
  String get adminSystemSecretKeyDesc =>
      'Clé API secrète pour utilisation côté serveur';

  @override
  String get adminSystemSectionApiConfiguration => 'Configuration API';

  @override
  String get adminSystemSectionApplication => 'Application';

  @override
  String get adminSystemSectionApplicationFeatures =>
      'Fonctionnalités de candidature';

  @override
  String get adminSystemSectionCardPayments => 'Paiements par carte';

  @override
  String get adminSystemSectionCommunication => 'Communication';

  @override
  String get adminSystemSectionEmailProvider => 'Fournisseur email';

  @override
  String get adminSystemSectionMpesa => 'M-Pesa';

  @override
  String get adminSystemSectionRegional => 'Régional';

  @override
  String get adminSystemSectionSmsProvider => 'Fournisseur SMS';

  @override
  String get adminSystemSectionThirdPartyServices => 'Services tiers';

  @override
  String get adminSystemSectionUserFeatures => 'Fonctionnalités utilisateur';

  @override
  String get adminSystemSentryDsn => 'DSN Sentry';

  @override
  String get adminSystemSentryDsnDesc => 'DSN de suivi d\'erreurs Sentry';

  @override
  String get adminSystemSettingsSavedError =>
      'Échec de l\'enregistrement des paramètres. Veuillez réessayer.';

  @override
  String get adminSystemSettingsSavedSuccess =>
      'Paramètres enregistrés avec succès';

  @override
  String get adminSystemSettingsSubtitle => 'Gérer la configuration du système';

  @override
  String get adminSystemSettingsTitle => 'Paramètres système';

  @override
  String get adminSystemShortcode => 'Code court';

  @override
  String get adminSystemSmsApiKeyDesc =>
      'Clé API du fournisseur de service SMS';

  @override
  String get adminSystemSmsNotifications => 'Notifications SMS';

  @override
  String get adminSystemSmsNotificationsDesc =>
      'Envoyer des notifications par SMS';

  @override
  String get adminSystemSmsSenderId => 'ID expéditeur';

  @override
  String get adminSystemSmsSenderIdDesc =>
      'ID expéditeur pour les messages SMS sortants';

  @override
  String get adminSystemSmsService => 'Service SMS';

  @override
  String get adminSystemSmsServiceDesc =>
      'Fournisseur de service SMS à utiliser';

  @override
  String get adminSystemSmsSettingsSubtitle =>
      'Configurer le fournisseur de service SMS et l\'ID expéditeur';

  @override
  String get adminSystemSmsSettingsTitle => 'Paramètres SMS';

  @override
  String get adminSystemSocialLogin => 'Connexion sociale';

  @override
  String get adminSystemSocialLoginDesc =>
      'Permettre la connexion avec Google, Facebook, etc.';

  @override
  String get adminSystemSupportEmail => 'Email support';

  @override
  String get adminSystemSupportEmailDesc =>
      'Adresse email pour le support utilisateur';

  @override
  String get adminSystemSupportPhone => 'Téléphone support';

  @override
  String get adminSystemSupportPhoneDesc =>
      'Numéro de téléphone pour le support utilisateur';

  @override
  String get adminSystemUnsavedChanges =>
      'Vous avez des modifications non enregistrées';

  @override
  String get adminSystemUserRegistration => 'Inscription utilisateur';

  @override
  String get adminSystemUserRegistrationDesc =>
      'Permettre aux nouveaux utilisateurs de s\'inscrire';

  @override
  String get adminSystemViewAuditLogs => 'Voir les journaux d\'audit';

  @override
  String get adminUserDetailActivate => 'Admin User Detail Activate';

  @override
  String get adminUserDetailApplications => 'Admin User Detail Applications';

  @override
  String get adminUserDetailBackToStudents =>
      'Admin User Detail Back To Students';

  @override
  String get adminUserDetailCoursesEnrolled =>
      'Admin User Detail Courses Enrolled';

  @override
  String get adminUserDetailDeleteAccount => 'Admin User Detail Delete Account';

  @override
  String get adminUserDetailEditProfile => 'Admin User Detail Edit Profile';

  @override
  String get adminUserDetailGrade => 'Admin User Detail Grade';

  @override
  String get adminUserDetailGradePrefix => 'Admin User Detail Grade Prefix';

  @override
  String get adminUserDetailMessageComingSoon =>
      'Admin User Detail Message Coming Soon';

  @override
  String get adminUserDetailOverallProgress =>
      'Admin User Detail Overall Progress';

  @override
  String get adminUserDetailSendMessage => 'Admin User Detail Send Message';

  @override
  String get adminUserDetailStatusActive => 'Admin User Detail Status Active';

  @override
  String get adminUserDetailStatusInactive =>
      'Admin User Detail Status Inactive';

  @override
  String get adminUserDetailStudentDetails =>
      'Admin User Detail Student Details';

  @override
  String get adminUserDetailStudentId => 'Admin User Detail Student Id';

  @override
  String get adminUserDetailSuspend => 'Admin User Detail Suspend';

  @override
  String get adminUserDetailTabAcademic => 'Admin User Detail Tab Academic';

  @override
  String get adminUserDetailTabActivity => 'Admin User Detail Tab Activity';

  @override
  String get adminUserDetailTabApplications =>
      'Admin User Detail Tab Applications';

  @override
  String get adminUserDetailTabDocuments => 'Admin User Detail Tab Documents';

  @override
  String get adminUserDetailTabOverview => 'Admin User Detail Tab Overview';

  @override
  String get adminUserDetailTabPayments => 'Admin User Detail Tab Payments';

  @override
  String get adminUserDetailUnknownStudent =>
      'Admin User Detail Unknown Student';

  @override
  String get adminUserFormAcademicInformation =>
      'Admin User Form Academic Information';

  @override
  String get adminUserFormAddNewStudent => 'Admin User Form Add New Student';

  @override
  String get adminUserFormBackToStudents => 'Admin User Form Back To Students';

  @override
  String get adminUserFormCreateStudentAccount =>
      'Admin User Form Create Student Account';

  @override
  String get adminUserFormDateFormat => 'Admin User Form Date Format';

  @override
  String get adminUserFormDateOfBirth => 'Admin User Form Date Of Birth';

  @override
  String get adminUserFormEditStudent => 'Admin User Form Edit Student';

  @override
  String get adminUserFormEmail => 'Admin User Form Email';

  @override
  String get adminUserFormEmailInvalid => 'Admin User Form Email Invalid';

  @override
  String get adminUserFormEmailRequired => 'Admin User Form Email Required';

  @override
  String get adminUserFormFirstName => 'Admin User Form First Name';

  @override
  String get adminUserFormFirstNameRequired =>
      'Admin User Form First Name Required';

  @override
  String get adminUserFormGender => 'Admin User Form Gender';

  @override
  String get adminUserFormGenderFemale => 'Admin User Form Gender Female';

  @override
  String get adminUserFormGenderMale => 'Admin User Form Gender Male';

  @override
  String get adminUserFormGenderOther => 'Admin User Form Gender Other';

  @override
  String get adminUserFormGenderPreferNotToSay =>
      'Admin User Form Gender Prefer Not To Say';

  @override
  String get adminUserFormGrade => 'Admin User Form Grade';

  @override
  String get adminUserFormGrade10 => 'Admin User Form Grade10';

  @override
  String get adminUserFormGrade11 => 'Admin User Form Grade11';

  @override
  String get adminUserFormGrade12 => 'Admin User Form Grade12';

  @override
  String get adminUserFormGrade9 => 'Admin User Form Grade9';

  @override
  String get adminUserFormLastName => 'Admin User Form Last Name';

  @override
  String get adminUserFormLastNameRequired =>
      'Admin User Form Last Name Required';

  @override
  String get adminUserFormPersonalInformation =>
      'Admin User Form Personal Information';

  @override
  String get adminUserFormPhone => 'Admin User Form Phone';

  @override
  String get adminUserFormStatus => 'Admin User Form Status';

  @override
  String get adminUserFormStatusActive => 'Admin User Form Status Active';

  @override
  String get adminUserFormStatusInactive => 'Admin User Form Status Inactive';

  @override
  String get adminUserFormStatusPendingVerification =>
      'Admin User Form Status Pending Verification';

  @override
  String get adminUserFormStatusSuspended => 'Admin User Form Status Suspended';

  @override
  String get adminUserFormStudentCreatedSuccess =>
      'Admin User Form Student Created Success';

  @override
  String get adminUserFormStudentUpdatedSuccess =>
      'Admin User Form Student Updated Success';

  @override
  String get adminUserFormUpdateStudentInfo =>
      'Admin User Form Update Student Info';

  @override
  String get adminUsersListActivate => 'Admin Users List Activate';

  @override
  String adminUsersListActivateStudentsConfirm(int count) {
    return 'Admin Users List Activate Students Confirm: $count';
  }

  @override
  String get adminUsersListActivateStudentsTitle =>
      'Admin Users List Activate Students Title';

  @override
  String get adminUsersListAddInstitution => 'Admin Users List Add Institution';

  @override
  String get adminUsersListAddStudent => 'Admin Users List Add Student';

  @override
  String get adminUsersListAllGrades => 'Admin Users List All Grades';

  @override
  String get adminUsersListAllStatus => 'Admin Users List All Status';

  @override
  String get adminUsersListAllTypes => 'Admin Users List All Types';

  @override
  String get adminUsersListApprove => 'Admin Users List Approve';

  @override
  String adminUsersListApproveInstitutionsConfirm(int count) {
    return 'Admin Users List Approve Institutions Confirm: $count';
  }

  @override
  String get adminUsersListApproveInstitutionsTitle =>
      'Admin Users List Approve Institutions Title';

  @override
  String get adminUsersListCancel => 'Admin Users List Cancel';

  @override
  String get adminUsersListColumnApplications =>
      'Admin Users List Column Applications';

  @override
  String get adminUsersListColumnGrade => 'Admin Users List Column Grade';

  @override
  String get adminUsersListColumnInstitution =>
      'Admin Users List Column Institution';

  @override
  String get adminUsersListColumnInstitutionId =>
      'Admin Users List Column Institution Id';

  @override
  String get adminUsersListColumnJoined => 'Admin Users List Column Joined';

  @override
  String get adminUsersListColumnLocation => 'Admin Users List Column Location';

  @override
  String get adminUsersListColumnPrograms => 'Admin Users List Column Programs';

  @override
  String get adminUsersListColumnSchool => 'Admin Users List Column School';

  @override
  String get adminUsersListColumnStatus => 'Admin Users List Column Status';

  @override
  String get adminUsersListColumnStudent => 'Admin Users List Column Student';

  @override
  String get adminUsersListColumnStudentId =>
      'Admin Users List Column Student Id';

  @override
  String get adminUsersListColumnType => 'Admin Users List Column Type';

  @override
  String get adminUsersListDeactivate => 'Admin Users List Deactivate';

  @override
  String get adminUsersListDeactivateAccount =>
      'Admin Users List Deactivate Account';

  @override
  String adminUsersListDeactivateInstitutionsConfirm(int count) {
    return 'Admin Users List Deactivate Institutions Confirm: $count';
  }

  @override
  String get adminUsersListDeactivateInstitutionsTitle =>
      'Admin Users List Deactivate Institutions Title';

  @override
  String adminUsersListDeactivateStudentsConfirm(int count) {
    return 'Admin Users List Deactivate Students Confirm: $count';
  }

  @override
  String get adminUsersListDeactivateStudentsTitle =>
      'Admin Users List Deactivate Students Title';

  @override
  String get adminUsersListEditInstitution =>
      'Admin Users List Edit Institution';

  @override
  String get adminUsersListEditStudent => 'Admin Users List Edit Student';

  @override
  String get adminUsersListExport => 'Admin Users List Export';

  @override
  String get adminUsersListExportInstitutions =>
      'Admin Users List Export Institutions';

  @override
  String get adminUsersListExportStudents => 'Admin Users List Export Students';

  @override
  String get adminUsersListGrade10 => 'Admin Users List Grade10';

  @override
  String get adminUsersListGrade11 => 'Admin Users List Grade11';

  @override
  String get adminUsersListGrade12 => 'Admin Users List Grade12';

  @override
  String get adminUsersListGrade9 => 'Admin Users List Grade9';

  @override
  String get adminUsersListGradeLabel => 'Admin Users List Grade Label';

  @override
  String get adminUsersListInstitutionsSubtitle =>
      'Admin Users List Institutions Subtitle';

  @override
  String get adminUsersListInstitutionsTitle =>
      'Admin Users List Institutions Title';

  @override
  String get adminUsersListSearchInstitutionsHint =>
      'Admin Users List Search Institutions Hint';

  @override
  String get adminUsersListSearchStudentsHint =>
      'Admin Users List Search Students Hint';

  @override
  String get adminUsersListStatusActive => 'Admin Users List Status Active';

  @override
  String get adminUsersListStatusInactive => 'Admin Users List Status Inactive';

  @override
  String get adminUsersListStatusLabel => 'Admin Users List Status Label';

  @override
  String get adminUsersListStatusPending => 'Admin Users List Status Pending';

  @override
  String get adminUsersListStatusPendingApproval =>
      'Admin Users List Status Pending Approval';

  @override
  String get adminUsersListStatusPendingVerification =>
      'Admin Users List Status Pending Verification';

  @override
  String get adminUsersListStatusRejected => 'Admin Users List Status Rejected';

  @override
  String get adminUsersListStudentsSubtitle =>
      'Admin Users List Students Subtitle';

  @override
  String get adminUsersListStudentsTitle => 'Admin Users List Students Title';

  @override
  String get adminUsersListTypeCollege => 'Admin Users List Type College';

  @override
  String get adminUsersListTypeLabel => 'Admin Users List Type Label';

  @override
  String get adminUsersListTypeLanguageSchool =>
      'Admin Users List Type Language School';

  @override
  String get adminUsersListTypeUniversity => 'Admin Users List Type University';

  @override
  String get adminUsersListTypeVocational => 'Admin Users List Type Vocational';

  @override
  String get adminUsersListViewDetails => 'Admin Users List View Details';

  @override
  String get instCourseAdd => 'Inst Course Add';

  @override
  String get instCourseAddLearningObjective =>
      'Inst Course Add Learning Objective';

  @override
  String get instCourseAddModuleSubtitle => 'Inst Course Add Module Subtitle';

  @override
  String get instCourseClose => 'Inst Course Close';

  @override
  String get instCourseCopyToClipboard => 'Inst Course Copy To Clipboard';

  @override
  String get instCourseCreateModule => 'Inst Course Create Module';

  @override
  String get instCourseCreateNewModule => 'Inst Course Create New Module';

  @override
  String get instCourseCtrlPToPreview => 'Inst Course Ctrl P To Preview';

  @override
  String get instCourseCtrlSToSave => 'Inst Course Ctrl S To Save';

  @override
  String get instCourseDesktop => 'Inst Course Desktop';

  @override
  String get instCourseDiscardChanges => 'Inst Course Discard Changes';

  @override
  String get instCourseEdit => 'Inst Course Edit';

  @override
  String get instCourseEditLearningObjective =>
      'Inst Course Edit Learning Objective';

  @override
  String get instCourseEstimatedDuration => 'Inst Course Estimated Duration';

  @override
  String get instCourseEstimatedDurationHelper =>
      'Inst Course Estimated Duration Helper';

  @override
  String get instCourseExportInfo => 'Inst Course Export Info';

  @override
  String get instCourseExportQuestions => 'Inst Course Export Questions';

  @override
  String get instCourseFixIssuesBeforeSaving =>
      'Inst Course Fix Issues Before Saving';

  @override
  String get instCourseImport => 'Inst Course Import';

  @override
  String get instCourseImportFailed => 'Inst Course Import Failed';

  @override
  String get instCourseImportInfo => 'Inst Course Import Info';

  @override
  String get instCourseImportQuestions => 'Inst Course Import Questions';

  @override
  String get instCourseImportSuccess => 'Inst Course Import Success';

  @override
  String get instCourseJsonCopied => 'Inst Course Json Copied';

  @override
  String get instCourseJsonData => 'Inst Course Json Data';

  @override
  String get instCourseLearningObjectivesInfo =>
      'Inst Course Learning Objectives Info';

  @override
  String get instCourseMandatory => 'Inst Course Mandatory';

  @override
  String instCourseMinutesShort(int minutes) {
    return 'Inst Course Minutes Short: $minutes';
  }

  @override
  String get instCourseMobile => 'Inst Course Mobile';

  @override
  String get instCourseModuleDescription => 'Inst Course Module Description';

  @override
  String get instCourseModuleDescriptionHelper =>
      'Inst Course Module Description Helper';

  @override
  String get instCourseModuleDescriptionHint =>
      'Inst Course Module Description Hint';

  @override
  String get instCourseModuleHiddenFromStudents =>
      'Inst Course Module Hidden From Students';

  @override
  String instCourseModuleNumber(int number) {
    return 'Inst Course Module Number: $number';
  }

  @override
  String get instCourseModuleOptional => 'Inst Course Module Optional';

  @override
  String get instCourseModuleOverview => 'Inst Course Module Overview';

  @override
  String get instCourseModuleTitle => 'Inst Course Module Title';

  @override
  String get instCourseModuleTitleHelper => 'Inst Course Module Title Helper';

  @override
  String get instCourseModuleTitleHint => 'Inst Course Module Title Hint';

  @override
  String get instCourseModuleTitleMinLength =>
      'Inst Course Module Title Min Length';

  @override
  String get instCourseModuleTitleRequired =>
      'Inst Course Module Title Required';

  @override
  String get instCourseModuleVisibleToStudents =>
      'Inst Course Module Visible To Students';

  @override
  String get instCourseNoObjectivesSubtitle =>
      'Inst Course No Objectives Subtitle';

  @override
  String get instCourseNoObjectivesYet => 'Inst Course No Objectives Yet';

  @override
  String get instCourseNoOtherModulesAvailable =>
      'Inst Course No Other Modules Available';

  @override
  String get instCourseObjective => 'Inst Course Objective';

  @override
  String get instCourseObjectiveHint => 'Inst Course Objective Hint';

  @override
  String instCourseObjectivesCount(int count) {
    return 'Inst Course Objectives Count: $count';
  }

  @override
  String get instCourseOk => 'Inst Course Ok';

  @override
  String get instCoursePasteJsonHere => 'Inst Course Paste Json Here';

  @override
  String get instCoursePrerequisitesDescription =>
      'Inst Course Prerequisites Description';

  @override
  String get instCoursePreview => 'Inst Course Preview';

  @override
  String get instCoursePublished => 'Inst Course Published';

  @override
  String get instCoursePublishingSettings => 'Inst Course Publishing Settings';

  @override
  String get instCourseSaveAsDraft => 'Inst Course Save As Draft';

  @override
  String get instCourseSaved => 'Inst Course Saved';

  @override
  String get instCourseSettings => 'Inst Course Settings';

  @override
  String get instCourseStay => 'Inst Course Stay';

  @override
  String get instCourseStudentPreview => 'Inst Course Student Preview';

  @override
  String get instCourseStudentsMustComplete =>
      'Inst Course Students Must Complete';

  @override
  String get instCourseTablet => 'Inst Course Tablet';

  @override
  String get instCourseUnsavedChanges => 'Inst Course Unsaved Changes';

  @override
  String get instCourseUnsavedChangesMessage =>
      'Inst Course Unsaved Changes Message';

  @override
  String get instCourseUpdate => 'Inst Course Update';

  @override
  String get instCourseUpdateModule => 'Inst Course Update Module';

  @override
  String get instCourseUpdateModuleSubtitle =>
      'Inst Course Update Module Subtitle';

  @override
  String get instCourseValidationErrors => 'Inst Course Validation Errors';

  @override
  String get instCoursesDescription => 'Description';

  @override
  String get instCoursesEditCourse => 'Modifier le Cours';

  @override
  String instCoursesEnrolledCount(int count) {
    return '$count Inscrit(s)';
  }

  @override
  String get instCoursesLearningOutcomes => 'Ce que Vous Apprendrez';

  @override
  String get instCoursesPrerequisites => 'Prérequis';

  @override
  String get instCoursesPublished => 'PUBLIÉ';

  @override
  String get instCoursesQuickActions => 'Actions Rapides';

  @override
  String get instCoursesStatistics => 'Statistiques';

  @override
  String get instDebugAuthInfo => 'Inst Debug Auth Info';

  @override
  String get instDebugError => 'Inst Debug Error';

  @override
  String get instDebugRetry => 'Inst Debug Retry';

  @override
  String get instDebugRunningDiagnostics => 'Inst Debug Running Diagnostics';

  @override
  String get instDebugTitle => 'Inst Debug Title';

  @override
  String get instDebugUserStatus => 'Inst Debug User Status';

  @override
  String sharedCookiesDataExportedRecords(String count) {
    return 'Shared Cookies Data Exported Records: $count';
  }

  @override
  String sharedCookiesErrorLoadingConsent(String error) {
    return 'Shared Cookies Error Loading Consent: $error';
  }

  @override
  String sharedCookiesExpires(String date) {
    return 'Shared Cookies Expires: $date';
  }

  @override
  String sharedCookiesUpdated(String date) {
    return 'Shared Cookies Updated: $date';
  }

  @override
  String get sharedDocumentsBack => 'Shared Documents Back';

  @override
  String get sharedDocumentsCancel => 'Shared Documents Cancel';

  @override
  String get sharedDocumentsCategory => 'Shared Documents Category';

  @override
  String get sharedDocumentsDelete => 'Shared Documents Delete';

  @override
  String sharedDocumentsDeleteDocumentConfirm(String name) {
    return 'Shared Documents Delete Document Confirm: $name';
  }

  @override
  String get sharedDocumentsDeleteDocumentTitle =>
      'Shared Documents Delete Document Title';

  @override
  String get sharedDocumentsDescription => 'Shared Documents Description';

  @override
  String get sharedDocumentsDocumentDeleted =>
      'Shared Documents Document Deleted';

  @override
  String get sharedDocumentsDocumentInfo => 'Shared Documents Document Info';

  @override
  String get sharedDocumentsDocumentInformation =>
      'Shared Documents Document Information';

  @override
  String get sharedDocumentsDownload => 'Shared Documents Download';

  @override
  String get sharedDocumentsDownloadFile => 'Shared Documents Download File';

  @override
  String sharedDocumentsDownloading(String filename) {
    return 'Shared Documents Downloading: $filename';
  }

  @override
  String get sharedDocumentsName => 'Shared Documents Name';

  @override
  String get sharedDocumentsPending => 'Shared Documents Pending';

  @override
  String get sharedDocumentsPreviewNotAvailable =>
      'Shared Documents Preview Not Available';

  @override
  String sharedDocumentsPreviewNotAvailableSubtitle(String type) {
    return 'Shared Documents Preview Not Available Subtitle: $type';
  }

  @override
  String get sharedDocumentsShare => 'Shared Documents Share';

  @override
  String get sharedDocumentsShareComingSoon =>
      'Shared Documents Share Coming Soon';

  @override
  String get sharedDocumentsSize => 'Shared Documents Size';

  @override
  String get sharedDocumentsType => 'Shared Documents Type';

  @override
  String get sharedDocumentsUnknown => 'Shared Documents Unknown';

  @override
  String get sharedDocumentsUploadDate => 'Shared Documents Upload Date';

  @override
  String get sharedDocumentsUploadedBy => 'Shared Documents Uploaded By';

  @override
  String get sharedDocumentsVerificationStatus =>
      'Shared Documents Verification Status';

  @override
  String get sharedDocumentsVerified => 'Shared Documents Verified';

  @override
  String sharedExamsAnsweredCount(int count) {
    return 'Shared Exams Answered Count: $count';
  }

  @override
  String get sharedExamsNext => 'Shared Exams Next';

  @override
  String get sharedExamsPrevious => 'Shared Exams Previous';

  @override
  String sharedExamsQuestionProgress(int current, int total) {
    return 'Question $current sur $total';
  }

  @override
  String get sharedExamsSubmit => 'Shared Exams Submit';

  @override
  String get sharedExamsSubmitting => 'Shared Exams Submitting';

  @override
  String get sharedFocusBreakCompleteReadyToFocus =>
      'Shared Focus Break Complete Ready To Focus';

  @override
  String get sharedFocusFinish => 'Shared Focus Finish';

  @override
  String get sharedFocusGreatWorkTimeForBreak =>
      'Shared Focus Great Work Time For Break';

  @override
  String get sharedFocusPomodorosToday => 'Shared Focus Pomodoros Today';

  @override
  String get sharedFocusSessionComplete => 'Shared Focus Session Complete';

  @override
  String get sharedFocusStartBreak => 'Shared Focus Start Break';

  @override
  String get sharedFocusStartFocus => 'Shared Focus Start Focus';

  @override
  String get sharedFocusTimerTitle => 'Shared Focus Timer Title';

  @override
  String sharedHelpArticleCount(int count) {
    return 'Shared Help Article Count: $count';
  }

  @override
  String sharedHelpDaysAgo(int days) {
    return 'Shared Help Days Ago: $days';
  }

  @override
  String get sharedHelpMonthApr => 'Shared Help Month Apr';

  @override
  String get sharedHelpMonthAug => 'Shared Help Month Aug';

  @override
  String get sharedHelpMonthDec => 'Shared Help Month Dec';

  @override
  String get sharedHelpMonthFeb => 'Shared Help Month Feb';

  @override
  String get sharedHelpMonthJan => 'Shared Help Month Jan';

  @override
  String get sharedHelpMonthJul => 'Shared Help Month Jul';

  @override
  String get sharedHelpMonthJun => 'Shared Help Month Jun';

  @override
  String get sharedHelpMonthMar => 'Shared Help Month Mar';

  @override
  String get sharedHelpMonthMay => 'Shared Help Month May';

  @override
  String get sharedHelpMonthNov => 'Shared Help Month Nov';

  @override
  String get sharedHelpMonthOct => 'Shared Help Month Oct';

  @override
  String get sharedHelpMonthSep => 'Shared Help Month Sep';

  @override
  String sharedHelpSearchingFor(String query) {
    return 'Shared Help Searching For: $query';
  }

  @override
  String get sharedHelpToday => 'Shared Help Today';

  @override
  String sharedHelpViewCount(int count) {
    return 'Shared Help View Count: $count';
  }

  @override
  String get sharedHelpYesterday => 'Shared Help Yesterday';

  @override
  String get sharedMessagingChat => 'Shared Messaging Chat';

  @override
  String get sharedMessagingConnecting => 'Shared Messaging Connecting';

  @override
  String get sharedMessagingFailedToSend => 'Shared Messaging Failed To Send';

  @override
  String get sharedMessagingLoadingMessages =>
      'Shared Messaging Loading Messages';

  @override
  String get sharedMessagingNoMessagesYet => 'Shared Messaging No Messages Yet';

  @override
  String get sharedMessagingRetry => 'Shared Messaging Retry';

  @override
  String get sharedMessagingStartConversation =>
      'Shared Messaging Start Conversation';

  @override
  String get sharedMessagingTypeMessage => 'Shared Messaging Type Message';

  @override
  String get sharedMessagingTyping => 'Shared Messaging Typing';

  @override
  String get sharedMessagingTypingMultiple =>
      'Shared Messaging Typing Multiple';

  @override
  String get sharedNotesCancel => 'Shared Notes Cancel';

  @override
  String get sharedNotesDiscard => 'Shared Notes Discard';

  @override
  String get sharedNotesPleaseEnterTitle => 'Shared Notes Please Enter Title';

  @override
  String get sharedNotesUnsavedChangesMessage =>
      'Shared Notes Unsaved Changes Message';

  @override
  String get sharedNotesUnsavedChangesTitle =>
      'Shared Notes Unsaved Changes Title';

  @override
  String get sharedNotificationsMarkAllRead =>
      'Shared Notifications Mark All Read';

  @override
  String get sharedNotificationsTitle => 'Shared Notifications Title';

  @override
  String get sharedPaymentsPaymentSuccessfulTitle =>
      'Shared Payments Payment Successful Title';

  @override
  String get sharedProfileRetry => 'Shared Profile Retry';

  @override
  String get sharedQuizzesAnswered => 'Shared Quizzes Answered';

  @override
  String get sharedQuizzesCancel => 'Shared Quizzes Cancel';

  @override
  String get sharedQuizzesCurrent => 'Shared Quizzes Current';

  @override
  String get sharedQuizzesExit => 'Shared Quizzes Exit';

  @override
  String get sharedQuizzesExitQuizMessage => 'Shared Quizzes Exit Quiz Message';

  @override
  String get sharedQuizzesExitQuizTitle => 'Shared Quizzes Exit Quiz Title';

  @override
  String get sharedQuizzesNext => 'Shared Quizzes Next';

  @override
  String get sharedQuizzesOk => 'Shared Quizzes Ok';

  @override
  String get sharedQuizzesPrevious => 'Shared Quizzes Previous';

  @override
  String get sharedQuizzesQuestionNavigator =>
      'Shared Quizzes Question Navigator';

  @override
  String get sharedQuizzesReview => 'Shared Quizzes Review';

  @override
  String get sharedQuizzesSubmit => 'Shared Quizzes Submit';

  @override
  String get sharedQuizzesSubmitAnyway => 'Shared Quizzes Submit Anyway';

  @override
  String get sharedQuizzesSubmitQuiz => 'Shared Quizzes Submit Quiz';

  @override
  String get sharedQuizzesSubmitQuizMessage =>
      'Shared Quizzes Submit Quiz Message';

  @override
  String get sharedQuizzesSubmitQuizTitle => 'Shared Quizzes Submit Quiz Title';

  @override
  String get sharedQuizzesTimeExpiredMessage =>
      'Shared Quizzes Time Expired Message';

  @override
  String get sharedQuizzesTimesUp => 'Shared Quizzes Times Up';

  @override
  String get sharedQuizzesUnanswered => 'Shared Quizzes Unanswered';

  @override
  String sharedQuizzesUnansweredQuestionsMessage(int count) {
    return 'Shared Quizzes Unanswered Questions Message: $count';
  }

  @override
  String get sharedQuizzesUnansweredQuestionsTitle =>
      'Shared Quizzes Unanswered Questions Title';

  @override
  String get sharedResourcesAddedToBookmarks =>
      'Shared Resources Added To Bookmarks';

  @override
  String get sharedResourcesAudioControlsComingSoon =>
      'Shared Resources Audio Controls Coming Soon';

  @override
  String get sharedResourcesAudioControlsFeature =>
      'Shared Resources Audio Controls Feature';

  @override
  String get sharedResourcesAudioPlaybackComingSoon =>
      'Shared Resources Audio Playback Coming Soon';

  @override
  String get sharedResourcesAudioPlayerFeature =>
      'Shared Resources Audio Player Feature';

  @override
  String get sharedResourcesBookmarkTooltip =>
      'Shared Resources Bookmark Tooltip';

  @override
  String get sharedResourcesCheckConnectionMessage =>
      'Shared Resources Check Connection Message';

  @override
  String get sharedResourcesDownloadCompleted =>
      'Shared Resources Download Completed';

  @override
  String get sharedResourcesDownloadToView =>
      'Shared Resources Download To View';

  @override
  String get sharedResourcesDownloadTooltip =>
      'Shared Resources Download Tooltip';

  @override
  String get sharedResourcesFailedToLoadImage =>
      'Shared Resources Failed To Load Image';

  @override
  String get sharedResourcesFailedToLoadResource =>
      'Shared Resources Failed To Load Resource';

  @override
  String get sharedResourcesFileTypeRequiresViewer =>
      'Shared Resources File Type Requires Viewer';

  @override
  String sharedResourcesOpeningUrl(String url) {
    return 'Shared Resources Opening Url: $url';
  }

  @override
  String get sharedResourcesPdfViewerMessage =>
      'Shared Resources Pdf Viewer Message';

  @override
  String get sharedResourcesPdfViewerTitle =>
      'Shared Resources Pdf Viewer Title';

  @override
  String get sharedResourcesRemovedFromBookmarks =>
      'Shared Resources Removed From Bookmarks';

  @override
  String get sharedResourcesRetry => 'Shared Resources Retry';

  @override
  String get sharedResourcesShareComingSoon =>
      'Shared Resources Share Coming Soon';

  @override
  String get sharedResourcesShareTooltip => 'Shared Resources Share Tooltip';

  @override
  String get sharedResourcesVideoPlaybackComingSoon =>
      'Shared Resources Video Playback Coming Soon';

  @override
  String get sharedResourcesVideoPlayerMessage =>
      'Shared Resources Video Player Message';

  @override
  String get sharedResourcesVideoPlayerTitle =>
      'Shared Resources Video Player Title';

  @override
  String get sharedScheduleCalendar => 'Shared Schedule Calendar';

  @override
  String get sharedScheduleFilter => 'Shared Schedule Filter';

  @override
  String get sharedScheduleToday => 'Shared Schedule Today';

  @override
  String get sharedTasksCourseLabel => 'Shared Tasks Course Label';

  @override
  String get sharedTasksDeleteTooltip => 'Shared Tasks Delete Tooltip';

  @override
  String get sharedTasksDescriptionLabel => 'Shared Tasks Description Label';

  @override
  String get sharedTasksDetailsTitle => 'Shared Tasks Details Title';

  @override
  String get sharedTasksDueDateLabel => 'Shared Tasks Due Date Label';

  @override
  String get sharedTasksEditTooltip => 'Shared Tasks Edit Tooltip';

  @override
  String get sharedTasksFavoriteTooltip => 'Shared Tasks Favorite Tooltip';

  @override
  String get sharedTasksOverdueWarning => 'Shared Tasks Overdue Warning';

  @override
  String studentAppsFailedToPrepare(String error) {
    return 'Student Apps Failed To Prepare: $error';
  }

  @override
  String get studentAppsUploadingDocuments =>
      'Student Apps Uploading Documents';

  @override
  String studentCoursesCompletedOn(String date) {
    return 'Student Courses Completed On: $date';
  }

  @override
  String studentCoursesError(String error) {
    return 'Student Courses Error: $error';
  }

  @override
  String get studentCoursesFailedToLoadDetails =>
      'Student Courses Failed To Load Details';

  @override
  String get adminContentSelectCourse => 'Sélectionner un cours';

  @override
  String get adminContentModuleTitleRequired => 'Titre du module *';

  @override
  String get adminContentEnterModuleTitle => 'Entrer le titre du module';

  @override
  String get adminContentEnterModuleDescription =>
      'Entrer la description du module (optionnel)';

  @override
  String get adminContentModuleCreatedAsDraft =>
      'Le module sera créé en tant que brouillon.';

  @override
  String get adminContentPleaseSelectCourse => 'Veuillez sélectionner un cours';

  @override
  String get adminContentFailedToCreateModule =>
      'Échec de la création du module';

  @override
  String get adminContentTotalModules => 'Total des modules';

  @override
  String get adminContentAcrossAllCourses => 'Dans tous les cours';

  @override
  String get adminContentLiveModules => 'Modules en ligne';

  @override
  String get adminContentDrafts => 'Brouillons';

  @override
  String get adminContentUnpublishedModules => 'Modules non publiés';

  @override
  String get adminContentTotalLessons => 'Total des leçons';

  @override
  String get adminContentAllLessons => 'Toutes les leçons';

  @override
  String get adminContentSearchModules => 'Rechercher des modules par titre...';

  @override
  String get adminContentModuleTitle => 'Titre du module';

  @override
  String get adminContentCourse => 'Cours';

  @override
  String get adminContentLessons => 'Leçons';

  @override
  String get adminContentDuration => 'Durée';

  @override
  String get adminContentViewDetails => 'Voir les détails';

  @override
  String get adminContentEditInBuilder =>
      'Modifier dans le Constructeur de cours';

  @override
  String get adminContentErrorLoadingPage =>
      'Erreur lors du chargement de la page';

  @override
  String get adminContentBack => 'Retour';

  @override
  String get adminContentPreviewMode => 'Mode aperçu';

  @override
  String get adminContentBackToEditor => 'Retour à l\'éditeur';

  @override
  String get adminContentUnsaved => 'NON ENREGISTRÉ';

  @override
  String get adminContentUnpublish => 'Dépublier';

  @override
  String get adminContentPublish => 'Publier';

  @override
  String get adminContentSaving => 'Enregistrement...';

  @override
  String get adminContentSave => 'Enregistrer';

  @override
  String get adminContentBasicInformation => 'Informations de base';

  @override
  String get adminContentPageTitle => 'Titre de la page';

  @override
  String get adminContentEnterPageTitle => 'Entrer le titre de la page';

  @override
  String get adminContentSubtitleOptional => 'Sous-titre (optionnel)';

  @override
  String get adminContentEnterSubtitle =>
      'Entrer un sous-titre ou une accroche';

  @override
  String get adminContentMetaDescription => 'Meta description (SEO)';

  @override
  String get adminContentBriefDescription =>
      'Brève description pour les moteurs de recherche';

  @override
  String get adminContentContent => 'Contenu';

  @override
  String get adminContentUseRichTextEditor =>
      'Utilisez l\'éditeur de texte enrichi pour formater votre contenu.';

  @override
  String get adminContentEditJsonFormat =>
      'Modifier le contenu au format JSON.';

  @override
  String get adminContentVisual => 'Visuel';

  @override
  String get adminContentRawJson => 'JSON brut';

  @override
  String get adminContentSections => 'Sections';

  @override
  String get adminContentAddSection => 'Ajouter une section';

  @override
  String get adminContentComplexStructure =>
      'Cette page a une structure complexe.';

  @override
  String get adminContentUseRawJsonMode =>
      'Utilisez le mode JSON brut pour modifier cette page.';

  @override
  String get adminContentFormat => 'Format';

  @override
  String get adminContentContentRequired => 'Le contenu est requis';

  @override
  String get adminContentInvalidJsonFormat => 'Format JSON invalide';

  @override
  String get adminContentRichTextEditor => 'Éditeur de texte enrichi';

  @override
  String get adminContentVisualEditorHelp =>
      'Utilisez l\'éditeur visuel pour l\'édition WYSIWYG. Passez au JSON brut pour l\'édition avancée.';

  @override
  String get adminContentCannotFormatInvalidJson =>
      'Impossible de formater: JSON invalide';

  @override
  String get adminContentResourceTypeRequired => 'Type de ressource *';

  @override
  String get adminContentTextContent => 'Contenu texte';

  @override
  String get adminContentSelectCourseFirst => 'Sélectionnez d\'abord un cours';

  @override
  String get adminContentSelectModule => 'Sélectionner un module';

  @override
  String get adminContentVideoUrlRequired => 'URL de la vidéo *';

  @override
  String get adminContentVideoUrlHint => 'https://youtube.com/watch?v=...';

  @override
  String get adminContentEnterTextContent =>
      'Entrer le contenu texte (Markdown supporté)';

  @override
  String get adminContentResourceCreatedAsDraft =>
      'La ressource sera créée en tant que brouillon.';

  @override
  String get adminContentPleaseEnterLessonTitle =>
      'Veuillez entrer un titre de leçon';

  @override
  String get adminContentPleaseEnterVideoUrl =>
      'Veuillez entrer une URL de vidéo';

  @override
  String get adminContentPleaseEnterContent => 'Veuillez entrer du contenu';

  @override
  String get adminContentVideoResourceCreated => 'Ressource vidéo créée';

  @override
  String get adminContentTextResourceCreated => 'Ressource texte créée';

  @override
  String get adminContentFailedToCreateResource =>
      'Échec de la création de la ressource';

  @override
  String get adminContentTotalResources => 'Total des ressources';

  @override
  String get adminContentVideos => 'Vidéos';

  @override
  String get adminContentVideoResources => 'Ressources vidéo';

  @override
  String get adminContentTextResources => 'Ressources texte';

  @override
  String get adminContentTotalDuration => 'Durée totale';

  @override
  String get adminContentVideoContent => 'Contenu vidéo';

  @override
  String get adminContentSearchResources =>
      'Rechercher des ressources par titre...';

  @override
  String get adminContentResourceType => 'Type de ressource';

  @override
  String get adminContentLocation => 'Emplacement';

  @override
  String get adminContentDurationReadTime => 'Durée / Temps de lecture';

  @override
  String get adminContentModule => 'Module';

  @override
  String get adminContentLesson => 'Leçon';

  @override
  String get adminContentVideoUrl => 'URL de la vidéo';

  @override
  String get adminContentReadingTime => 'Temps de lecture';

  @override
  String get studentHelpCategoryGettingStarted => 'Premiers pas';

  @override
  String get studentHelpCategoryApplications => 'Candidatures';

  @override
  String get studentHelpCategoryCounseling => 'Conseils';

  @override
  String get studentHelpCategoryCourses => 'Cours';

  @override
  String get studentHelpCategoryAccount => 'Compte';

  @override
  String get studentHelpCategoryTechnical => 'Technique';

  @override
  String get studentResourcesCategoryStudyGuide => 'Guide d\'étude';

  @override
  String get studentResourcesCategoryVideo => 'Vidéo';

  @override
  String get studentResourcesCategoryTemplate => 'Modèle';

  @override
  String get studentResourcesCategoryExternalLink => 'Lien externe';

  @override
  String get studentResourcesCategoryCareer => 'Carrière';

  @override
  String get studentResourcesDateToday => 'Aujourd\'hui';

  @override
  String get studentResourcesDateYesterday => 'Hier';

  @override
  String get studentScheduleWeekdaySun => 'Dim';

  @override
  String get studentScheduleWeekdayMon => 'Lun';

  @override
  String get studentScheduleWeekdayTue => 'Mar';

  @override
  String get studentScheduleWeekdayWed => 'Mer';

  @override
  String get studentScheduleWeekdayThu => 'Jeu';

  @override
  String get studentScheduleWeekdayFri => 'Ven';

  @override
  String get studentScheduleWeekdaySat => 'Sam';

  @override
  String get studentScheduleEventCounseling => 'Conseil';

  @override
  String get studentScheduleEventCourse => 'Cours';

  @override
  String get studentScheduleEventDeadline => 'Échéance';

  @override
  String get studentScheduleEventStudy => 'Étude';

  @override
  String get studentScheduleEventOther => 'Autre';

  @override
  String get studentCoursesDateToday => 'Aujourd\'hui';

  @override
  String get studentCoursesDateYesterday => 'Hier';

  @override
  String get parentLinkTimeAgoJustNow => 'À l\'instant';

  @override
  String get parentLinkStatusActive => 'Actif';

  @override
  String get parentLinkStatusExpired => 'Expiré';

  @override
  String get parentLinkStatusUsed => 'Utilisé';

  @override
  String get studentRecStatusPending => 'En attente';

  @override
  String get studentRecStatusAccepted => 'Accepté';

  @override
  String get studentRecStatusInProgress => 'En cours';

  @override
  String get studentRecStatusCompleted => 'Terminé';

  @override
  String get studentRecStatusDeclined => 'Refusé';

  @override
  String get studentRecStatusCancelled => 'Annulé';

  @override
  String get studentRecChipPending => 'EN ATTENTE';

  @override
  String get studentRecChipAccepted => 'ACCEPTÉ';

  @override
  String get studentRecChipWriting => 'RÉDACTION';

  @override
  String get studentRecChipCompleted => 'TERMINÉ';

  @override
  String get studentRecChipDeclined => 'REFUSÉ';

  @override
  String get studentRecChipCancelled => 'ANNULÉ';

  @override
  String studentCoursesEnrolledDate(String date) {
    return 'Inscrit: $date';
  }

  @override
  String studentCoursesDateDaysAgo(int days) {
    return 'Il y a $days jours';
  }

  @override
  String studentCoursesDateWeeksAgo(int weeks) {
    return 'Il y a $weeks semaines';
  }

  @override
  String studentCoursesDateMonthsAgo(int months) {
    return 'Il y a $months mois';
  }

  @override
  String parentLinkLinkedTimeAgo(String timeAgo) {
    return 'Lié $timeAgo';
  }

  @override
  String parentLinkRequestedTimeAgo(String timeAgo) {
    return 'Demandé $timeAgo';
  }

  @override
  String parentLinkTimeAgoMonths(int months) {
    return 'Il y a $months mois';
  }

  @override
  String parentLinkTimeAgoDays(int days) {
    return 'Il y a $days jours';
  }

  @override
  String parentLinkTimeAgoHours(int hours) {
    return 'Il y a $hours heures';
  }

  @override
  String parentLinkTimeAgoMinutes(int minutes) {
    return 'Il y a $minutes minutes';
  }

  @override
  String parentLinkExpiresInDays(int days) {
    return 'Expire dans: $days jours';
  }

  @override
  String parentLinkMaxUses(int count) {
    return 'Utilisations maximum: $count';
  }

  @override
  String parentLinkUsesRemaining(int remaining, int total) {
    return '$remaining/$total utilisations restantes';
  }

  @override
  String parentLinkExpiresOn(String date) {
    return 'Expire: $date';
  }

  @override
  String studentScheduleNoEventsOn(String date) {
    return 'Aucun événement le $date';
  }

  @override
  String studentScheduleDueBy(String time) {
    return 'Échéance à $time';
  }

  @override
  String studentResourcesDateDaysAgo(int days) {
    return 'Il y a ${days}j';
  }

  @override
  String studentResourcesDateWeeksAgo(int weeks) {
    return 'Il y a ${weeks}sem';
  }

  @override
  String studentResourcesDateMonthsAgo(int months) {
    return 'Il y a ${months}m';
  }

  @override
  String studentResourcesOpening(String title) {
    return 'Ouverture de $title...';
  }

  @override
  String studentHelpAppVersion(String version) {
    return 'Navia App v$version';
  }

  @override
  String adminContentEditPageTitle(String title) {
    return 'Modifier la page: $title';
  }

  @override
  String adminContentSlug(String slug) {
    return 'Slug: $slug';
  }

  @override
  String adminContentModuleCreated(String title) {
    return 'Module \"$title\" créé';
  }

  @override
  String get focusAnalyticsTitle => 'Analyse de concentration';

  @override
  String get focusAnalyticsShare => 'Partager';

  @override
  String get focusAnalyticsThisMonth => 'Ce mois';

  @override
  String get focusAnalyticsTotalFocusTime => 'Temps de concentration total';

  @override
  String get focusAnalyticsSessions => 'Sessions';

  @override
  String get focusAnalyticsCompletion => 'Complétion';

  @override
  String get focusAnalyticsAvgFocus => 'Moy. concentration';

  @override
  String get focusAnalyticsCurrentStreak => 'Série actuelle';

  @override
  String get focusAnalyticsDaysInARow => 'jours consécutifs';

  @override
  String get focusAnalyticsBestStreak => 'Meilleure série';

  @override
  String get focusAnalyticsDaysAchieved => 'jours atteints';

  @override
  String get focusAnalyticsLongestSession => 'Session la plus longue';

  @override
  String get focusAnalyticsCompletionRate => 'Taux de complétion';

  @override
  String get focusAnalyticsInsights => 'Analyses';

  @override
  String get focusAnalyticsPeakFocusTime => 'Pic de concentration';

  @override
  String get focusAnalyticsPeakFocusTimeDesc =>
      'Vous êtes le plus productif entre 9h et 11h';

  @override
  String get focusAnalyticsGreatWeek => 'Excellente semaine !';

  @override
  String get focusAnalyticsGreatWeekDesc =>
      'Vous avez complété 87% de vos sessions cette semaine';

  @override
  String get focusAnalyticsKeepItUp => 'Continuez ainsi !';

  @override
  String get focusAnalyticsKeepItUpDesc =>
      'Série de 7 jours - encore 7 pour votre record';

  @override
  String get focusAnalyticsShareComingSoon =>
      'Fonctionnalité de partage bientôt disponible';

  @override
  String get studySessionsTitle => 'Sessions d\'étude';

  @override
  String get studySessionsBack => 'Retour';

  @override
  String studySessionsToday(int count) {
    return 'Aujourd\'hui ($count)';
  }

  @override
  String studySessionsThisWeek(int count) {
    return 'Cette semaine ($count)';
  }

  @override
  String studySessionsAll(int count) {
    return 'Tout ($count)';
  }

  @override
  String get studySessionsSessions => 'Sessions';

  @override
  String get studySessionsTotalTime => 'Temps total';

  @override
  String get studySessionsAvgFocus => 'Moy. concentration';

  @override
  String get studySessionsNoSessions => 'Aucune session';

  @override
  String get studySessionsNoSessionsSubtitle =>
      'Démarrez une session de concentration pour la voir ici';

  @override
  String get studySessionsDuration => 'Durée';

  @override
  String get studySessionsStatus => 'Statut';

  @override
  String get studySessionsFocusLevel => 'Niveau de concentration';

  @override
  String get studySessionsDistractions => 'Distractions';

  @override
  String get studySessionsClose => 'Fermer';

  @override
  String get adminCounselorDetailBackToCounselors => 'Retour aux conseillers';

  @override
  String get adminCounselorDetailTitle => 'Détails du conseiller';

  @override
  String get adminCounselorDetailStudents => 'Étudiants';

  @override
  String get adminCounselorDetailSessions => 'Sessions';

  @override
  String get adminCounselorDetailRating => 'Évaluation';

  @override
  String get adminCounselorDetailActive => 'Actif';

  @override
  String get adminCounselorDetailSuspended => 'Suspendu';

  @override
  String get adminCounselorDetailPending => 'En attente';

  @override
  String get adminCounselorDetailInactive => 'Inactif';

  @override
  String get adminCounselorDetailApprove => 'Approuver';

  @override
  String get adminCounselorDetailSuspend => 'Suspendre';

  @override
  String get adminCounselorDetailActivate => 'Activer';

  @override
  String get adminCounselorDetailDelete => 'Supprimer';

  @override
  String get adminCounselorDetailMessage => 'Message';

  @override
  String get adminCounselorDetailTabOverview => 'Aperçu';

  @override
  String get adminCounselorDetailTabStudents => 'Étudiants';

  @override
  String get adminCounselorDetailTabSessions => 'Sessions';

  @override
  String get adminCounselorDetailTabSchedule => 'Emploi du temps';

  @override
  String get adminCounselorDetailTabDocuments => 'Documents';

  @override
  String get adminCounselorDetailTabActivity => 'Activité';

  @override
  String get adminCounselorDetailBasicInfo => 'Informations de base';

  @override
  String get adminCounselorDetailEmail => 'E-mail';

  @override
  String get adminCounselorDetailPhone => 'Téléphone';

  @override
  String get adminCounselorDetailJoined => 'Inscrit le';

  @override
  String get adminCounselorDetailLastActive => 'Dernière activité';

  @override
  String get adminCounselorDetailProfessionalInfo =>
      'Informations professionnelles';

  @override
  String get adminCounselorDetailSpecialization => 'Spécialisation';

  @override
  String get adminCounselorDetailExperience => 'Expérience';

  @override
  String get adminCounselorDetailCertifications => 'Certifications';

  @override
  String get adminCounselorDetailHourlyRate => 'Tarif horaire';

  @override
  String get adminCounselorDetailBio => 'Biographie';

  @override
  String adminCounselorDetailAssignedStudents(int count) {
    return '$count étudiants assignés';
  }

  @override
  String get adminCounselorDetailNoStudents => 'Aucun étudiant assigné';

  @override
  String get adminCounselorDetailCounselingSessions => 'Sessions de conseil';

  @override
  String get adminCounselorDetailNoSessions => 'Aucune session trouvée';

  @override
  String get adminCounselorDetailSchedule => 'Emploi du temps';

  @override
  String get adminCounselorDetailNoSchedule => 'Aucun emploi du temps défini';

  @override
  String get adminCounselorDetailDocuments => 'Documents';

  @override
  String get adminCounselorDetailNoDocuments => 'Aucun document';

  @override
  String get adminCounselorDetailActivityLog => 'Journal d\'activité';

  @override
  String get adminCounselorDetailNoActivity => 'Aucune activité enregistrée';

  @override
  String get adminCounselorDetailSuspendTitle => 'Suspendre le conseiller';

  @override
  String adminCounselorDetailSuspendMessage(String name) {
    return 'Êtes-vous sûr de vouloir suspendre $name ?';
  }

  @override
  String get adminCounselorDetailCancel => 'Annuler';

  @override
  String get adminCounselorDetailSuspendAction => 'Suspendre';

  @override
  String get adminCounselorDetailActivateTitle => 'Activer le conseiller';

  @override
  String adminCounselorDetailActivateMessage(String name) {
    return 'Êtes-vous sûr de vouloir activer $name ?';
  }

  @override
  String get adminCounselorDetailActivateAction => 'Activer';

  @override
  String get adminCounselorDetailDeleteTitle => 'Supprimer le conseiller';

  @override
  String adminCounselorDetailDeleteMessage(String name) {
    return 'Êtes-vous sûr de vouloir supprimer définitivement $name ? Cette action est irréversible.';
  }

  @override
  String get adminCounselorDetailDeleteAction => 'Supprimer';

  @override
  String get adminCounselorDetailSuspendSuccess =>
      'Conseiller suspendu avec succès';

  @override
  String get adminCounselorDetailActivateSuccess =>
      'Conseiller activé avec succès';

  @override
  String get adminCounselorDetailDeleteSuccess =>
      'Conseiller supprimé avec succès';

  @override
  String adminCounselorDetailYears(int count) {
    return '$count ans';
  }

  @override
  String adminCounselorDetailCertCount(int count) {
    return '$count certifications';
  }

  @override
  String adminCounselorDetailHourlyRateValue(String rate) {
    return '$rate \$/heure';
  }

  @override
  String get adminCounselorDetailCompleted => 'Terminée';

  @override
  String get adminCounselorDetailScheduled => 'Planifiée';

  @override
  String get adminCounselorDetailCancelled => 'Annulée';

  @override
  String get adminCounselorDetailUpload => 'Télécharger';

  @override
  String get adminCounselorDetailView => 'Voir';

  @override
  String get adminCounselorDetailDownload => 'Télécharger';

  @override
  String get adminCounselorDetailActivityTimeline => 'Chronologie d\'activité';

  @override
  String get adminCounselorDetailCounselorId => 'ID du conseiller';

  @override
  String get adminCounselorDetailSpecialty => 'Spécialité';

  @override
  String get adminCounselorDetailStatusActive => 'Actif';

  @override
  String get adminCounselorDetailStatusInactive => 'Inactif';

  @override
  String get adminCounselorDetailStatusSuspended => 'Suspendu';

  @override
  String get adminCounselorDetailEditCounselor => 'Modifier le conseiller';

  @override
  String get adminCounselorDetailSendMessage => 'Envoyer un message';

  @override
  String get adminCounselorDetailSuspendAccount => 'Suspendre le compte';

  @override
  String get adminCounselorDetailActivateAccount => 'Activer le compte';

  @override
  String get adminCounselorDetailDeleteCounselor => 'Supprimer le conseiller';

  @override
  String get adminCounselorDetailFullName => 'Nom complet';

  @override
  String get adminCounselorDetailCredentials => 'Diplômes';

  @override
  String get adminCounselorDetailLicenseNumber => 'Numéro de licence';

  @override
  String get adminCounselorDetailYearsExperience => 'Années d\'expérience';

  @override
  String get adminCounselorDetailYearsValue => '8+ ans';

  @override
  String get adminCounselorDetailContactInfo => 'Coordonnées';

  @override
  String get adminCounselorDetailOfficeLocation => 'Emplacement du bureau';

  @override
  String get adminCounselorDetailAvailability => 'Disponibilité';

  @override
  String get adminCounselorDetailAccountInfo => 'Informations du compte';

  @override
  String get adminCounselorDetailAccountCreated => 'Compte créé';

  @override
  String get adminCounselorDetailLastLogin => 'Dernière connexion';

  @override
  String get adminCounselorDetailHoursAgo => 'il y a 2 heures';

  @override
  String get adminCounselorDetailEmailVerified => 'Email vérifié';

  @override
  String get adminCounselorDetailYes => 'Oui';

  @override
  String adminCounselorDetailSessionsCount(int count) {
    return '$count sessions';
  }

  @override
  String get adminCounselorDetailViewDetails => 'Voir les détails';

  @override
  String adminCounselorDetailRecentSessions(int count) {
    return '$count sessions récentes';
  }

  @override
  String get adminCounselorDetailWeeklySchedule => 'Horaire hebdomadaire';

  @override
  String get adminCounselorDetailScheduleCalendar => 'Calendrier des horaires';

  @override
  String get adminCounselorDetailCalendarComingSoon =>
      'Vue calendrier bientôt disponible';

  @override
  String get adminCounselorDetailProfessionalDocuments =>
      'Documents professionnels';

  @override
  String get adminInstitutionDetailBackToInstitutions =>
      'Retour aux établissements';

  @override
  String get adminInstitutionDetailTitle => 'Détails de l\'établissement';

  @override
  String get adminInstitutionDetailPrograms => 'Programmes';

  @override
  String get adminInstitutionDetailApplicants => 'Candidats';

  @override
  String get adminInstitutionDetailAcceptance => 'Admission';

  @override
  String get adminInstitutionDetailApproved => 'Approuvé';

  @override
  String get adminInstitutionDetailPending => 'En attente';

  @override
  String get adminInstitutionDetailRejected => 'Refusé';

  @override
  String get adminInstitutionDetailSuspended => 'Suspendu';

  @override
  String get adminInstitutionDetailApprove => 'Approuver';

  @override
  String get adminInstitutionDetailReject => 'Refuser';

  @override
  String get adminInstitutionDetailSuspend => 'Suspendre';

  @override
  String get adminInstitutionDetailActivate => 'Activer';

  @override
  String get adminInstitutionDetailDelete => 'Supprimer';

  @override
  String get adminInstitutionDetailMessage => 'Message';

  @override
  String get adminInstitutionDetailTabOverview => 'Aperçu';

  @override
  String get adminInstitutionDetailTabPrograms => 'Programmes';

  @override
  String get adminInstitutionDetailTabApplicants => 'Candidats';

  @override
  String get adminInstitutionDetailTabStatistics => 'Statistiques';

  @override
  String get adminInstitutionDetailTabDocuments => 'Documents';

  @override
  String get adminInstitutionDetailTabActivity => 'Activité';

  @override
  String get adminInstitutionDetailBasicInfo => 'Informations de base';

  @override
  String get adminInstitutionDetailType => 'Type';

  @override
  String get adminInstitutionDetailLocation => 'Localisation';

  @override
  String get adminInstitutionDetailWebsite => 'Site web';

  @override
  String get adminInstitutionDetailEmail => 'E-mail';

  @override
  String get adminInstitutionDetailPhone => 'Téléphone';

  @override
  String get adminInstitutionDetailJoined => 'Inscrit le';

  @override
  String get adminInstitutionDetailDescription => 'Description';

  @override
  String get adminInstitutionDetailAcademicInfo => 'Informations académiques';

  @override
  String get adminInstitutionDetailRanking => 'Classement';

  @override
  String get adminInstitutionDetailAccreditedPrograms =>
      'Programmes accrédités';

  @override
  String get adminInstitutionDetailTuitionRange => 'Fourchette des frais';

  @override
  String get adminInstitutionDetailAcceptanceRate => 'Taux d\'admission';

  @override
  String get adminInstitutionDetailOfferedPrograms => 'Programmes proposés';

  @override
  String get adminInstitutionDetailNoPrograms => 'Aucun programme proposé';

  @override
  String adminInstitutionDetailRecentApplicants(int count) {
    return '$count candidats récents';
  }

  @override
  String get adminInstitutionDetailNoApplicants => 'Aucun candidat';

  @override
  String get adminInstitutionDetailInstitutionStatistics =>
      'Statistiques de l\'établissement';

  @override
  String get adminInstitutionDetailApplicationsTrend =>
      'Évolution des candidatures dans le temps';

  @override
  String get adminInstitutionDetailDocuments => 'Documents';

  @override
  String get adminInstitutionDetailNoDocuments => 'Aucun document';

  @override
  String get adminInstitutionDetailActivityLog => 'Journal d\'activité';

  @override
  String get adminInstitutionDetailNoActivity => 'Aucune activité enregistrée';

  @override
  String get adminInstitutionDetailApproveTitle => 'Approuver l\'établissement';

  @override
  String adminInstitutionDetailApproveMessage(String name) {
    return 'Êtes-vous sûr de vouloir approuver $name ?';
  }

  @override
  String get adminInstitutionDetailCancel => 'Annuler';

  @override
  String get adminInstitutionDetailApproveAction => 'Approuver';

  @override
  String get adminInstitutionDetailRejectTitle => 'Refuser l\'établissement';

  @override
  String adminInstitutionDetailRejectMessage(String name) {
    return 'Êtes-vous sûr de vouloir refuser $name ?';
  }

  @override
  String get adminInstitutionDetailRejectAction => 'Refuser';

  @override
  String get adminInstitutionDetailSuspendTitle => 'Suspendre l\'établissement';

  @override
  String adminInstitutionDetailSuspendMessage(String name) {
    return 'Êtes-vous sûr de vouloir suspendre $name ?';
  }

  @override
  String get adminInstitutionDetailSuspendAction => 'Suspendre';

  @override
  String get adminInstitutionDetailActivateTitle => 'Activer l\'établissement';

  @override
  String adminInstitutionDetailActivateMessage(String name) {
    return 'Êtes-vous sûr de vouloir activer $name ?';
  }

  @override
  String get adminInstitutionDetailActivateAction => 'Activer';

  @override
  String get adminInstitutionDetailDeleteTitle => 'Supprimer l\'établissement';

  @override
  String adminInstitutionDetailDeleteMessage(String name) {
    return 'Êtes-vous sûr de vouloir supprimer définitivement $name ? Cette action est irréversible.';
  }

  @override
  String get adminInstitutionDetailDeleteAction => 'Supprimer';

  @override
  String get adminInstitutionDetailApproveSuccess =>
      'Établissement approuvé avec succès';

  @override
  String get adminInstitutionDetailRejectSuccess =>
      'Établissement refusé avec succès';

  @override
  String get adminInstitutionDetailSuspendSuccess =>
      'Établissement suspendu avec succès';

  @override
  String get adminInstitutionDetailActivateSuccess =>
      'Établissement activé avec succès';

  @override
  String get adminInstitutionDetailDeleteSuccess =>
      'Établissement supprimé avec succès';

  @override
  String get adminInstitutionDetailUniversity => 'Université';

  @override
  String get adminInstitutionDetailCollege => 'Collège universitaire';

  @override
  String get adminInstitutionDetailCommunityCollege => 'Collège communautaire';

  @override
  String get adminInstitutionDetailTechnicalSchool => 'École technique';

  @override
  String get adminInstitutionDetailVocationalSchool => 'École professionnelle';

  @override
  String get adminInstitutionDetailOther => 'Autre';

  @override
  String adminInstitutionDetailRankingValue(int rank) {
    return '#$rank au niveau national';
  }

  @override
  String adminInstitutionDetailProgramCount(int count) {
    return '$count programmes';
  }

  @override
  String adminInstitutionDetailTuitionRangeValue(String min, String max) {
    return '$min \$ - $max \$';
  }

  @override
  String adminInstitutionDetailAcceptanceRateValue(String rate) {
    return '$rate %';
  }

  @override
  String get adminInstitutionDetailViewDetails => 'Voir les détails';

  @override
  String get adminInstitutionDetailAccepted => 'Accepté';

  @override
  String adminInstitutionDetailGpa(String gpa) {
    return 'Moyenne : $gpa';
  }

  @override
  String get adminInstitutionDetailInstitutionId => 'ID de l\'établissement';

  @override
  String get adminInstitutionDetailStudents => 'Étudiants';

  @override
  String get adminInstitutionDetailStatusVerified => 'Vérifié';

  @override
  String get adminInstitutionDetailStatusPending => 'Vérification en cours';

  @override
  String get adminInstitutionDetailStatusRejected => 'Rejeté';

  @override
  String get adminInstitutionDetailStatusActive => 'Actif';

  @override
  String get adminInstitutionDetailEditInstitution =>
      'Modifier l\'établissement';

  @override
  String get adminInstitutionDetailSendMessage => 'Envoyer un message';

  @override
  String get adminInstitutionDetailDeactivate => 'Désactiver';

  @override
  String get adminInstitutionDetailDeleteInstitution =>
      'Supprimer l\'établissement';

  @override
  String get adminInstitutionDetailInstitutionInfo =>
      'Informations de l\'établissement';

  @override
  String get adminInstitutionDetailFullName => 'Nom complet';

  @override
  String get adminInstitutionDetailInstitutionType => 'Type d\'établissement';

  @override
  String get adminInstitutionDetailContactPerson => 'Personne de contact';

  @override
  String get adminInstitutionDetailName => 'Nom';

  @override
  String get adminInstitutionDetailPosition => 'Poste';

  @override
  String get adminInstitutionDetailAdmissionsDirector =>
      'Directeur des admissions';

  @override
  String get adminInstitutionDetailAccountInfo => 'Informations du compte';

  @override
  String get adminInstitutionDetailAccountCreated => 'Compte créé';

  @override
  String get adminInstitutionDetailLastUpdated => 'Dernière mise à jour';

  @override
  String get adminInstitutionDetailWeeksAgo => 'il y a 2 semaines';

  @override
  String get adminInstitutionDetailLastLogin => 'Dernière connexion';

  @override
  String get adminInstitutionDetailHoursAgo => 'il y a 3 heures';

  @override
  String get adminInstitutionDetailVerificationDate => 'Date de vérification';

  @override
  String get adminInstitutionDetailMonthAgo => 'il y a 1 mois';

  @override
  String adminInstitutionDetailProgramsCount(int count) {
    return '$count programmes';
  }

  @override
  String get adminInstitutionDetailAddProgram => 'Ajouter un programme';

  @override
  String adminInstitutionDetailRecentApplicantsCount(int count) {
    return '$count candidats récents';
  }

  @override
  String get adminInstitutionDetailStatistics => 'Statistiques';

  @override
  String get adminInstitutionDetailTotalApplicants => 'Total des candidats';

  @override
  String get adminInstitutionDetailFromLastMonth =>
      '+15% par rapport au mois dernier';

  @override
  String get adminInstitutionDetailAboveAverage =>
      '+5% au-dessus de la moyenne';

  @override
  String get adminInstitutionDetailActivePrograms => 'Programmes actifs';

  @override
  String get adminInstitutionDetailNewThisYear => '2 nouveaux cette année';

  @override
  String get adminInstitutionDetailEnrolledStudents => 'Étudiants inscrits';

  @override
  String get adminInstitutionDetailFromLastYear =>
      '+8% par rapport à l\'an dernier';

  @override
  String get adminInstitutionDetailApplicationTrends =>
      'Tendances des candidatures';

  @override
  String get adminInstitutionDetailChartComingSoon =>
      'Graphique bientôt disponible';

  @override
  String get adminInstitutionDetailVerificationDocuments =>
      'Documents de vérification';

  @override
  String get adminInstitutionDetailUpload => 'Télécharger';

  @override
  String get adminInstitutionDetailView => 'Voir';

  @override
  String get adminInstitutionDetailDownload => 'Télécharger';

  @override
  String get adminInstitutionDetailActivityTimeline =>
      'Chronologie d\'activité';

  @override
  String adminInstitutionDetailRejectConfirm(String name) {
    return 'Êtes-vous sûr de vouloir rejeter $name ?';
  }

  @override
  String get adminInstitutionDetailReasonForRejection => 'Raison du rejet';

  @override
  String get adminInstitutionDetailDeactivateTitle =>
      'Désactiver l\'établissement';

  @override
  String adminInstitutionDetailDeactivateMessage(String name) {
    return 'Êtes-vous sûr de vouloir désactiver $name ?';
  }

  @override
  String get adminInstitutionDetailDeactivateSuccess =>
      'Établissement désactivé avec succès';

  @override
  String get adminParentDetailBackToParents => 'Retour aux parents';

  @override
  String get adminParentDetailTitle => 'Détails du parent';

  @override
  String get adminParentDetailChildren => 'Enfants';

  @override
  String get adminParentDetailApplications => 'Candidatures';

  @override
  String get adminParentDetailSpent => 'Dépensé';

  @override
  String get adminParentDetailActive => 'Actif';

  @override
  String get adminParentDetailSuspended => 'Suspendu';

  @override
  String get adminParentDetailPending => 'En attente';

  @override
  String get adminParentDetailInactive => 'Inactif';

  @override
  String get adminParentDetailSuspend => 'Suspendre';

  @override
  String get adminParentDetailActivate => 'Activer';

  @override
  String get adminParentDetailDelete => 'Supprimer';

  @override
  String get adminParentDetailMessage => 'Message';

  @override
  String get adminParentDetailTabOverview => 'Aperçu';

  @override
  String get adminParentDetailTabChildren => 'Enfants';

  @override
  String get adminParentDetailTabApplications => 'Candidatures';

  @override
  String get adminParentDetailTabDocuments => 'Documents';

  @override
  String get adminParentDetailTabPayments => 'Paiements';

  @override
  String get adminParentDetailTabActivity => 'Activité';

  @override
  String get adminParentDetailBasicInfo => 'Informations de base';

  @override
  String get adminParentDetailEmail => 'E-mail';

  @override
  String get adminParentDetailPhone => 'Téléphone';

  @override
  String get adminParentDetailAddress => 'Adresse';

  @override
  String get adminParentDetailJoined => 'Inscrit le';

  @override
  String get adminParentDetailLastActive => 'Dernière activité';

  @override
  String get adminParentDetailLinkedChildren => 'Enfants liés';

  @override
  String get adminParentDetailNoChildren => 'Aucun enfant lié';

  @override
  String get adminParentDetailApplicationsTracked => 'Candidatures suivies';

  @override
  String get adminParentDetailNoApplications => 'Aucune candidature suivie';

  @override
  String get adminParentDetailDocuments => 'Documents';

  @override
  String get adminParentDetailNoDocuments => 'Aucun document';

  @override
  String get adminParentDetailPaymentHistory => 'Historique des paiements';

  @override
  String get adminParentDetailNoPayments => 'Aucun paiement';

  @override
  String get adminParentDetailActivityLog => 'Journal d\'activité';

  @override
  String get adminParentDetailNoActivity => 'Aucune activité enregistrée';

  @override
  String get adminParentDetailSuspendTitle => 'Suspendre le parent';

  @override
  String adminParentDetailSuspendMessage(String name) {
    return 'Êtes-vous sûr de vouloir suspendre $name ?';
  }

  @override
  String get adminParentDetailCancel => 'Annuler';

  @override
  String get adminParentDetailSuspendAction => 'Suspendre';

  @override
  String get adminParentDetailActivateTitle => 'Activer le parent';

  @override
  String adminParentDetailActivateMessage(String name) {
    return 'Êtes-vous sûr de vouloir activer $name ?';
  }

  @override
  String get adminParentDetailActivateAction => 'Activer';

  @override
  String get adminParentDetailDeleteTitle => 'Supprimer le parent';

  @override
  String adminParentDetailDeleteMessage(String name) {
    return 'Êtes-vous sûr de vouloir supprimer définitivement $name ? Cette action est irréversible.';
  }

  @override
  String get adminParentDetailDeleteAction => 'Supprimer';

  @override
  String get adminParentDetailSuspendSuccess => 'Parent suspendu avec succès';

  @override
  String get adminParentDetailActivateSuccess => 'Parent activé avec succès';

  @override
  String get adminParentDetailDeleteSuccess => 'Parent supprimé avec succès';

  @override
  String adminParentDetailGrade(String grade) {
    return 'Classe de $grade';
  }

  @override
  String get adminParentDetailViewProfile => 'Voir le profil';

  @override
  String adminParentDetailAppliedTo(String institution) {
    return 'Candidature à : $institution';
  }

  @override
  String get adminParentDetailSubmitted => 'Soumise';

  @override
  String get adminParentDetailAccepted => 'Acceptée';

  @override
  String get adminParentDetailRejected => 'Refusée';

  @override
  String get adminParentDetailDraft => 'Brouillon';

  @override
  String adminParentDetailPaymentAmount(String amount) {
    return '$amount \$';
  }

  @override
  String get adminParentDetailCompleted => 'Effectué';

  @override
  String get adminParentDetailFailed => 'Échoué';

  @override
  String get adminParentDetailParentId => 'ID du parent';

  @override
  String get adminParentDetailMessages => 'Messages';

  @override
  String get adminParentDetailStatusActive => 'Actif';

  @override
  String get adminParentDetailStatusInactive => 'Inactif';

  @override
  String get adminParentDetailStatusSuspended => 'Suspendu';

  @override
  String get adminParentDetailEditParent => 'Modifier le parent';

  @override
  String get adminParentDetailSendMessage => 'Envoyer un message';

  @override
  String get adminParentDetailSuspendAccount => 'Suspendre le compte';

  @override
  String get adminParentDetailActivateAccount => 'Activer le compte';

  @override
  String get adminParentDetailDeleteParent => 'Supprimer le parent';

  @override
  String get adminParentDetailPersonalInfo => 'Informations personnelles';

  @override
  String get adminParentDetailFullName => 'Nom complet';

  @override
  String get adminParentDetailLocation => 'Localisation';

  @override
  String get adminParentDetailOccupation => 'Profession';

  @override
  String get adminParentDetailBusinessOwner => 'Chef d\'entreprise';

  @override
  String get adminParentDetailAccountInfo => 'Informations du compte';

  @override
  String get adminParentDetailAccountCreated => 'Compte créé';

  @override
  String get adminParentDetailLastLogin => 'Dernière connexion';

  @override
  String get adminParentDetailHoursAgo => 'il y a 2 heures';

  @override
  String get adminParentDetailEmailVerified => 'Email vérifié';

  @override
  String get adminParentDetailYes => 'Oui';

  @override
  String get adminParentDetailPhoneVerified => 'Téléphone vérifié';

  @override
  String adminParentDetailChildrenCount(int count) {
    return '$count enfants';
  }

  @override
  String get adminParentDetailLinkChild => 'Lier un enfant';

  @override
  String get adminParentDetailViewDetails => 'Voir les détails';

  @override
  String adminParentDetailApplicationsFromChildren(int count) {
    return '$count candidatures des enfants';
  }

  @override
  String get adminParentDetailUpload => 'Télécharger';

  @override
  String get adminParentDetailView => 'Voir';

  @override
  String get adminParentDetailDownload => 'Télécharger';

  @override
  String get adminParentDetailPaymentSummary => 'Résumé des paiements';

  @override
  String get adminParentDetailTotalPaid => 'Total payé';

  @override
  String get adminParentDetailTransactions => 'Transactions';

  @override
  String get adminParentDetailActivityTimeline => 'Chronologie d\'activité';

  @override
  String get adminRecommenderDetailBackToRecommenders =>
      'Retour aux recommandataires';

  @override
  String get adminRecommenderDetailTitle => 'Détails du recommandataire';

  @override
  String get adminRecommenderDetailRequests => 'Demandes';

  @override
  String get adminRecommenderDetailCompleted => 'Complétées';

  @override
  String get adminRecommenderDetailRating => 'Évaluation';

  @override
  String get adminRecommenderDetailActive => 'Actif';

  @override
  String get adminRecommenderDetailSuspended => 'Suspendu';

  @override
  String get adminRecommenderDetailPending => 'En attente';

  @override
  String get adminRecommenderDetailInactive => 'Inactif';

  @override
  String get adminRecommenderDetailSuspend => 'Suspendre';

  @override
  String get adminRecommenderDetailActivate => 'Activer';

  @override
  String get adminRecommenderDetailDelete => 'Supprimer';

  @override
  String get adminRecommenderDetailMessage => 'Message';

  @override
  String get adminRecommenderDetailTabOverview => 'Aperçu';

  @override
  String get adminRecommenderDetailTabRequests => 'Demandes';

  @override
  String get adminRecommenderDetailTabRecommendations => 'Recommandations';

  @override
  String get adminRecommenderDetailTabStatistics => 'Statistiques';

  @override
  String get adminRecommenderDetailTabDocuments => 'Documents';

  @override
  String get adminRecommenderDetailTabActivity => 'Activité';

  @override
  String get adminRecommenderDetailBasicInfo => 'Informations de base';

  @override
  String get adminRecommenderDetailEmail => 'E-mail';

  @override
  String get adminRecommenderDetailPhone => 'Téléphone';

  @override
  String get adminRecommenderDetailInstitution => 'Établissement';

  @override
  String get adminRecommenderDetailPosition => 'Poste';

  @override
  String get adminRecommenderDetailJoined => 'Inscrit le';

  @override
  String get adminRecommenderDetailLastActive => 'Dernière activité';

  @override
  String get adminRecommenderDetailLastLogin => 'Dernière connexion';

  @override
  String get adminRecommenderDetailProfessionalInfo =>
      'Informations professionnelles';

  @override
  String get adminRecommenderDetailDepartment => 'Département';

  @override
  String get adminRecommenderDetailYearsExperience => 'Années d\'expérience';

  @override
  String get adminRecommenderDetailSpecialization => 'Spécialisation';

  @override
  String get adminRecommenderDetailRecommendationRequests =>
      'Demandes de recommandation';

  @override
  String get adminRecommenderDetailNoRequests => 'Aucune demande';

  @override
  String get adminRecommenderDetailSubmittedRecommendations =>
      'Recommandations soumises';

  @override
  String get adminRecommenderDetailNoRecommendations =>
      'Aucune recommandation soumise';

  @override
  String get adminRecommenderDetailRecommenderStatistics =>
      'Statistiques du recommandataire';

  @override
  String get adminRecommenderDetailResponseTimeChart =>
      'Temps de réponse et taux de complétion dans le temps';

  @override
  String get adminRecommenderDetailDocuments => 'Documents';

  @override
  String get adminRecommenderDetailNoDocuments => 'Aucun document';

  @override
  String get adminRecommenderDetailActivityLog => 'Journal d\'activité';

  @override
  String get adminRecommenderDetailNoActivity => 'Aucune activité enregistrée';

  @override
  String get adminRecommenderDetailSuspendTitle =>
      'Suspendre le recommandataire';

  @override
  String adminRecommenderDetailSuspendMessage(String name) {
    return 'Êtes-vous sûr de vouloir suspendre $name ?';
  }

  @override
  String get adminRecommenderDetailCancel => 'Annuler';

  @override
  String get adminRecommenderDetailSuspendAction => 'Suspendre';

  @override
  String get adminRecommenderDetailActivateTitle =>
      'Activer le recommandataire';

  @override
  String adminRecommenderDetailActivateMessage(String name) {
    return 'Êtes-vous sûr de vouloir activer $name ?';
  }

  @override
  String get adminRecommenderDetailActivateAction => 'Activer';

  @override
  String get adminRecommenderDetailDeleteTitle =>
      'Supprimer le recommandataire';

  @override
  String adminRecommenderDetailDeleteMessage(String name) {
    return 'Êtes-vous sûr de vouloir supprimer définitivement $name ? Cette action est irréversible.';
  }

  @override
  String get adminRecommenderDetailDeleteAction => 'Supprimer';

  @override
  String get adminRecommenderDetailSuspendSuccess =>
      'Recommandataire suspendu avec succès';

  @override
  String get adminRecommenderDetailActivateSuccess =>
      'Recommandataire activé avec succès';

  @override
  String get adminRecommenderDetailDeleteSuccess =>
      'Recommandataire supprimé avec succès';

  @override
  String adminRecommenderDetailYearsCount(int count) {
    return '$count ans';
  }

  @override
  String get adminRecommenderDetailRequestPending => 'En attente';

  @override
  String get adminRecommenderDetailRequestInProgress => 'En cours';

  @override
  String get adminRecommenderDetailRequestDeclined => 'Refusée';

  @override
  String adminRecommenderDetailDueDate(String date) {
    return 'Échéance : $date';
  }

  @override
  String adminRecommenderDetailForStudent(String student) {
    return 'Pour : $student';
  }

  @override
  String adminRecommenderDetailToInstitution(String institution) {
    return 'À : $institution';
  }

  @override
  String get adminRecommenderDetailChartComingSoon => 'Graphiques à venir';

  @override
  String get adminRecommenderDetailUpload => 'Téléverser';

  @override
  String get adminRecommenderDetailView => 'Voir';

  @override
  String get adminRecommenderDetailDownload => 'Télécharger';

  @override
  String get adminRecommenderDetailActivityTimeline =>
      'Chronologie d\'activité';

  @override
  String adminRecommenderDetailCompletedRecommendations(int count) {
    return '$count recommandations complétées';
  }

  @override
  String get adminRecommenderDetailSubmitted => 'Soumis';

  @override
  String get adminRecommenderDetailStatistics => 'Statistiques';

  @override
  String get adminRecommenderDetailTotalRequests => 'Total des demandes';

  @override
  String get adminRecommenderDetailAvgResponseTime => 'Temps de réponse moyen';

  @override
  String adminRecommenderDetailDaysValue(int days) {
    return '$days jours';
  }

  @override
  String get adminRecommenderDetailRecommendationTrends =>
      'Tendances des recommandations';

  @override
  String get adminRecommenderDetailRecommenderId => 'ID du recommandeur';

  @override
  String get adminRecommenderDetailType => 'Type';

  @override
  String get adminRecommenderDetailOrganization => 'Organisation';

  @override
  String get adminRecommenderDetailCompletionRate => 'Taux de complétion';

  @override
  String get adminRecommenderDetailStatusActive => 'Actif';

  @override
  String get adminRecommenderDetailStatusInactive => 'Inactif';

  @override
  String get adminRecommenderDetailStatusSuspended => 'Suspendu';

  @override
  String get adminRecommenderDetailEditRecommender =>
      'Modifier le recommandeur';

  @override
  String get adminRecommenderDetailSendMessage => 'Envoyer un message';

  @override
  String get adminRecommenderDetailSuspendAccount => 'Suspendre le compte';

  @override
  String get adminRecommenderDetailActivateAccount => 'Activer le compte';

  @override
  String get adminRecommenderDetailDeleteRecommender =>
      'Supprimer le recommandeur';

  @override
  String get adminRecommenderDetailFullName => 'Nom complet';

  @override
  String get adminRecommenderDetailSenior => 'Senior';

  @override
  String get adminRecommenderDetailYearsAtOrg => 'Années dans l\'organisation';

  @override
  String get adminRecommenderDetailYearsValue => '5+ ans';

  @override
  String get adminRecommenderDetailContactInfo => 'Coordonnées';

  @override
  String get adminRecommenderDetailOffice => 'Bureau';

  @override
  String get adminRecommenderDetailPreferredContact => 'Contact préféré';

  @override
  String get adminRecommenderDetailAccountInfo => 'Informations du compte';

  @override
  String get adminRecommenderDetailAccountCreated => 'Compte créé';

  @override
  String get adminRecommenderDetailDayAgo => 'il y a 1 jour';

  @override
  String get adminRecommenderDetailEmailVerified => 'Email vérifié';

  @override
  String get adminRecommenderDetailYes => 'Oui';

  @override
  String adminRecommenderDetailRequestsCount(int count) {
    return '$count demandes';
  }

  @override
  String get paymentFailureTitle => 'Echec du paiement';

  @override
  String get paymentFailureDefaultMessage =>
      'Nous n\'avons pas pu traiter votre paiement. Veuillez reessayer.';

  @override
  String get paymentFailureTransactionDetails => 'Details de la transaction';

  @override
  String get paymentFailureTransactionId => 'ID de transaction';

  @override
  String get paymentFailureNotAvailable => 'N/D';

  @override
  String get paymentFailureReference => 'Reference';

  @override
  String get paymentFailurePaymentMethod => 'Mode de paiement';

  @override
  String get paymentFailureAmount => 'Montant';

  @override
  String get paymentFailureReason => 'Raison de l\'echec';

  @override
  String get paymentFailureCommonIssues => 'Problemes courants';

  @override
  String get paymentFailureInsufficientFunds => 'Fonds insuffisants';

  @override
  String get paymentFailureInsufficientFundsDesc =>
      'Assurez-vous d\'avoir un solde suffisant sur votre compte';

  @override
  String get paymentFailureCardDeclined => 'Carte refusee';

  @override
  String get paymentFailureCardDeclinedDesc =>
      'Verifiez aupres de votre banque ou essayez une autre carte';

  @override
  String get paymentFailureNetworkIssues => 'Problemes de reseau';

  @override
  String get paymentFailureNetworkIssuesDesc =>
      'Assurez-vous d\'avoir une connexion Internet stable';

  @override
  String get paymentFailureIncorrectDetails => 'Informations incorrectes';

  @override
  String get paymentFailureIncorrectDetailsDesc =>
      'Verifiez que vos informations de paiement sont correctes';

  @override
  String get paymentFailureContactSupportNotice =>
      'Si le probleme persiste, veuillez contacter le support';

  @override
  String get paymentFailureTryAgain => 'Reessayer';

  @override
  String get paymentFailureContactSupport => 'Contacter le support';

  @override
  String get paymentFailureBackToHome => 'Retour a l\'accueil';

  @override
  String get paymentHistoryTitle => 'Historique des paiements';

  @override
  String get paymentHistoryBack => 'Retour';

  @override
  String paymentHistoryTabAll(int count) {
    return 'Tous ($count)';
  }

  @override
  String paymentHistoryTabCompleted(int count) {
    return 'Termines ($count)';
  }

  @override
  String paymentHistoryTabProcessing(int count) {
    return 'En cours ($count)';
  }

  @override
  String paymentHistoryTabFailed(int count) {
    return 'Echoues ($count)';
  }

  @override
  String get paymentHistoryRetry => 'Reessayer';

  @override
  String get paymentHistoryLoading =>
      'Chargement de l\'historique des paiements...';

  @override
  String get paymentHistoryNoPayments => 'Aucun paiement';

  @override
  String get paymentHistoryNoPaymentsFound => 'Aucun paiement trouve';

  @override
  String get paymentHistoryTransactionId => 'ID de transaction';

  @override
  String get paymentHistoryReference => 'Reference';

  @override
  String get paymentHistoryPaymentMethod => 'Mode de paiement';

  @override
  String get paymentHistoryDate => 'Date';

  @override
  String get paymentHistoryCompletedAt => 'Complete le';

  @override
  String get paymentHistoryDownloadReceipt => 'Telecharger le recu';

  @override
  String get paymentHistoryRetryPayment => 'Reessayer le paiement';

  @override
  String get paymentHistoryReceiptOptions => 'Options du recu';

  @override
  String get paymentHistoryDownloadAsPdf => 'Telecharger en PDF';

  @override
  String get paymentHistorySaveToDevice =>
      'Enregistrer le recu sur l\'appareil';

  @override
  String get paymentHistoryEmailReceipt => 'Envoyer le recu par e-mail';

  @override
  String get paymentHistorySendToEmail => 'Envoyer a votre adresse e-mail';

  @override
  String get paymentHistoryShareReceipt => 'Partager le recu';

  @override
  String get paymentHistoryShareViaApps =>
      'Partager via d\'autres applications';

  @override
  String get paymentHistoryDownloading => 'Telechargement du recu...';

  @override
  String get paymentHistorySendingEmail => 'Envoi du recu par e-mail...';

  @override
  String get paymentHistoryOpeningShare =>
      'Ouverture des options de partage...';

  @override
  String get paymentHistoryCourseEnrollment => 'Inscription au cours';

  @override
  String get paymentHistoryProgramApplication => 'Candidature au programme';

  @override
  String get paymentHistoryCounselingSession => 'Seance de conseil';

  @override
  String get paymentMethodTitle => 'Selectionner le mode de paiement';

  @override
  String get paymentMethodBack => 'Retour';

  @override
  String get paymentMethodRetry => 'Reessayer';

  @override
  String get paymentMethodLoading => 'Chargement des modes de paiement...';

  @override
  String get paymentMethodSummary => 'Resume du paiement';

  @override
  String get paymentMethodItem => 'Article';

  @override
  String get paymentMethodType => 'Type';

  @override
  String get paymentMethodTotalAmount => 'Montant total';

  @override
  String get paymentMethodChoose => 'Choisir le mode de paiement';

  @override
  String get paymentMethodSecureNotice =>
      'Vos informations de paiement sont securisees et chiffrees';

  @override
  String get paymentMethodContinue => 'Continuer vers le paiement';

  @override
  String get paymentMethodCourseEnrollment => 'Inscription au cours';

  @override
  String get paymentMethodProgramApplication => 'Candidature au programme';

  @override
  String get paymentMethodCounselingSession => 'Seance de conseil';

  @override
  String paymentProcessingPayWith(String method) {
    return 'Payer avec $method';
  }

  @override
  String get paymentProcessingAmountToPay => 'Montant a payer';

  @override
  String get paymentProcessingSecureNotice =>
      'Votre paiement est securise avec un chiffrement de bout en bout';

  @override
  String get paymentProcessingStatus => 'Traitement en cours...';

  @override
  String paymentProcessingPayAmount(String currency, String amount) {
    return 'Payer $currency $amount';
  }

  @override
  String get paymentProcessingMpesaTitle => 'Paiement M-Pesa';

  @override
  String get paymentProcessingMpesaPhoneLabel => 'Numero de telephone M-Pesa';

  @override
  String get paymentProcessingMpesaPhoneHint => '254712345678';

  @override
  String get paymentProcessingMpesaPhoneRequired =>
      'Veuillez entrer votre numero de telephone M-Pesa';

  @override
  String get paymentProcessingMpesaPhoneInvalid =>
      'Veuillez entrer un numero de telephone kenyan valide (254...)';

  @override
  String get paymentProcessingMpesaHowToPay => 'Comment payer';

  @override
  String get paymentProcessingMpesaStep1 =>
      'Vous recevrez une invite M-Pesa sur votre telephone';

  @override
  String get paymentProcessingMpesaStep2 =>
      'Entrez votre code PIN M-Pesa pour confirmer le paiement';

  @override
  String get paymentProcessingMpesaStep3 => 'Attendez le SMS de confirmation';

  @override
  String get paymentProcessingCardTitle => 'Details de la carte';

  @override
  String get paymentProcessingCardholderName => 'Nom du titulaire de la carte';

  @override
  String get paymentProcessingCardholderHint => 'JEAN DUPONT';

  @override
  String get paymentProcessingCardholderRequired =>
      'Veuillez entrer le nom du titulaire de la carte';

  @override
  String get paymentProcessingCardNumber => 'Numero de carte';

  @override
  String get paymentProcessingCardNumberHint => '1234 5678 9012 3456';

  @override
  String get paymentProcessingCardNumberRequired =>
      'Veuillez entrer le numero de carte';

  @override
  String get paymentProcessingCardNumberInvalid =>
      'Veuillez entrer un numero de carte valide';

  @override
  String get paymentProcessingExpiryDate => 'Date d\'expiration';

  @override
  String get paymentProcessingExpiryHint => 'MM/AA';

  @override
  String get paymentProcessingRequired => 'Requis';

  @override
  String get paymentProcessingInvalidFormat => 'Format invalide';

  @override
  String get paymentProcessingCvv => 'CVV';

  @override
  String get paymentProcessingCvvHint => '123';

  @override
  String get paymentProcessingCvvInvalid => 'CVV invalide';

  @override
  String get paymentProcessingFlutterwaveTitle => 'Paiement Flutterwave';

  @override
  String get paymentProcessingFlutterwaveOptions => 'Options de paiement';

  @override
  String get paymentProcessingFlutterwaveCard => 'Paiement par carte';

  @override
  String get paymentProcessingFlutterwaveCardDesc =>
      'Payer avec une carte de debit ou de credit';

  @override
  String get paymentProcessingFlutterwaveMobile => 'Mobile Money';

  @override
  String get paymentProcessingFlutterwaveMobileDesc =>
      'Payer avec Mobile Money (M-Pesa, Airtel, etc.)';

  @override
  String get paymentProcessingFlutterwaveBank => 'Virement bancaire';

  @override
  String get paymentProcessingFlutterwaveBankDesc => 'Virement bancaire direct';

  @override
  String get paymentProcessingFlutterwaveRedirect =>
      'Vous serez redirige vers la page de paiement securisee Flutterwave';

  @override
  String get browseInstitutionsTitle => 'Parcourir les etablissements';

  @override
  String get browseInstitutionsSelectTitle => 'Sélectionner une institution';

  @override
  String get browseInstitutionsBack => 'Retour';

  @override
  String get browseInstitutionsClearFilters => 'Effacer les filtres';

  @override
  String get browseInstitutionsSearchHint =>
      'Rechercher par nom d\'institution ou e-mail...';

  @override
  String get browseInstitutionsSortBy => 'Trier par : ';

  @override
  String get browseInstitutionsSortName => 'Nom (A-Z)';

  @override
  String get browseInstitutionsSortOfferings => 'Total des offres';

  @override
  String get browseInstitutionsSortPrograms => 'Programmes';

  @override
  String get browseInstitutionsSortCourses => 'Cours';

  @override
  String get browseInstitutionsSortNewest => 'Plus récent';

  @override
  String get browseInstitutionsAscending => 'Croissant';

  @override
  String get browseInstitutionsDescending => 'Decroissant';

  @override
  String get browseInstitutionsShowVerifiedOnly =>
      'Afficher uniquement les institutions vérifiées';

  @override
  String browseInstitutionsResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'etablissements inscrits',
      one: 'etablissement inscrit',
    );
    return '$count $_temp0';
  }

  @override
  String get browseInstitutionsTapToSelect => 'Appuyez pour sélectionner';

  @override
  String get browseInstitutionsNoResults => 'Aucun etablissement trouve';

  @override
  String get browseInstitutionsNoResultsHint =>
      'Essayez d\'ajuster votre recherche ou vos filtres';

  @override
  String get browseInstitutionsRetry => 'Réessayer';

  @override
  String get browseInstitutionsVerified => 'Vérifié';

  @override
  String get browseInstitutionsNoOfferings => 'Aucune offre pour le moment';

  @override
  String browseInstitutionsSelected(String name) {
    return 'Sélectionné : $name';
  }

  @override
  String get browseUniversitiesTitle => 'Parcourir les universites';

  @override
  String get browseUniversitiesSelectTitle => 'Selectionner une universite';

  @override
  String get browseUniversitiesBack => 'Retour';

  @override
  String get browseUniversitiesClearFilters => 'Effacer les filtres';

  @override
  String get browseUniversitiesSearchHint =>
      'Rechercher par nom, ville ou region...';

  @override
  String get browseUniversitiesSortBy => 'Trier par : ';

  @override
  String get browseUniversitiesSortName => 'Nom (A-Z)';

  @override
  String get browseUniversitiesSortAcceptanceRate => 'Taux d\'acceptation';

  @override
  String get browseUniversitiesSortTuition => 'Frais de scolarite';

  @override
  String get browseUniversitiesSortRanking => 'Classement';

  @override
  String get browseUniversitiesAscending => 'Croissant';

  @override
  String get browseUniversitiesDescending => 'Decroissant';

  @override
  String browseUniversitiesResultCount(int count) {
    return '$count universites trouvees';
  }

  @override
  String get browseUniversitiesNoResults => 'Aucune universite trouvee';

  @override
  String get browseUniversitiesNoResultsHint =>
      'Essayez d\'ajuster votre recherche ou vos filtres';

  @override
  String get browseUniversitiesRetry => 'Reessayer';

  @override
  String browseUniversitiesSelected(String name) {
    return 'Selectionne : $name';
  }

  @override
  String get privacyPolicyTitle => 'Politique de confidentialité';

  @override
  String get privacyPolicyShare => 'Partager';

  @override
  String get privacyPolicyShareComingSoon =>
      'Fonctionnalite de partage bientot disponible';

  @override
  String get privacyPolicyHeaderTitle =>
      'Politique de confidentialite Navia';

  @override
  String get privacyPolicyLastUpdated =>
      'Dernière mise à jour : 28 octobre 2025';

  @override
  String get privacyPolicyHeaderDescription =>
      'Cette politique de confidentialite decrit comment Navia collecte, utilise et protege vos informations personnelles.';

  @override
  String get privacyPolicySection1Title =>
      '1. Informations que nous collectons';

  @override
  String get privacyPolicySection1Content =>
      'Nous collectons les informations que vous nous fournissez directement, notamment :\n\n• Informations personnelles : Nom, adresse e-mail, numero de telephone et informations de profil\n• Donnees educatives : Inscriptions aux cours, notes, devoirs et progression de l\'apprentissage\n• Donnees d\'utilisation : Comment vous interagissez avec notre plateforme, y compris les pages visitees et les fonctionnalites utilisees\n• Informations sur l\'appareil : Type d\'appareil, systeme d\'exploitation et informations du navigateur\n• Donnees de localisation : Informations de localisation generales pour fournir un contenu pertinent\n\nNous collectons ces informations lorsque vous :\n• Creez un compte ou mettez a jour votre profil\n• Vous inscrivez a des cours ou completez des devoirs\n• Communiquez avec nous ou d\'autres utilisateurs\n• Utilisez nos services et fonctionnalites';

  @override
  String get privacyPolicySection2Title =>
      '2. Comment nous utilisons vos informations';

  @override
  String get privacyPolicySection2Content =>
      'Nous utilisons les informations que nous collectons pour :\n\n• Fournir et ameliorer nos services educatifs\n• Personnaliser votre experience d\'apprentissage\n• Traiter vos inscriptions et suivre vos progres\n• Communiquer avec vous concernant les cours, mises a jour et support\n• Analyser les modeles d\'utilisation pour ameliorer notre plateforme\n• Assurer la securite et prevenir la fraude\n• Respecter les obligations legales\n• Envoyer des documents promotionnels (avec votre consentement)\n\nNous ne vendons pas vos informations personnelles a des tiers.';

  @override
  String get privacyPolicySection3Title =>
      '3. Partage et divulgation des informations';

  @override
  String get privacyPolicySection3Content =>
      'Nous pouvons partager vos informations dans les circonstances suivantes :\n\n• Etablissements d\'enseignement : Avec les ecoles ou etablissements auxquels vous etes affilie\n• Instructeurs : Les instructeurs de cours peuvent voir vos progres et soumissions\n• Fournisseurs de services : Fournisseurs tiers qui aident a exploiter notre plateforme\n• Exigences legales : Lorsque la loi l\'exige ou pour proteger nos droits\n• Transferts d\'entreprise : Dans le cadre d\'une fusion ou acquisition\n• Avec votre consentement : Lorsque vous autorisez explicitement le partage\n\nNous exigeons que tous les tiers respectent la securite de vos donnees et les traitent conformement a la loi.';

  @override
  String get privacyPolicySection4Title => '4. Securite des donnees';

  @override
  String get privacyPolicySection4Content =>
      'Nous mettons en oeuvre des mesures techniques et organisationnelles appropriees pour proteger vos informations :\n\n• Chiffrement des donnees en transit et au repos\n• Evaluations et audits de securite reguliers\n• Controles d\'acces et mesures d\'authentification\n• Stockage de donnees securise et systemes de sauvegarde\n• Formation des employes sur la protection des donnees\n\nCependant, aucune methode de transmission sur Internet n\'est securisee a 100 %, et nous ne pouvons pas garantir une securite absolue.';

  @override
  String get privacyPolicySection5Title => '5. Vos droits et choix';

  @override
  String get privacyPolicySection5Content =>
      'Vous disposez des droits suivants concernant vos informations personnelles :\n\n• Acces : Demander une copie de vos donnees personnelles\n• Correction : Mettre a jour ou corriger les informations inexactes\n• Suppression : Demander la suppression de vos donnees personnelles\n• Portabilite : Recevoir vos donnees dans un format portable\n• Desinscription : Se desabonner des communications marketing\n• Restriction : Limiter la facon dont nous traitons vos donnees\n\nPour exercer ces droits, contactez-nous a privacy@navia.app.';

  @override
  String get privacyPolicySection6Title =>
      '6. Cookies et technologies de suivi';

  @override
  String get privacyPolicySection6Content =>
      'Nous utilisons des cookies et des technologies similaires pour :\n\n• Memoriser vos preferences et parametres\n• Authentifier votre compte\n• Analyser l\'utilisation et les performances de la plateforme\n• Fournir du contenu et des recommandations personnalises\n\nVous pouvez controler les cookies via les parametres de votre navigateur. Cependant, la desactivation des cookies peut limiter certaines fonctionnalites.';

  @override
  String get privacyPolicySection7Title => '7. Confidentialite des enfants';

  @override
  String get privacyPolicySection7Content =>
      'Nos services sont destines aux utilisateurs de 13 ans et plus. Pour les utilisateurs de moins de 18 ans :\n\n• Le consentement parental peut etre requis\n• Des protections supplementaires sont en place\n• Traitement special des dossiers educatifs (conformite FERPA)\n\nNous ne collectons pas sciemment d\'informations aupres d\'enfants de moins de 13 ans sans le consentement parental.';

  @override
  String get privacyPolicySection8Title =>
      '8. Transferts internationaux de donnees';

  @override
  String get privacyPolicySection8Content =>
      'Vos informations peuvent etre transferees et traitees dans des pays autres que le votre. Nous veillons a ce que des mesures de protection appropriees soient en place, notamment :\n\n• Clauses contractuelles types\n• Decisions d\'adequation des autorites competentes\n• Votre consentement explicite lorsque requis';

  @override
  String get privacyPolicySection9Title =>
      '9. Modifications de cette politique de confidentialite';

  @override
  String get privacyPolicySection9Content =>
      'Nous pouvons mettre a jour cette politique de confidentialite de temps en temps. Nous :\n\n• Vous informerons des changements importants par e-mail ou notification sur la plateforme\n• Mettrons a jour la date de « Derniere mise a jour » en haut de cette politique\n• Obtiendrons votre consentement pour les changements importants si la loi l\'exige\n\nVotre utilisation continue de nos services apres les modifications constitue une acceptation de la politique mise a jour.';

  @override
  String get privacyPolicySection10Title => '10. Nous contacter';

  @override
  String get privacyPolicySection10Content =>
      'Si vous avez des questions ou des preoccupations concernant cette politique de confidentialite ou nos pratiques en matiere de donnees, veuillez nous contacter :\n\nE-mail : privacy@navia.app\nTelephone : +1 (555) 123-4567\nAdresse : Navia, 123 Education Lane, Tech City, TC 12345\n\nDelegue a la protection des donnees : dpo@navia.app';

  @override
  String get termsOfServiceTitle => 'Conditions d\'utilisation';

  @override
  String get termsOfServiceShare => 'Partager';

  @override
  String get termsOfServiceShareComingSoon =>
      'Fonctionnalite de partage bientot disponible';

  @override
  String get termsOfServiceHeaderTitle =>
      'Conditions d\'utilisation Navia';

  @override
  String get termsOfServiceEffectiveDate =>
      'Date d\'entree en vigueur : 28 octobre 2025';

  @override
  String get termsOfServiceHeaderDescription =>
      'Veuillez lire attentivement ces conditions d\'utilisation avant d\'utiliser notre plateforme. En accedant ou en utilisant nos services, vous acceptez d\'etre lie par ces conditions.';

  @override
  String get termsOfServiceSection1Title => '1. Acceptation des conditions';

  @override
  String get termsOfServiceSection1Content =>
      'En creant un compte et en utilisant Navia, vous reconnaissez avoir lu, compris et accepte d\'etre lie par ces conditions d\'utilisation et notre politique de confidentialite.\n\nSi vous n\'acceptez pas ces conditions, vous ne pouvez pas acceder ou utiliser nos services.\n\nCes conditions constituent un accord juridiquement contraignant entre vous et Navia.';

  @override
  String get termsOfServiceSection2Title =>
      '2. Inscription au compte et eligibilite';

  @override
  String get termsOfServiceSection2Content =>
      'Pour utiliser certaines fonctionnalites, vous devez creer un compte et fournir :\n\n• Des informations exactes et completes\n• Une adresse e-mail valide\n• Un mot de passe securise\n• Une preuve d\'age (vous devez avoir 13 ans ou plus)\n\nVous etes responsable de :\n• Maintenir la confidentialite de vos identifiants de compte\n• Toutes les activites qui se produisent sous votre compte\n• Nous informer immediatement de tout acces non autorise\n\nNous nous reservons le droit de refuser le service, de resilier des comptes ou d\'annuler des commandes a notre discretion.';

  @override
  String get termsOfServiceSection3Title =>
      '3. Conduite et responsabilites de l\'utilisateur';

  @override
  String get termsOfServiceSection3Content =>
      'Vous acceptez de ne pas :\n\n• Violer des lois ou reglements\n• Porter atteinte aux droits de propriete intellectuelle\n• Telecharger du code malveillant ou des virus\n• Harceler, abuser ou nuire a d\'autres utilisateurs\n• Usurper l\'identite d\'autrui ou fournir de fausses informations\n• Tenter d\'obtenir un acces non autorise a nos systemes\n• Utiliser des outils automatises pour acceder a nos services\n• Vendre ou transferer votre compte a d\'autres personnes\n• Publier du contenu inapproprie ou offensant\n• Vous livrer a la malhonnetete academique ou au plagiat\n\nLa violation de ces conditions peut entrainer la suspension ou la resiliation de votre compte.';

  @override
  String get termsOfServiceSection4Title =>
      '4. Droits de propriete intellectuelle';

  @override
  String get termsOfServiceSection4Content =>
      'Tout le contenu sur Navia, y compris :\n\n• Les supports de cours et les conferences\n• Le texte, les graphiques, les logos et les images\n• Les logiciels et la technologie\n• Les marques et l\'image de marque\n\nEst la propriete de Navia ou de ses concedants de licence et est protege par le droit d\'auteur, les marques et d\'autres lois sur la propriete intellectuelle.\n\nContenu genere par l\'utilisateur :\n• Vous conservez la propriete du contenu que vous creez\n• Vous nous accordez une licence pour utiliser, afficher et distribuer votre contenu\n• Vous declarez que vous avez des droits sur tout contenu que vous televersez\n• Nous pouvons supprimer le contenu qui viole ces conditions\n\nVous ne pouvez pas copier, modifier, distribuer ou creer des oeuvres derivees sans notre permission explicite.';

  @override
  String get termsOfServiceSection5Title =>
      '5. Abonnements, paiements et remboursements';

  @override
  String get termsOfServiceSection5Content =>
      'Plans d\'abonnement :\n• Les prix sont susceptibles de changer avec preavis\n• Les abonnements se renouvellent automatiquement sauf annulation\n• Vous pouvez annuler a tout moment via les parametres de votre compte\n• L\'annulation prend effet a la fin de la periode de facturation\n\nConditions de paiement :\n• Tous les frais sont en USD sauf indication contraire\n• Le paiement est du au moment de l\'achat\n• Nous acceptons les principales cartes de credit et autres methodes de paiement\n• Les paiements echoues peuvent entrainer la suspension du service\n\nPolitique de remboursement :\n• Garantie de remboursement de 7 jours pour les nouveaux abonnements\n• Les remboursements sont traites dans les 5 a 10 jours ouvrables\n• Des politiques de remboursement specifiques aux cours peuvent s\'appliquer\n• Contactez support@navia.app pour les demandes de remboursement';

  @override
  String get termsOfServiceSection6Title =>
      '6. Acces aux cours et contenu educatif';

  @override
  String get termsOfServiceSection6Content =>
      'Inscription aux cours :\n• L\'acces est accorde apres un paiement reussi\n• Les cours peuvent avoir des prerequis ou des exigences\n• Certains cours ont des periodes d\'inscription limitees\n• Les certificats d\'achevement sont decernes en fonction des performances\n\nDisponibilite du contenu :\n• Nous nous efforcons de maintenir un acces continu aux cours\n• Le contenu peut etre mis a jour ou modifie sans preavis\n• Certains cours peuvent etre retires ou archives\n• Aucune garantie de resultats educatifs specifiques\n\nIntegrite academique :\n• Vous devez completer votre propre travail\n• La collaboration n\'est autorisee que lorsqu\'elle est explicitement permise\n• Le plagiat et la triche entraineront la resiliation du compte\n• Les certificats peuvent etre revoques pour faute academique';

  @override
  String get termsOfServiceSection7Title =>
      '7. Confidentialite et protection des donnees';

  @override
  String get termsOfServiceSection7Content =>
      'Nous nous engageons a proteger votre vie privee. Notre collecte et utilisation d\'informations personnelles sont regies par notre politique de confidentialite.\n\nEn utilisant nos services, vous consentez a :\n• La collecte de donnees personnelles et d\'utilisation\n• Le traitement des donnees pour la prestation de services\n• Le partage des donnees tel que decrit dans notre politique de confidentialite\n• L\'utilisation de cookies et de technologies de suivi\n\nVos droits :\n• Acceder a vos donnees personnelles\n• Demander la correction ou la suppression des donnees\n• Se desinscrire des communications marketing\n• Portabilite des donnees\n\nConsultez notre politique de confidentialite pour plus de details.';

  @override
  String get termsOfServiceSection8Title =>
      '8. Avertissements et limitations de responsabilite';

  @override
  String get termsOfServiceSection8Content =>
      'Services fournis « EN L\'ETAT » :\n• Aucune garantie de service ininterrompu ou sans erreur\n• Aucune garantie de resultats specifiques\n• Contenu educatif a titre informatif uniquement\n• Ne remplace pas les conseils professionnels\n\nLimitation de responsabilite :\n• Nous ne sommes pas responsables des dommages indirects, accessoires ou consecutifs\n• Responsabilite maximale limitee aux frais payes au cours des 12 derniers mois\n• Aucune responsabilite pour le contenu ou les actions de tiers\n• Aucune responsabilite pour la perte de donnees ou les interruptions de service\n\nVous utilisez nos services a vos propres risques.';

  @override
  String get termsOfServiceSection9Title => '9. Services et liens tiers';

  @override
  String get termsOfServiceSection9Content =>
      'Notre plateforme peut contenir des liens vers des sites web tiers ou s\'integrer a des services tiers :\n\n• Nous ne controlons pas le contenu tiers\n• Nous ne sommes pas responsables des pratiques des tiers\n• Les conditions et politiques de confidentialite des tiers s\'appliquent\n• Utilisez les services tiers a vos propres risques\n\nExemples d\'integration :\n• Processeurs de paiement\n• Plateformes d\'hebergement video\n• Services d\'analyse\n• Plateformes de medias sociaux';

  @override
  String get termsOfServiceSection10Title => '10. Resiliation';

  @override
  String get termsOfServiceSection10Content =>
      'Nous pouvons resilier ou suspendre votre compte :\n\n• Pour violation de ces conditions\n• Pour activite frauduleuse ou illegale\n• Pour inactivite prolongee\n• A notre discretion avec ou sans preavis\n\nEn cas de resiliation :\n• Votre acces aux services cessera\n• Vous pouvez perdre l\'acces aux supports de cours\n• Certaines dispositions survivent a la resiliation\n• Les frais impayes restent dus\n\nVous pouvez resilier votre compte a tout moment via les parametres du compte.';

  @override
  String get termsOfServiceSection11Title =>
      '11. Resolution des litiges et arbitrage';

  @override
  String get termsOfServiceSection11Content =>
      'Pour tout litige decoulant de ces conditions :\n\nResolution informelle :\n• Contactez-nous d\'abord pour resoudre les litiges de maniere informelle\n• E-mail : legal@navia.app\n• Periode de 30 jours pour parvenir a une resolution\n\nAccord d\'arbitrage :\n• Litiges resolus par arbitrage contraignant\n• Sur une base individuelle uniquement (pas d\'actions collectives)\n• Regi par les regles de l\'American Arbitration Association\n• Situe a Tech City, TC\n\nExceptions :\n• Litiges devant les tribunaux de petites creances\n• Litiges de propriete intellectuelle\n• Mesures injonctives d\'urgence';

  @override
  String get termsOfServiceSection12Title => '12. Droit applicable';

  @override
  String get termsOfServiceSection12Content =>
      'Ces conditions sont regies par :\n\n• Les lois de l\'Etat de [Votre Etat]\n• La loi federale des Etats-Unis\n• Sans egard aux dispositions relatives aux conflits de lois\n\nJuridiction :\n• Tribunaux de [Votre Etat]\n• Tribunaux du comte de Tech City, TC\n\nUtilisateurs internationaux :\n• Des lois locales supplementaires peuvent s\'appliquer\n• Vous etes responsable du respect des lois locales';

  @override
  String get termsOfServiceSection13Title =>
      '13. Modifications des conditions d\'utilisation';

  @override
  String get termsOfServiceSection13Content =>
      'Nous pouvons modifier ces conditions a tout moment :\n\n• Les modifications prennent effet des leur publication\n• Les modifications importantes seront notifiees par e-mail\n• L\'utilisation continue constitue une acceptation\n• Vous pouvez consulter les conditions actuelles a tout moment\n\nSi vous n\'acceptez pas les conditions modifiees :\n• Cessez d\'utiliser nos services\n• Contactez-nous pour fermer votre compte\n• Pas de remboursement pour la periode d\'abonnement restante';

  @override
  String get termsOfServiceSection14Title => '14. Informations de contact';

  @override
  String get termsOfServiceSection14Content =>
      'Pour des questions concernant ces conditions d\'utilisation :\n\nDemandes generales :\nE-mail : support@navia.app\nTelephone : +1 (555) 123-4567\n\nDepartement juridique :\nE-mail : legal@navia.app\n\nAdresse postale :\nNavia\n123 Education Lane\nTech City, TC 12345\nEtats-Unis\n\nHeures d\'ouverture : Lundi-Vendredi, 9h-17h EST';

  @override
  String get termsOfServiceAcknowledgment =>
      'En utilisant Navia, vous reconnaissez avoir lu et compris ces conditions d\'utilisation.';

  @override
  String get progressReportsTitle => 'Rapports de progression';

  @override
  String get exportReport => 'Exporter le Rapport';

  @override
  String get overviewTab => 'Aperçu';

  @override
  String get coursesTab => 'Cours';

  @override
  String get skillsTab => 'Compétences';

  @override
  String get studyTime => 'Temps d\'Étude';

  @override
  String get achievements => 'Réussites';

  @override
  String get avgScore => 'Score Moyen';

  @override
  String get weeklyActivity => 'Activité Hebdomadaire';

  @override
  String get activityChartPlaceholder =>
      'Le graphique d\'activité sera affiché ici';

  @override
  String lessonsCompleted(int completed, int total) {
    return '$completed sur $total leçons terminées';
  }

  @override
  String get completed => 'Terminé';

  @override
  String get reportExportedSuccessfully => 'Rapport exporté avec succès';

  @override
  String get studyScheduleTitle => 'Horaire d\'étude';

  @override
  String get save => 'Enregistrer';

  @override
  String get dailyStudyGoal => 'Objectif d\'Étude Quotidien';

  @override
  String minutesPerDay(int minutes) {
    return '$minutes minutes par jour';
  }

  @override
  String get minAbbreviation => 'min';

  @override
  String get studyReminders => 'Rappels d\'Étude';

  @override
  String get getNotifiedAtScheduledTimes =>
      'Recevoir des notifications aux heures programmées';

  @override
  String get weeklySchedule => 'Horaire Hebdomadaire';

  @override
  String get setYourPreferredStudyTimes =>
      'Définissez vos heures d\'étude préférées';

  @override
  String get monday => 'Lundi';

  @override
  String get tuesday => 'Mardi';

  @override
  String get wednesday => 'Mercredi';

  @override
  String get thursday => 'Jeudi';

  @override
  String get friday => 'Vendredi';

  @override
  String get saturday => 'Samedi';

  @override
  String get sunday => 'Dimanche';

  @override
  String get addTime => 'Ajouter une heure';

  @override
  String get noStudyTimeSet => 'Aucune heure d\'étude définie';

  @override
  String get studyScheduleSavedSuccessfully =>
      'Horaire d\'étude enregistré avec succès';

  @override
  String get notificationDetailsTitle => 'Détails de la notification';

  @override
  String get markAsRead => 'Marquer comme lu';

  @override
  String get delete => 'Supprimer';

  @override
  String get markedAsRead => 'Marqué comme lu';

  @override
  String get deleteNotificationTitle => 'Supprimer la notification';

  @override
  String get deleteNotificationConfirm =>
      'Êtes-vous sûr de vouloir supprimer cette notification?';

  @override
  String get cancel => 'Annuler';

  @override
  String get notificationDeleted => 'Notification supprimée';

  @override
  String get actionPerformed => 'Action effectuée';

  @override
  String get newBadge => 'NOUVEAU';

  @override
  String get additionalInformation => 'Informations supplémentaires';

  @override
  String get justNow => 'À l\'instant';

  @override
  String minuteAgo(int count) {
    return 'Il y a $count minute';
  }

  @override
  String minutesAgo(int count) {
    return 'Il y a $count minutes';
  }

  @override
  String hourAgo(int count) {
    return 'Il y a $count heure';
  }

  @override
  String hoursAgo(int count) {
    return 'Il y a $count heures';
  }

  @override
  String dayAgo(int count) {
    return 'Il y a $count jour';
  }

  @override
  String daysAgo(int count) {
    return 'Il y a $count jours';
  }

  @override
  String get notificationTypeCourse => 'COURS';

  @override
  String get notificationTypeApplication => 'CANDIDATURE';

  @override
  String get notificationTypePayment => 'PAIEMENT';

  @override
  String get notificationTypeMessage => 'MESSAGE';

  @override
  String get notificationTypeAnnouncement => 'ANNONCE';

  @override
  String get notificationTypeReminder => 'RAPPEL';

  @override
  String get notificationTypeAchievement => 'RÉUSSITE';

  @override
  String get notificationTypeGeneric => 'NOTIFICATION';

  @override
  String get viewCourse => 'Voir le cours';

  @override
  String get viewApplication => 'Voir la candidature';

  @override
  String get viewTransaction => 'Voir la transaction';

  @override
  String get openConversation => 'Ouvrir la conversation';

  @override
  String get viewAchievement => 'Voir la réussite';

  @override
  String get viewDetails => 'Voir les détails';

  @override
  String get gotIt => 'Compris!';

  @override
  String get howToUse => 'Comment utiliser:';

  @override
  String get close => 'Fermer';

  @override
  String get tryIt => 'Essayer';

  @override
  String openingFeature(String feature) {
    return 'Ouverture de $feature...';
  }

  @override
  String get exploreFeature =>
      'Explorez l\'application pour découvrir cette fonctionnalité!';

  @override
  String get featureCategoryCoreFeatures => 'Fonctionnalités principales';

  @override
  String get featureCategoryStudyTools => 'Outils d\'étude';

  @override
  String get featureCategoryProductivity => 'Productivité';

  @override
  String get featureCategoryCollaboration => 'Collaboration';

  @override
  String get featureCourseDiscoveryTitle => 'Découverte de cours';

  @override
  String get featureCourseDiscoveryDesc =>
      'Parcourez et recherchez des milliers de cours provenant d\'institutions de premier plan dans le monde entier';

  @override
  String get featureCourseDiscoveryInstructions =>
      'Accédez à l\'onglet Explorer et utilisez la barre de recherche ou parcourez les catégories.';

  @override
  String get featureApplicationTrackingTitle => 'Suivi des candidatures';

  @override
  String get featureApplicationTrackingDesc =>
      'Gérez toutes vos candidatures de cours et suivez leur statut en temps réel';

  @override
  String get featureApplicationTrackingInstructions =>
      'Accédez à l\'onglet Candidatures pour voir et gérer toutes vos candidatures.';

  @override
  String get featureLearningDashboardTitle =>
      'Tableau de bord d\'apprentissage';

  @override
  String get featureLearningDashboardDesc =>
      'Suivez votre progression, consultez les cours inscrits et accédez aux supports d\'apprentissage';

  @override
  String get featureLearningDashboardInstructions =>
      'Accédez à votre tableau de bord depuis l\'onglet Accueil pour voir votre progression.';

  @override
  String get featureMessagingTitle => 'Messagerie';

  @override
  String get featureMessagingDesc =>
      'Communiquez directement avec les institutions et les conseillers';

  @override
  String get featureMessagingInstructions =>
      'Ouvrez l\'onglet Messages pour discuter avec les institutions et les conseillers.';

  @override
  String get featureNotesTitle => 'Notes';

  @override
  String get featureNotesDesc =>
      'Prenez, organisez et synchronisez des notes sur tous vos appareils';

  @override
  String get featureNotesInstructions =>
      'Appuyez sur l\'icône Notes pour créer et organiser vos notes d\'étude.';

  @override
  String get featureBookmarksTitle => 'Favoris';

  @override
  String get featureBookmarksDesc =>
      'Enregistrez des cours et des ressources pour un accès rapide ultérieur';

  @override
  String get featureBookmarksInstructions =>
      'Enregistrez des éléments en appuyant sur l\'icône de favori sur les cours ou les ressources.';

  @override
  String get featureAchievementsTitle => 'Réussites';

  @override
  String get featureAchievementsDesc =>
      'Gagnez des badges et suivez les jalons au fur et à mesure de votre progression';

  @override
  String get featureAchievementsInstructions =>
      'Consultez vos réussites dans la section Profil sous Progression.';

  @override
  String get featureProgressAnalyticsTitle => 'Analyses de progression';

  @override
  String get featureProgressAnalyticsDesc =>
      'Visualisez votre parcours d\'apprentissage avec des statistiques détaillées';

  @override
  String get featureProgressAnalyticsInstructions =>
      'Consultez les analyses détaillées dans votre section Profil > Progression.';

  @override
  String get featureCalendarTitle => 'Calendrier';

  @override
  String get featureCalendarDesc =>
      'Suivez les échéances, les événements et les dates importantes';

  @override
  String get featureCalendarInstructions =>
      'Accédez au Calendrier depuis la navigation en bas ou le menu.';

  @override
  String get featureSmartNotificationsTitle => 'Notifications intelligentes';

  @override
  String get featureSmartNotificationsDesc =>
      'Recevez des rappels et des mises à jour opportuns concernant vos candidatures';

  @override
  String get featureSmartNotificationsInstructions =>
      'Activez les notifications dans Paramètres > Notifications.';

  @override
  String get featureStudySchedulerTitle => 'Planificateur d\'étude';

  @override
  String get featureStudySchedulerDesc =>
      'Planifiez et optimisez votre temps d\'étude';

  @override
  String get featureStudySchedulerInstructions =>
      'Créez des horaires d\'étude dans Outils > Planificateur d\'étude.';

  @override
  String get featureGoalsMilestonesTitle => 'Objectifs et jalons';

  @override
  String get featureGoalsMilestonesDesc =>
      'Définissez et suivez vos objectifs d\'apprentissage';

  @override
  String get featureGoalsMilestonesInstructions =>
      'Définissez des objectifs dans Profil > Progression > Objectifs.';

  @override
  String get featureStudyGroupsTitle => 'Groupes d\'étude';

  @override
  String get featureStudyGroupsDesc =>
      'Connectez-vous et collaborez avec d\'autres apprenants';

  @override
  String get featureStudyGroupsInstructions =>
      'Rejoignez ou créez des groupes d\'étude depuis Communauté > Groupes.';

  @override
  String get featureDiscussionForumsTitle => 'Forums de discussion';

  @override
  String get featureDiscussionForumsDesc =>
      'Participez aux discussions de cours et aux questions-réponses';

  @override
  String get featureDiscussionForumsInstructions =>
      'Participez aux forums depuis Communauté > Discussions.';

  @override
  String get featureResourceSharingTitle => 'Partage de ressources';

  @override
  String get featureResourceSharingDesc =>
      'Partagez des notes, des liens et des supports d\'étude';

  @override
  String get featureResourceSharingInstructions =>
      'Partagez des ressources en utilisant le bouton de partage sur n\'importe quel contenu.';

  @override
  String get featureLiveSessionsTitle => 'Sessions en direct';

  @override
  String get featureLiveSessionsDesc =>
      'Rejoignez des cours virtuels et des webinaires';

  @override
  String get featureLiveSessionsInstructions =>
      'Rejoignez des sessions en direct depuis la section Horaire ou Cours.';

  @override
  String get subscriptionsTitle => 'Abonnements';

  @override
  String get subscriptionsAvailablePlans => 'Forfaits disponibles';

  @override
  String get subscriptionsBasicPlan => 'Forfait de base';

  @override
  String get subscriptionsPremiumPlan => 'Forfait Premium';

  @override
  String get subscriptionsInstitutionPlan => 'Forfait Institution';

  @override
  String get subscriptionsPriceFree => 'Gratuit';

  @override
  String subscriptionsPricePerMonth(String price) {
    return '$price/mois';
  }

  @override
  String get subscriptionsFeatureBasicCourses => 'Accès aux cours de base';

  @override
  String get subscriptionsFeatureLimitedStorage => 'Stockage limité';

  @override
  String get subscriptionsFeatureEmailSupport => 'Support par e-mail';

  @override
  String get subscriptionsFeatureAllCourses => 'Accès à tous les cours';

  @override
  String get subscriptionsFeatureUnlimitedStorage => 'Stockage illimité';

  @override
  String get subscriptionsFeaturePrioritySupport => 'Support prioritaire';

  @override
  String get subscriptionsFeatureOfflineDownloads =>
      'Téléchargements hors ligne';

  @override
  String get subscriptionsFeatureCertificate => 'Certificat d\'achèvement';

  @override
  String get subscriptionsFeatureEverythingInPremium => 'Tout dans Premium';

  @override
  String get subscriptionsFeatureMultiUserManagement =>
      'Gestion multi-utilisateurs';

  @override
  String get subscriptionsFeatureAnalyticsDashboard =>
      'Tableau de bord analytique';

  @override
  String get subscriptionsFeatureCustomBranding =>
      'Image de marque personnalisée';

  @override
  String get subscriptionsFeatureApiAccess => 'Accès API';

  @override
  String get subscriptionsStatusActive => 'Actif';

  @override
  String get subscriptionsStatusLabel => 'Statut';

  @override
  String get subscriptionsPlanLabel => 'Plan';

  @override
  String get subscriptionsPlanBasicFree => 'De base (Gratuit)';

  @override
  String get subscriptionsStartedLabel => 'Commencé';

  @override
  String get subscriptionsStartedDate => '1er janvier 2025';

  @override
  String get subscriptionsUpgradePlan => 'Mettre à niveau';

  @override
  String get subscriptionsCurrent => 'Actuel';

  @override
  String get subscriptionsSelectPlan => 'Sélectionner un forfait';

  @override
  String get privacySecurityTitle => 'Confidentialité et sécurité';

  @override
  String get privacySecurityBack => 'Retour';

  @override
  String get privacyProfilePrivacySection => 'CONFIDENTIALITÉ DU PROFIL';

  @override
  String get privacyProfilePrivacySubtitle =>
      'Contrôlez qui peut voir les informations de votre profil';

  @override
  String get privacyPublicProfile => 'Profil public';

  @override
  String get privacyPublicProfileDesc =>
      'Permettre à tous de voir votre profil';

  @override
  String get privacyShowEmail => 'Afficher l\'e-mail';

  @override
  String get privacyShowEmailDesc => 'Afficher l\'e-mail sur votre profil';

  @override
  String get privacyShowPhone => 'Afficher le numéro de téléphone';

  @override
  String get privacyShowPhoneDesc =>
      'Afficher le numéro de téléphone sur votre profil';

  @override
  String get privacyShareProgress => 'Partager les progrès';

  @override
  String get privacyShareProgressDesc =>
      'Partager vos progrès d\'apprentissage avec les conseillers';

  @override
  String get privacyCommunicationSection => 'COMMUNICATION';

  @override
  String get privacyCommunicationSubtitle => 'Gérer qui peut vous contacter';

  @override
  String get privacyAllowMessages => 'Autoriser les messages de tout le monde';

  @override
  String get privacyAllowMessagesDesc =>
      'Tout le monde peut vous envoyer des messages';

  @override
  String get privacySecuritySection => 'SÉCURITÉ';

  @override
  String get privacySecuritySubtitle => 'Protégez votre compte';

  @override
  String get privacyChangePassword => 'Changer le mot de passe';

  @override
  String get privacyChangePasswordDesc =>
      'Mettre à jour le mot de passe de votre compte';

  @override
  String get privacyTwoFactor => 'Authentification à deux facteurs';

  @override
  String get privacyTwoFactorEnabled => 'Activée';

  @override
  String get privacyTwoFactorRecommended => 'Recommandée';

  @override
  String get privacyBiometric => 'Authentification biométrique';

  @override
  String get privacyBiometricDesc =>
      'Utiliser l\'empreinte digitale ou Face ID';

  @override
  String get privacyActiveSessions => 'Sessions actives';

  @override
  String get privacyActiveSessionsDesc =>
      'Gérer les appareils connectés à votre compte';

  @override
  String get privacyDataPrivacySection => 'DONNÉES ET CONFIDENTIALITÉ';

  @override
  String get privacyDataPrivacySubtitle => 'Contrôlez vos données';

  @override
  String get privacyDownloadData => 'Télécharger mes données';

  @override
  String get privacyDownloadDataDesc => 'Demander une copie de vos données';

  @override
  String get privacyPrivacyPolicy => 'Politique de confidentialité';

  @override
  String get privacyPrivacyPolicyDesc =>
      'Lire notre politique de confidentialité';

  @override
  String get privacyTermsOfService => 'Conditions d\'utilisation';

  @override
  String get privacyTermsOfServiceDesc => 'Lire nos conditions d\'utilisation';

  @override
  String get privacyAccountActionsSection => 'ACTIONS DU COMPTE';

  @override
  String get privacyAccountActionsSubtitle => 'Actions irréversibles';

  @override
  String get privacyDeleteAccount => 'Supprimer le compte';

  @override
  String get privacyDeleteAccountDesc =>
      'Supprimer définitivement votre compte et vos données';

  @override
  String get privacyEnableTwoFactorTitle =>
      'Activer l\'authentification à deux facteurs';

  @override
  String get privacyEnableTwoFactorMessage =>
      'L\'authentification à deux facteurs ajoute une couche de sécurité supplémentaire à votre compte. Vous devrez entrer un code de votre téléphone en plus de votre mot de passe lors de la connexion.';

  @override
  String get privacyCancel => 'Annuler';

  @override
  String get privacyContinue => 'Continuer';

  @override
  String get privacyTwoFactorSetupRequired =>
      'Écran de configuration 2FA - Intégration backend requise';

  @override
  String get privacyDisableTwoFactorTitle =>
      'Désactiver l\'authentification à deux facteurs';

  @override
  String get privacyDisableTwoFactorMessage =>
      'Êtes-vous sûr de vouloir désactiver l\'authentification à deux facteurs ? Cela rendra votre compte moins sécurisé.';

  @override
  String get privacyDisable => 'Désactiver';

  @override
  String get privacyActiveSessionsTitle => 'Sessions actives';

  @override
  String get privacySessionDevice => 'Appareil';

  @override
  String get privacySessionLocation => 'Emplacement';

  @override
  String get privacySessionLastActive => 'Dernière activité';

  @override
  String get privacySessionCurrent => 'Actuel';

  @override
  String get privacySessionClose => 'Fermer';

  @override
  String get privacySessionRevokeAll => 'Révoquer tout';

  @override
  String get privacySessionsRevoked =>
      'Toutes les autres sessions ont été révoquées';

  @override
  String get privacyDownloadDataTitle => 'Télécharger vos données';

  @override
  String get privacyDownloadDataMessage =>
      'Nous préparerons une copie de vos données et vous l\'enverrons par e-mail. Cela peut prendre jusqu\'à 24 heures.';

  @override
  String get privacyRequest => 'Demander';

  @override
  String get privacyDataDownloadRequested =>
      'Demande de téléchargement de données soumise';

  @override
  String get privacyDeleteAccountTitle => 'Supprimer le compte';

  @override
  String get privacyDeleteAccountMessage =>
      'Êtes-vous absolument sûr ? Cette action ne peut pas être annulée. Toutes vos données seront supprimées définitivement.';

  @override
  String get privacyDelete => 'Supprimer';

  @override
  String get privacyDeleteConfirmationTitle => 'Confirmation finale';

  @override
  String get privacyDeleteConfirmationPrompt =>
      'Tapez \"DELETE\" pour confirmer la suppression du compte :';

  @override
  String get privacyDeletePlaceholder => 'DELETE';

  @override
  String get privacyDeleteAccountBackendRequired =>
      'Suppression de compte - Intégration backend requise';

  @override
  String get privacyPleaseTypeDelete => 'Veuillez taper DELETE pour confirmer';

  @override
  String get privacyPrivacyPolicyComingSoon =>
      'Politique de confidentialité à venir';

  @override
  String get privacyTermsOfServiceComingSoon =>
      'Conditions d\'utilisation à venir';

  @override
  String get browseInstitutionsBrowseTitle => 'Parcourir les institutions';

  @override
  String get browseInstitutionsSortNameAZ => 'Nom (A-Z)';

  @override
  String get browseInstitutionsSortTotalOfferings => 'Total des offres';

  @override
  String get browseInstitutionsSortAscending => 'Croissant';

  @override
  String get browseInstitutionsSortDescending => 'Décroissant';

  @override
  String browseInstitutionsRegisteredCount(int count) {
    return '$count institution(s) inscrite(s)';
  }

  @override
  String get browseInstitutionsNoInstitutionsFound =>
      'Aucune institution trouvée';

  @override
  String get browseInstitutionsTryAdjusting =>
      'Essayez d\'ajuster votre recherche ou vos filtres';

  @override
  String get browseInstitutionsNoOfferingsYet => 'Aucune offre pour le moment';

  @override
  String get subscriptionsFree => 'Gratuit';

  @override
  String get subscriptionsActive => 'Actif';

  @override
  String get subscriptionsStatus => 'Statut';

  @override
  String get subscriptionsPlan => 'Forfait';

  @override
  String get subscriptionsStarted => 'Commencé';

  @override
  String get subscriptionsBasicFree => 'De base (Gratuit)';

  @override
  String get subscriptionsBasicFeature1 => 'Accès aux cours de base';

  @override
  String get subscriptionsBasicFeature2 => 'Stockage limité';

  @override
  String get subscriptionsBasicFeature3 => 'Support par e-mail';

  @override
  String get subscriptionsPremiumFeature1 => 'Accès à tous les cours';

  @override
  String get subscriptionsPremiumFeature2 => 'Stockage illimité';

  @override
  String get subscriptionsPremiumFeature3 => 'Support prioritaire';

  @override
  String get subscriptionsPremiumFeature4 => 'Téléchargements hors ligne';

  @override
  String get subscriptionsPremiumFeature5 => 'Certificat d\'achèvement';

  @override
  String get subscriptionsInstitutionFeature1 => 'Tout du Premium';

  @override
  String get subscriptionsInstitutionFeature2 => 'Gestion multi-utilisateurs';

  @override
  String get subscriptionsInstitutionFeature3 => 'Tableau de bord analytique';

  @override
  String get subscriptionsInstitutionFeature4 =>
      'Image de marque personnalisée';

  @override
  String get subscriptionsInstitutionFeature5 => 'Accès API';

  @override
  String get studyScheduleSave => 'Enregistrer';

  @override
  String get studyScheduleDailyGoal => 'Objectif d\'étude quotidien';

  @override
  String studyScheduleMinutesPerDay(int minutes) {
    return '$minutes minutes par jour';
  }

  @override
  String get studyScheduleReminders => 'Rappels d\'étude';

  @override
  String get studyScheduleRemindersSubtitle =>
      'Recevoir des notifications aux heures prévues';

  @override
  String get studyScheduleWeeklySchedule => 'Horaire hebdomadaire';

  @override
  String get studyScheduleSetPreferred =>
      'Définissez vos heures d\'étude préférées';

  @override
  String get studyScheduleAddTime => 'Ajouter une heure';

  @override
  String get studyScheduleNoTime => 'Aucune heure d\'étude définie';

  @override
  String get studyScheduleSaved => 'Horaire d\'étude enregistré avec succès';

  @override
  String get progressReportsExport => 'Exporter le rapport';

  @override
  String get progressReportsOverview => 'Aperçu';

  @override
  String get progressReportsCourses => 'Cours';

  @override
  String get progressReportsSkills => 'Compétences';

  @override
  String get progressReportsStudyTime => 'Temps d\'étude';

  @override
  String get progressReportsAchievements => 'Réalisations';

  @override
  String get progressReportsAvgScore => 'Score moyen';

  @override
  String get progressReportsWeeklyActivity => 'Activité hebdomadaire';

  @override
  String get progressReportsActivityChart =>
      'Le graphique d\'activité sera affiché ici';

  @override
  String get progressReportsCompleted => 'Terminé';

  @override
  String progressReportsOfLessons(int completed, int total) {
    return '$completed de $total leçons terminées';
  }

  @override
  String get progressReportsExported => 'Rapport exporté avec succès';

  @override
  String get privacyPolicyShareSoon =>
      'Fonctionnalité de partage bientôt disponible';

  @override
  String get privacyPolicyFlowTitle =>
      'Politique de confidentialité Navia';

  @override
  String get privacyPolicyIntro =>
      'Cette politique de confidentialité décrit comment Navia collecte, utilise et protège vos informations personnelles.';

  @override
  String get privacyPolicySection1 => '1. Informations que nous collectons';

  @override
  String get privacyPolicySection2 =>
      '2. Comment nous utilisons vos informations';

  @override
  String get privacyPolicySection3 =>
      '3. Partage et divulgation d\'informations';

  @override
  String get privacyPolicySection4 => '4. Sécurité des données';

  @override
  String get privacyPolicySection5 => '5. Vos droits et choix';

  @override
  String get privacyPolicySection6 => '6. Cookies et technologies de suivi';

  @override
  String get privacyPolicySection7 => '7. Confidentialité des enfants';

  @override
  String get privacyPolicySection8 => '8. Transferts internationaux de données';

  @override
  String get privacyPolicySection9 =>
      '9. Modifications de cette politique de confidentialité';

  @override
  String get privacyPolicySection10 => '10. Nous contacter';

  @override
  String get termsOfServiceShareSoon =>
      'Fonctionnalité de partage bientôt disponible';

  @override
  String get termsOfServiceFlowTitle => 'Conditions d\'utilisation Navia';

  @override
  String get termsOfServiceEffective => 'Date d\'effet : 28 octobre 2025';

  @override
  String get termsOfServiceIntro =>
      'Veuillez lire attentivement ces conditions d\'utilisation avant d\'utiliser notre plateforme. En accédant ou en utilisant nos services, vous acceptez d\'être lié par ces conditions.';

  @override
  String get termsOfServiceSection1 => '1. Acceptation des conditions';

  @override
  String get termsOfServiceSection2 =>
      '2. Inscription au compte et éligibilité';

  @override
  String get termsOfServiceSection3 =>
      '3. Conduite et responsabilités de l\'utilisateur';

  @override
  String get termsOfServiceSection4 => '4. Droits de propriété intellectuelle';

  @override
  String get termsOfServiceSection5 =>
      '5. Abonnements, paiements et remboursements';

  @override
  String get termsOfServiceSection6 => '6. Accès aux cours et contenu éducatif';

  @override
  String get termsOfServiceSection7 =>
      '7. Confidentialité et protection des données';

  @override
  String get termsOfServiceSection8 =>
      '8. Clauses de non-responsabilité et limitations de responsabilité';

  @override
  String get termsOfServiceSection9 => '9. Services et liens tiers';

  @override
  String get termsOfServiceSection10 => '10. Résiliation';

  @override
  String get termsOfServiceSection11 =>
      '11. Résolution des litiges et arbitrage';

  @override
  String get termsOfServiceSection12 => '12. Loi applicable';

  @override
  String get termsOfServiceSection13 =>
      '13. Modifications des conditions d\'utilisation';

  @override
  String get termsOfServiceSection14 => '14. Informations de contact';

  @override
  String get appearanceTitle => 'Apparence';

  @override
  String get appearanceBack => 'Retour';

  @override
  String get appearanceRefreshApp => 'Actualiser l\'application';

  @override
  String get appearanceRefreshed =>
      'Application actualisée ! Modifications appliquées.';

  @override
  String get appearanceInfoBanner =>
      'Les modifications de thème et de couleur s\'appliquent automatiquement. Pour les autres modifications, appuyez sur le bouton d\'actualisation ci-dessus.';

  @override
  String get appearanceThemeSection => 'THÈME';

  @override
  String get appearanceThemeSubtitle => 'Choisissez l\'apparence de Navia';

  @override
  String get appearanceTextSizeSection => 'TAILLE DU TEXTE';

  @override
  String get appearanceTextSizeSubtitle =>
      'Ajustez la taille du texte dans l\'application';

  @override
  String get appearancePreview => 'Aperçu';

  @override
  String get appearancePreviewText =>
      'Portez ce vieux whisky au juge blond qui fume';

  @override
  String get appearanceFontFamilySection => 'FAMILLE DE POLICE';

  @override
  String get appearanceFontFamilySubtitle => 'Choisissez votre police préférée';

  @override
  String get appearanceDisplayOptions => 'OPTIONS D\'AFFICHAGE';

  @override
  String get appearanceCompactMode => 'Mode compact';

  @override
  String get appearanceCompactModeSubtitle =>
      'Afficher plus de contenu à l\'écran';

  @override
  String get appearanceColorAccent => 'COULEUR D\'ACCENT';

  @override
  String get appearanceColorAccentSubtitle =>
      'Personnaliser les couleurs de l\'application';

  @override
  String get appearanceChooseAccent => 'Choisissez votre couleur d\'accent';

  @override
  String get bugReportTitle => 'Signaler un bug';

  @override
  String get bugReportHelp =>
      'Aidez-nous à améliorer en signalant les bugs et problèmes que vous rencontrez.';

  @override
  String get bugReportTitleField => 'Titre du bug';

  @override
  String get bugReportTitleHint => 'Description brève du problème';

  @override
  String get bugReportTitleRequired => 'Veuillez entrer un titre de bug';

  @override
  String get bugReportSeverity => 'Gravité';

  @override
  String get bugReportSeverityLow => 'Faible - Inconvénient mineur';

  @override
  String get bugReportSeverityMedium => 'Moyenne - Affecte la fonctionnalité';

  @override
  String get bugReportSeverityHigh => 'Élevée - Application inutilisable';

  @override
  String get bugReportDescription => 'Description';

  @override
  String get bugReportDescriptionHint => 'Que s\'est-il passé ?';

  @override
  String get bugReportDescriptionRequired => 'Veuillez décrire le bug';

  @override
  String get bugReportSteps => 'Étapes pour reproduire';

  @override
  String get bugReportStepsHint =>
      '1. Allez à...\n2. Cliquez sur...\n3. Voir l\'erreur';

  @override
  String get bugReportStepsRequired =>
      'Veuillez fournir les étapes pour reproduire';

  @override
  String get bugReportAttachScreenshot => 'Joindre une capture d\'écran';

  @override
  String get bugReportScreenshotHelp =>
      'Aidez-nous à mieux comprendre le problème';

  @override
  String get bugReportScreenshotSoon =>
      'Pièce jointe de capture d\'écran bientôt disponible';

  @override
  String get bugReportIncludeDevice =>
      'Inclure les informations de l\'appareil';

  @override
  String get bugReportDeviceInfo =>
      'Version du système d\'exploitation, version de l\'application, modèle de l\'appareil';

  @override
  String get bugReportSubmit => 'Soumettre le rapport de bug';

  @override
  String get bugReportSubmitted =>
      'Rapport de bug soumis avec succès ! Merci de nous aider à améliorer.';

  @override
  String get contactSupportTitle => 'Contacter le support';

  @override
  String get contactSupportGetInTouch => 'Contactez-nous';

  @override
  String get contactSupportEmail => 'E-mail';

  @override
  String get contactSupportEmailAddress => 'support@navia.app';

  @override
  String get contactSupportLiveChat => 'Chat en direct';

  @override
  String get contactSupportLiveChatAvailable => 'Disponible 24h/24 et 7j/7';

  @override
  String get contactSupportPhone => 'Téléphone';

  @override
  String get contactSupportPhoneNumber => '+1 (555) 123-4567';

  @override
  String get contactSupportHours => 'Heures de support';

  @override
  String get contactSupportHoursText =>
      'Lundi - Vendredi : 9h - 17h EST\nWeek-ends : 10h - 16h EST';

  @override
  String get contactSupportSendMessage => 'Envoyez-nous un message';

  @override
  String get contactSupportCategory => 'Catégorie';

  @override
  String get contactSupportCategoryGeneral => 'Demande générale';

  @override
  String get contactSupportCategoryTechnical => 'Problème technique';

  @override
  String get contactSupportCategoryBilling => 'Question de facturation';

  @override
  String get contactSupportCategoryFeedback => 'Commentaires';

  @override
  String get contactSupportSubject => 'Sujet';

  @override
  String get contactSupportSubjectRequired => 'Veuillez entrer un sujet';

  @override
  String get contactSupportMessage => 'Message';

  @override
  String get contactSupportMessageRequired => 'Veuillez entrer votre message';

  @override
  String get contactSupportSend => 'Envoyer le message';

  @override
  String get contactSupportSent =>
      'Message envoyé avec succès ! Nous vous répondrons bientôt.';

  @override
  String get dataStorageTitle => 'Données et stockage';

  @override
  String get dataStorageBack => 'Retour';

  @override
  String get dataStorageUsageSection => 'UTILISATION DU STOCKAGE';

  @override
  String get dataStorageUsageSubtitle =>
      'Gérez le stockage de votre application';

  @override
  String get dataStorageClearCache => 'Vider le cache';

  @override
  String get dataStorageDownloadSection => 'PARAMÈTRES DE TÉLÉCHARGEMENT';

  @override
  String get dataStorageDownloadSubtitle =>
      'Contrôlez comment le contenu est téléchargé';

  @override
  String get dataStorageAutoDownload => 'Téléchargement automatique des vidéos';

  @override
  String get dataStorageAutoDownloadSubtitle =>
      'Télécharger automatiquement les vidéos de cours inscrits';

  @override
  String get dataStorageWifiOnly => 'Télécharger uniquement en Wi-Fi';

  @override
  String get dataStorageWifiOnlySubtitle =>
      'Éviter l\'utilisation de données mobiles pour les téléchargements';

  @override
  String get dataStorageAutoDelete =>
      'Supprimer automatiquement les vidéos regardées';

  @override
  String get dataStorageAutoDeleteSubtitle =>
      'Libérez de l\'espace en supprimant le contenu regardé';

  @override
  String get dataStorageVideoQualitySection => 'QUALITÉ VIDÉO';

  @override
  String get dataStorageVideoQualitySubtitle =>
      'Choisissez la qualité vidéo par défaut';

  @override
  String get dataStorageSelectQuality => 'Sélectionner la qualité';

  @override
  String get dataStorageQualityAuto => 'Auto';

  @override
  String get dataStorageQualityAutoDesc =>
      'Ajuster la qualité en fonction de la connexion';

  @override
  String get dataStorageQualityAutoData => 'Variable';

  @override
  String get dataStorageQuality1080p => '1080p HD';

  @override
  String get dataStorageQuality1080pDesc =>
      'Meilleure qualité, taille de fichier plus grande';

  @override
  String get dataStorageQuality1080pData => '~3 Go/heure';

  @override
  String get dataStorageQuality720p => '720p';

  @override
  String get dataStorageQuality720pDesc =>
      'Bonne qualité, taille de fichier modérée';

  @override
  String get dataStorageQuality720pData => '~1,5 Go/heure';

  @override
  String get dataStorageQuality480p => '480p';

  @override
  String get dataStorageQuality480pDesc =>
      'Qualité standard, taille de fichier plus petite';

  @override
  String get dataStorageQuality480pData => '~700 Mo/heure';

  @override
  String get dataStorageQuality360p => '360p';

  @override
  String get dataStorageQuality360pDesc =>
      'Qualité inférieure, données minimales';

  @override
  String get dataStorageQuality360pData => '~400 Mo/heure';

  @override
  String get dataStorageOfflineSection => 'CONTENU HORS LIGNE';

  @override
  String get dataStorageOfflineSubtitle => 'Gérer le contenu téléchargé';

  @override
  String get dataStorageOfflineMode => 'Mode hors ligne';

  @override
  String get dataStorageOfflineModeSubtitle =>
      'Utiliser uniquement le contenu téléchargé';

  @override
  String get dataStorageManageDownloads => 'Gérer les téléchargements';

  @override
  String dataStorageManageDownloadsSubtitle(int count, int size) {
    return '$count vidéos, $size Mo';
  }

  @override
  String get dataStorageDeleteAll => 'Supprimer tous les téléchargements';

  @override
  String get dataStorageDeleteAllSubtitle => 'Libérer de l\'espace de stockage';

  @override
  String get dataStorageDataUsageSection => 'UTILISATION DES DONNÉES';

  @override
  String get dataStorageDataUsageSubtitle =>
      'Suivez votre consommation de données';

  @override
  String get dataStorageWifiUsage => 'Utilisation Wi-Fi (ce mois)';

  @override
  String get dataStorageMobileUsage => 'Données mobiles (ce mois)';

  @override
  String get dataStorageTotalUsage => 'Utilisation totale (ce mois)';

  @override
  String get dataStorageAdvancedSection => 'AVANCÉ';

  @override
  String get dataStorageSyncNow => 'Synchroniser maintenant';

  @override
  String get dataStorageSyncNowSubtitle =>
      'Synchroniser toutes les données avec le serveur';

  @override
  String get dataStorageLocation => 'Emplacement de stockage';

  @override
  String get dataStorageLocationInternal => 'Stockage interne';

  @override
  String get dataStorageLocationSoon =>
      'Gestion de l\'emplacement de stockage bientôt disponible';

  @override
  String get dataStorageTip => 'Conseil de stockage';

  @override
  String get dataStorageTipText =>
      'Pour économiser les données mobiles, activez \"Télécharger uniquement en Wi-Fi\" et téléchargez le contenu lorsque vous êtes connecté au Wi-Fi. Videz le cache régulièrement pour libérer de l\'espace.';

  @override
  String get dataStorageClearCacheTitle => 'Vider le cache';

  @override
  String dataStorageClearCacheMessage(String size) {
    return 'Cela videra $size Mo de données en cache. Cela peut ralentir temporairement l\'application pendant la remise en cache des données.';
  }

  @override
  String get dataStorageClearCacheButton => 'Vider';

  @override
  String get dataStorageCacheCleared => 'Cache vidé avec succès';

  @override
  String get dataStorageDeleteAllTitle => 'Supprimer tous les téléchargements';

  @override
  String dataStorageDeleteAllMessage(int size) {
    return 'Êtes-vous sûr de vouloir supprimer tout le contenu téléchargé ? Cela libérera environ $size Mo de stockage.';
  }

  @override
  String get dataStorageAllDeleted => 'Tous les téléchargements supprimés';

  @override
  String get dataStorageSyncing => 'Synchronisation des données...';

  @override
  String get dataStorageSyncCompleted => 'Synchronisation terminée';

  @override
  String get languageSettingsTitle => 'Langue et région';

  @override
  String get languageSettingsBack => 'Retour';

  @override
  String get languageSettingsAppLanguage => 'LANGUE DE L\'APPLICATION';

  @override
  String get languageSettingsAppLanguageSubtitle =>
      'Choisissez votre langue préférée';

  @override
  String languageSettingsChanged(String language) {
    return 'Langue changée en $language';
  }

  @override
  String get languageSettingsDateTime => 'DATE ET HEURE';

  @override
  String get languageSettingsDateTimeSubtitle =>
      'Personnaliser l\'affichage de la date et de l\'heure';

  @override
  String get languageSettingsDateFormat => 'Format de date';

  @override
  String get languageSettingsDateFormatDefault => 'Système par défaut';

  @override
  String get languageSettingsDateFormatMDY => 'MM/JJ/AAAA (12/31/2024)';

  @override
  String get languageSettingsDateFormatDMY => 'JJ/MM/AAAA (31/12/2024)';

  @override
  String get languageSettingsDateFormatYMD => 'AAAA/MM/JJ (2024/12/31)';

  @override
  String get languageSettingsDateFormatLong => '31 décembre 2024';

  @override
  String get languageSettingsTimeFormat => 'Format de l\'heure';

  @override
  String get languageSettingsTimeFormat12h => '12 heures (2:30 PM)';

  @override
  String get languageSettingsTimeFormat24h => '24 heures (14:30)';

  @override
  String get languageSettingsNumberFormat => 'FORMAT DES NOMBRES';

  @override
  String get languageSettingsNumberFormatSubtitle =>
      'Affichage des devises et des nombres';

  @override
  String get languageSettingsNumberFormatDefault => 'Système par défaut';

  @override
  String get languageSettingsNumberFormatComma => '1,234,567.89';

  @override
  String get languageSettingsNumberFormatPeriod => '1.234.567,89';

  @override
  String get languageSettingsNumberFormatSpace => '1 234 567,89';

  @override
  String get languageSettingsTranslation => 'TRADUCTION DE CONTENU';

  @override
  String get languageSettingsTranslationSubtitle =>
      'Préférences de traduction automatique';

  @override
  String get languageSettingsAutoTranslate =>
      'Traduire automatiquement le contenu';

  @override
  String get languageSettingsAutoTranslateSubtitle =>
      'Traduire automatiquement le contenu dans votre langue';

  @override
  String get languageSettingsShowOriginal => 'Afficher le texte original';

  @override
  String get languageSettingsShowOriginalSubtitle =>
      'Afficher la langue originale à côté de la traduction';

  @override
  String get languageSettingsRegional => 'PARAMÈTRES RÉGIONAUX';

  @override
  String get languageSettingsRegionalSubtitle =>
      'Préférences basées sur la localisation';

  @override
  String get languageSettingsRegion => 'Région';

  @override
  String get languageSettingsRegionKenya => 'Kenya (Afrique de l\'Est)';

  @override
  String get languageSettingsFirstDay => 'Premier jour de la semaine';

  @override
  String get languageSettingsFirstDayMonday => 'Lundi';

  @override
  String get languageSettingsContent => 'PRÉFÉRENCES DE CONTENU';

  @override
  String get languageSettingsContentSubtitle =>
      'Langues pour les cours et les matériaux';

  @override
  String get languageSettingsCourseLanguages => 'Langues de cours préférées';

  @override
  String get languageSettingsCourseLanguagesValue => 'Anglais, Kiswahili';

  @override
  String get languageSettingsInfoTitle => 'Paramètres de langue';

  @override
  String get languageSettingsInfoText =>
      'Changer votre langue mettra à jour tous les menus, boutons et messages système. Le contenu des cours peut toujours apparaître dans sa langue d\'origine.';

  @override
  String get languageSettingsSelectRegion => 'Sélectionner la région';

  @override
  String languageSettingsRegionChanged(String region) {
    return 'Région changée en $region';
  }

  @override
  String get languageSettingsFirstDayTitle => 'Premier jour de la semaine';

  @override
  String languageSettingsFirstDaySet(String day) {
    return 'Premier jour défini sur $day';
  }

  @override
  String get languageSettingsCourseLanguagesSaved =>
      'Préférences de langue de cours enregistrées';

  @override
  String get sendFeedbackTitle => 'Envoyer des commentaires';

  @override
  String get sendFeedbackHelp =>
      'Vos commentaires nous aident à améliorer et à mieux vous servir.';

  @override
  String get sendFeedbackType => 'Type de commentaire';

  @override
  String get sendFeedbackTypeGeneral => 'Commentaire général';

  @override
  String get sendFeedbackTypeFeature => 'Demande de fonctionnalité';

  @override
  String get sendFeedbackTypeImprovement => 'Suggestion d\'amélioration';

  @override
  String get sendFeedbackTypeComplaint => 'Réclamation';

  @override
  String get sendFeedbackTypePraise => 'Éloge';

  @override
  String get sendFeedbackExperience => 'Expérience globale';

  @override
  String get sendFeedbackRatingPoor => 'Médiocre';

  @override
  String get sendFeedbackRatingFair => 'Passable';

  @override
  String get sendFeedbackRatingGood => 'Bon';

  @override
  String get sendFeedbackRatingVeryGood => 'Très bon';

  @override
  String get sendFeedbackRatingExcellent => 'Excellent';

  @override
  String get sendFeedbackYourFeedback => 'Vos commentaires';

  @override
  String get sendFeedbackPlaceholder => 'Dites-nous ce que vous pensez...';

  @override
  String get sendFeedbackRequired => 'Veuillez entrer vos commentaires';

  @override
  String get sendFeedbackTooShort =>
      'Les commentaires doivent comporter au moins 10 caractères';

  @override
  String get sendFeedbackAttachScreenshot => 'Joindre une capture d\'écran';

  @override
  String get sendFeedbackScreenshotHelp =>
      'Facultatif - nous aide à comprendre le problème';

  @override
  String get sendFeedbackScreenshotAttached => 'Capture d\'écran jointe';

  @override
  String get sendFeedbackScreenshotTooLarge =>
      'L\'image est trop grande. Veuillez sélectionner une image de moins de 5 Mo.';

  @override
  String get sendFeedbackScreenshotSuccess =>
      'Capture d\'écran jointe avec succès';

  @override
  String sendFeedbackScreenshotError(String error) {
    return 'Erreur lors de la sélection de l\'image : $error';
  }

  @override
  String get sendFeedbackAnonymous => 'Soumettre anonymement';

  @override
  String get sendFeedbackAnonymousSubtitle =>
      'Votre identité ne sera pas partagée';

  @override
  String get sendFeedbackSubmit => 'Soumettre les commentaires';

  @override
  String get sendFeedbackThankYou => 'Merci pour vos commentaires !';

  @override
  String get sendFeedbackThankYouWithScreenshot =>
      'Merci pour vos commentaires ! (Capture d\'écran jointe)';

  @override
  String get settingsQuickSettings => 'PARAMÈTRES RAPIDES';

  @override
  String get settingsQuickSettingsSubtitle => 'Paramètres fréquemment utilisés';

  @override
  String get settingsPushNotifications => 'Notifications push';

  @override
  String get settingsPushNotificationsSubtitle =>
      'Recevoir des notifications de l\'application';

  @override
  String get settingsEmailNotifications => 'Notifications par e-mail';

  @override
  String get settingsEmailNotificationsSubtitle =>
      'Recevoir des mises à jour par e-mail';

  @override
  String get settingsSmsNotifications => 'Notifications SMS';

  @override
  String get settingsSmsNotificationsSubtitle => 'Recevoir des alertes SMS';

  @override
  String get settingsPreferences => 'PRÉFÉRENCES';

  @override
  String get settingsPreferencesSubtitle => 'Personnalisez votre expérience';

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsAppearanceSubtitle => 'Thème, couleurs et affichage';

  @override
  String get settingsLanguageRegion => 'Langue et région';

  @override
  String get settingsLanguageRegionValue => 'Anglais, Kenya';

  @override
  String get settingsDataStorage => 'Données et stockage';

  @override
  String get settingsDataStorageSubtitle =>
      'Gérer les téléchargements et le cache';

  @override
  String get settingsAccount => 'COMPTE';

  @override
  String get settingsAccountSubtitle => 'Gérez les paramètres de votre compte';

  @override
  String get settingsEditProfile => 'Modifier le profil';

  @override
  String get settingsEditProfileSubtitle =>
      'Mettre à jour vos informations personnelles';

  @override
  String get settingsPrivacySecurity => 'Confidentialité et sécurité';

  @override
  String get settingsPrivacySecuritySubtitle =>
      'Contrôlez vos paramètres de confidentialité';

  @override
  String get settingsPaymentMethods => 'Modes de paiement';

  @override
  String get settingsPaymentMethodsSubtitle => 'Gérer les options de paiement';

  @override
  String get settingsSubscriptions => 'Abonnements';

  @override
  String get settingsSubscriptionsSubtitle =>
      'Afficher et gérer les abonnements';

  @override
  String get settingsLearning => 'APPRENTISSAGE';

  @override
  String get settingsLearningSubtitle =>
      'Personnalisez votre expérience d\'apprentissage';

  @override
  String get settingsStudySchedule => 'Horaire d\'étude';

  @override
  String get settingsStudyScheduleSubtitle =>
      'Définir des rappels et des objectifs';

  @override
  String get settingsProgressReports => 'Rapports de progression';

  @override
  String get settingsProgressReportsSubtitle =>
      'Consultez vos analyses d\'apprentissage';

  @override
  String get settingsSupport => 'SUPPORT';

  @override
  String get settingsSupportSubtitle =>
      'Obtenez de l\'aide et donnez votre avis';

  @override
  String get settingsHelpCenter => 'Centre d\'aide';

  @override
  String get settingsHelpCenterSubtitle => 'Parcourir les articles d\'aide';

  @override
  String get settingsContactSupport => 'Contacter le support';

  @override
  String get settingsContactSupportSubtitle => 'Contactez notre équipe';

  @override
  String get settingsReportBug => 'Signaler un bug';

  @override
  String get settingsReportBugSubtitle => 'Aidez-nous à améliorer';

  @override
  String get settingsSendFeedback => 'Envoyer des commentaires';

  @override
  String get settingsSendFeedbackSubtitle => 'Partagez vos pensées';

  @override
  String get settingsLegal => 'JURIDIQUE';

  @override
  String get settingsPrivacyPolicy => 'Politique de confidentialité';

  @override
  String get settingsCookieSettings => 'Paramètres des cookies';

  @override
  String get settingsCookieSettingsSubtitle =>
      'Gérer les préférences de cookies';

  @override
  String get settingsTermsOfService => 'Conditions d\'utilisation';

  @override
  String get settingsLicenses => 'Licences';

  @override
  String get settingsLicensesSubtitle => 'Licences open source';

  @override
  String get settingsAbout => 'À PROPOS';

  @override
  String get settingsLogout => 'Déconnexion';

  @override
  String get settingsLogoutConfirm =>
      'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get onboardingFeaturesTitle => 'Fonctionnalités';

  @override
  String get onboardingGotIt => 'Compris !';

  @override
  String get onboardingClose => 'Fermer';

  @override
  String get onboardingTryIt => 'Essayer';

  @override
  String onboardingOpeningFeature(String feature) {
    return 'Ouverture de $feature...';
  }

  @override
  String get onboardingWelcomeDescription =>
      'Votre plateforme tout-en-un pour découvrir des cours, gérer vos candidatures et atteindre vos objectifs éducatifs.';

  @override
  String get onboardingDiscoverCoursesTitle => 'Découvrir des cours';

  @override
  String get onboardingDiscoverCoursesDescription =>
      'Parcourez des milliers de cours des meilleures institutions. Filtrez par matière, niveau, durée et plus encore pour trouver la solution parfaite.';

  @override
  String get onboardingTrackApplicationsTitle => 'Suivre les candidatures';

  @override
  String get onboardingTrackApplicationsDescription =>
      'Gérez toutes vos candidatures de cours en un seul endroit. Recevez des mises à jour en temps réel et ne manquez jamais une date limite.';

  @override
  String get onboardingStudySmarterTitle => 'Étudier plus intelligemment';

  @override
  String get onboardingStudySmarterDescription =>
      'Prenez des notes, fixez des objectifs et suivez vos progrès. Restez organisé avec nos outils d\'étude puissants.';

  @override
  String get onboardingStayConnectedTitle => 'Rester connecté';

  @override
  String get onboardingStayConnectedDescription =>
      'Envoyez des messages directement aux institutions, obtenez des conseils personnalisés et recevez des notifications instantanées pour les mises à jour importantes.';

  @override
  String get onboardingWelcomeToFlow => 'Bienvenue sur Navia !';

  @override
  String get onboardingFeatureCategoryCore => 'Fonctionnalités principales';

  @override
  String get onboardingFeatureCategoryStudyTools => 'Outils d\'étude';

  @override
  String get onboardingFeatureCategoryProductivity => 'Productivité';

  @override
  String get onboardingFeatureCategoryCollaboration => 'Collaboration';

  @override
  String get onboardingFeatureCourseDiscovery => 'Découverte de cours';

  @override
  String get onboardingFeatureCourseDiscoveryDesc =>
      'Parcourez et recherchez des milliers de cours des meilleures institutions du monde entier';

  @override
  String get onboardingFeatureApplicationTracking => 'Suivi des candidatures';

  @override
  String get onboardingFeatureApplicationTrackingDesc =>
      'Gérez toutes vos candidatures de cours et suivez leur statut en temps réel';

  @override
  String get onboardingFeatureLearningDashboard =>
      'Tableau de bord d\'apprentissage';

  @override
  String get onboardingFeatureLearningDashboardDesc =>
      'Suivez vos progrès, consultez les cours inscrits et accédez aux supports d\'apprentissage';

  @override
  String get onboardingFeatureMessaging => 'Messagerie';

  @override
  String get onboardingFeatureMessagingDesc =>
      'Communiquez directement avec les institutions et les conseillers';

  @override
  String get onboardingFeatureNotes => 'Notes';

  @override
  String get onboardingFeatureNotesDesc =>
      'Prenez, organisez et synchronisez des notes sur tous vos appareils';

  @override
  String get onboardingFeatureBookmarks => 'Favoris';

  @override
  String get onboardingFeatureBookmarksDesc =>
      'Enregistrez des cours et des ressources pour un accès rapide ultérieur';

  @override
  String get onboardingFeatureAchievementsDesc =>
      'Gagnez des badges et suivez les jalons au fur et à mesure de votre progression';

  @override
  String get onboardingFeatureProgressAnalytics => 'Analyse des progrès';

  @override
  String get onboardingFeatureProgressAnalyticsDesc =>
      'Visualisez votre parcours d\'apprentissage avec des statistiques détaillées';

  @override
  String get onboardingFeatureCalendar => 'Calendrier';

  @override
  String get onboardingFeatureCalendarDesc =>
      'Suivez les dates limites, les événements et les dates importantes';

  @override
  String get onboardingFeatureSmartNotifications =>
      'Notifications intelligentes';

  @override
  String get onboardingFeatureSmartNotificationsDesc =>
      'Recevez des rappels et des mises à jour en temps opportun concernant vos candidatures';

  @override
  String get onboardingFeatureStudyScheduler => 'Planificateur d\'études';

  @override
  String get onboardingFeatureStudySchedulerDesc =>
      'Planifiez et optimisez votre temps d\'étude';

  @override
  String get onboardingFeatureGoalsMilestones => 'Objectifs et jalons';

  @override
  String get onboardingFeatureGoalsMilestonesDesc =>
      'Fixez et suivez vos objectifs d\'apprentissage';

  @override
  String get onboardingFeatureStudyGroups => 'Groupes d\'étude';

  @override
  String get onboardingFeatureStudyGroupsDesc =>
      'Connectez-vous et collaborez avec d\'autres apprenants';

  @override
  String get onboardingFeatureDiscussionForums => 'Forums de discussion';

  @override
  String get onboardingFeatureDiscussionForumsDesc =>
      'Participez aux discussions de cours et aux questions-réponses';

  @override
  String get onboardingFeatureResourceSharing => 'Partage de ressources';

  @override
  String get onboardingFeatureResourceSharingDesc =>
      'Partagez des notes, des liens et du matériel d\'étude';

  @override
  String get onboardingFeatureLiveSessions => 'Sessions en direct';

  @override
  String get onboardingFeatureLiveSessionsDesc =>
      'Rejoignez des cours virtuels et des webinaires';

  @override
  String get onboardingHowToUse => 'Comment utiliser :';

  @override
  String get onboardingInstructionsCourseDiscovery =>
      'Accédez à l\'onglet Explorer et utilisez la barre de recherche ou parcourez les catégories.';

  @override
  String get onboardingInstructionsApplicationTracking =>
      'Accédez à l\'onglet Candidatures pour afficher et gérer toutes vos candidatures.';

  @override
  String get onboardingInstructionsLearningDashboard =>
      'Accédez à votre tableau de bord depuis l\'onglet Accueil pour voir vos progrès.';

  @override
  String get onboardingInstructionsMessaging =>
      'Ouvrez l\'onglet Messages pour discuter avec les institutions et les conseillers.';

  @override
  String get onboardingInstructionsNotes =>
      'Appuyez sur l\'icône Notes pour créer et organiser vos notes d\'étude.';

  @override
  String get onboardingInstructionsBookmarks =>
      'Enregistrez des éléments en appuyant sur l\'icône de favori sur les cours ou les ressources.';

  @override
  String get onboardingInstructionsAchievements =>
      'Consultez vos réalisations dans la section Profil sous Progrès.';

  @override
  String get onboardingInstructionsProgressAnalytics =>
      'Vérifiez les analyses détaillées dans votre section Profil > Progrès.';

  @override
  String get onboardingInstructionsCalendar =>
      'Accédez au calendrier depuis la navigation inférieure ou le menu.';

  @override
  String get onboardingInstructionsSmartNotifications =>
      'Activez les notifications dans Paramètres > Notifications.';

  @override
  String get onboardingInstructionsStudyScheduler =>
      'Créez des horaires d\'étude dans Outils > Planificateur d\'études.';

  @override
  String get onboardingInstructionsGoalsMilestones =>
      'Fixez des objectifs dans Profil > Progrès > Objectifs.';

  @override
  String get onboardingInstructionsStudyGroups =>
      'Rejoignez ou créez des groupes d\'étude depuis Communauté > Groupes.';

  @override
  String get onboardingInstructionsDiscussionForums =>
      'Participez aux forums depuis Communauté > Discussions.';

  @override
  String get onboardingInstructionsResourceSharing =>
      'Partagez des ressources à l\'aide du bouton de partage sur n\'importe quel contenu.';

  @override
  String get onboardingInstructionsLiveSessions =>
      'Rejoignez des sessions en direct depuis la section Horaire ou Cours.';

  @override
  String get onboardingInstructionsDefault =>
      'Explorez l\'application pour découvrir cette fonctionnalité !';

  @override
  String get onboardingTutorialCompleted => 'Tutoriel terminé !';

  @override
  String get onboardingTutorialExample => 'Exemple de tutoriel';

  @override
  String get onboardingTutorialSearchFeature => 'Fonction de recherche';

  @override
  String get onboardingTutorialSearchFeatureDesc =>
      'Utilisez la barre de recherche pour trouver des cours, des institutions ou du contenu.';

  @override
  String get onboardingTutorialFilterOptions => 'Options de filtre';

  @override
  String get onboardingTutorialFilterOptionsDesc =>
      'Appliquez des filtres pour affiner vos résultats de recherche.';

  @override
  String get onboardingTutorialNotifications => 'Notifications';

  @override
  String get onboardingTutorialNotificationsDesc =>
      'Consultez vos notifications pour les mises à jour et messages importants.';

  @override
  String get onboardingTutorialYourProfile => 'Votre profil';

  @override
  String get onboardingTutorialYourProfileDesc =>
      'Accédez à votre profil, paramètres et préférences ici.';

  @override
  String get onboardingTutorialSearchHint => 'Rechercher...';

  @override
  String get onboardingTutorialRestartTutorial => 'Redémarrer le tutoriel';

  @override
  String get paymentsFailedTitle => 'Paiement échoué';

  @override
  String get paymentsFailedHeading => 'Paiement échoué';

  @override
  String get paymentsFailedDefaultMessage =>
      'Nous n\'avons pas pu traiter votre paiement. Veuillez réessayer.';

  @override
  String get paymentsTransactionDetails => 'Détails de la transaction';

  @override
  String get paymentsTransactionId => 'ID de transaction';

  @override
  String get paymentsReference => 'Référence';

  @override
  String get paymentsPaymentMethod => 'Méthode de paiement';

  @override
  String get paymentsAmount => 'Montant';

  @override
  String get paymentsFailureReason => 'Raison de l\'échec';

  @override
  String get paymentsCommonIssues => 'Problèmes courants';

  @override
  String get paymentsInsufficientFunds => 'Fonds insuffisants';

  @override
  String get paymentsInsufficientFundsDesc =>
      'Assurez-vous d\'avoir un solde suffisant sur votre compte';

  @override
  String get paymentsCardDeclined => 'Carte refusée';

  @override
  String get paymentsCardDeclinedDesc =>
      'Vérifiez auprès de votre banque ou essayez une autre carte';

  @override
  String get paymentsNetworkIssues => 'Problèmes de réseau';

  @override
  String get paymentsNetworkIssuesDesc =>
      'Assurez-vous d\'avoir une connexion Internet stable';

  @override
  String get paymentsIncorrectDetails => 'Détails incorrects';

  @override
  String get paymentsIncorrectDetailsDesc =>
      'Vérifiez que vos informations de paiement sont correctes';

  @override
  String get paymentsHelpNotice =>
      'Si le problème persiste, veuillez contacter le support';

  @override
  String get paymentsTryAgain => 'Réessayer';

  @override
  String get paymentsContactSupport => 'Contacter le support';

  @override
  String get paymentsBackToHome => 'Retour à l\'accueil';

  @override
  String get paymentsHistoryTitle => 'Historique des paiements';

  @override
  String get paymentsHistoryRetry => 'Réessayer';

  @override
  String get paymentsNoPaymentsTitle => 'Aucun paiement';

  @override
  String get paymentsDownloadReceipt => 'Télécharger le reçu';

  @override
  String get paymentsRetryPayment => 'Réessayer le paiement';

  @override
  String get paymentsDownloadAsPdf => 'Télécharger en PDF';

  @override
  String get paymentsSaveReceiptToDevice =>
      'Enregistrer le reçu sur l\'appareil';

  @override
  String get paymentsDownloadingReceipt => 'Téléchargement du reçu...';

  @override
  String get paymentsEmailReceipt => 'Reçu par e-mail';

  @override
  String get paymentsSendToEmail => 'Envoyer à votre adresse e-mail';

  @override
  String get paymentsSendingReceiptViaEmail => 'Envoi du reçu par e-mail...';

  @override
  String get paymentsShareReceipt => 'Partager le reçu';

  @override
  String get paymentsShareViaOtherApps => 'Partager via d\'autres applications';

  @override
  String get paymentsOpeningShareOptions =>
      'Ouverture des options de partage...';

  @override
  String get paymentsSelectPaymentMethodTitle =>
      'Sélectionner la méthode de paiement';

  @override
  String get paymentsItem => 'Article';

  @override
  String get paymentsType => 'Type';

  @override
  String get paymentsTotalAmount => 'Montant total';

  @override
  String paymentsPayWith(String method) {
    return 'Payer avec $method';
  }

  @override
  String get paymentsMpesaPhoneNumber => 'Numéro de téléphone M-Pesa';

  @override
  String get paymentsMpesaPhoneHint => '254712345678';

  @override
  String get paymentsCardholderName => 'Nom du titulaire de la carte';

  @override
  String get paymentsCardholderNameHint => 'JEAN DUPONT';

  @override
  String get paymentsCardNumber => 'Numéro de carte';

  @override
  String get paymentsCardNumberHint => '1234 5678 9012 3456';

  @override
  String get paymentsExpiryDate => 'Date d\'expiration';

  @override
  String get paymentsExpiryDateHint => 'MM/AA';

  @override
  String get paymentsCvv => 'CVV';

  @override
  String get paymentsCvvHint => '123';

  @override
  String get paymentsPayNow => 'Payer maintenant';

  @override
  String get paymentsProcessing => 'Traitement en cours';

  @override
  String get paymentsProcessingPayment => 'Traitement de votre paiement...';

  @override
  String get paymentsReceiptOptions => 'Options de reçu';

  @override
  String get paymentsPurchaseDetails => 'Détails de l\'achat';

  @override
  String get paymentsSuccessTitle => 'Paiement réussi !';

  @override
  String get paymentsSuccessMessage =>
      'Votre paiement a été traité avec succès';

  @override
  String get paymentsPaymentDetails => 'Détails du paiement';

  @override
  String get paymentsDateAndTime => 'Date et heure';

  @override
  String get paymentsAmountPaid => 'Montant payé';

  @override
  String get paymentsReceiptSentToEmail =>
      'Un reçu a été envoyé à votre adresse e-mail';

  @override
  String get paymentsCompletedAt => 'Terminé le';

  @override
  String get paymentsDate => 'Date';

  @override
  String get profileChangePasswordTitle => 'Changer le mot de passe';

  @override
  String get profileChangePasswordButton => 'Changer le mot de passe';

  @override
  String get profilePasswordRequirements =>
      'Votre mot de passe doit comporter au moins 8 caractères et inclure des lettres et des chiffres';

  @override
  String get profileCurrentPassword => 'Mot de passe actuel';

  @override
  String get profileNewPassword => 'Nouveau mot de passe';

  @override
  String get profileConfirmNewPassword => 'Confirmer le nouveau mot de passe';

  @override
  String get profileEnterCurrentPassword =>
      'Veuillez entrer votre mot de passe actuel';

  @override
  String get profileEnterNewPassword =>
      'Veuillez entrer un nouveau mot de passe';

  @override
  String get profilePasswordMinLength =>
      'Le mot de passe doit comporter au moins 8 caractères';

  @override
  String get profilePasswordMustContainLettersNumbers =>
      'Le mot de passe doit contenir des lettres et des chiffres';

  @override
  String get profileNewPasswordMustDiffer =>
      'Le nouveau mot de passe doit être différent de l\'actuel';

  @override
  String get profileConfirmNewPasswordPrompt =>
      'Veuillez confirmer votre nouveau mot de passe';

  @override
  String get profilePasswordsDoNotMatch =>
      'Les mots de passe ne correspondent pas';

  @override
  String get profilePasswordStrength => 'Force du mot de passe';

  @override
  String get profilePasswordStrengthTooWeak => 'Trop faible';

  @override
  String get profilePasswordStrengthWeak => 'Faible';

  @override
  String get profilePasswordStrengthFair => 'Correct';

  @override
  String get profilePasswordStrengthGood => 'Bon';

  @override
  String get profilePasswordStrengthStrong => 'Fort';

  @override
  String get profileForgotCurrentPassword => 'Mot de passe actuel oublié ?';

  @override
  String get profilePasswordChangedSuccess =>
      'Mot de passe changé avec succès !';

  @override
  String get profileResetPasswordTitle => 'Réinitialiser le mot de passe';

  @override
  String get profileResetPasswordMessage =>
      'Nous vous enverrons un lien de réinitialisation de mot de passe à votre adresse e-mail enregistrée.';

  @override
  String get profilePasswordResetEmailSent =>
      'E-mail de réinitialisation de mot de passe envoyé';

  @override
  String get profileSendResetLink => 'Envoyer le lien de réinitialisation';

  @override
  String get profileBack => 'Retour';

  @override
  String get profileNoUserFound => 'Aucun utilisateur trouvé';

  @override
  String get profilePhotoSelected =>
      'Photo sélectionnée ! Enregistrez vos modifications pour télécharger.';

  @override
  String profileErrorSelectingPhoto(String error) {
    return 'Erreur lors de la sélection de la photo : $error';
  }

  @override
  String get profileDocumentUploadComingSoon =>
      'Téléchargement de documents bientôt disponible';

  @override
  String get profileUploadCredentialDocuments =>
      'Télécharger des documents d\'identification';

  @override
  String get profileUnsavedChangesTitle => 'Modifications non enregistrées';

  @override
  String get profileUnsavedChangesMessage =>
      'Vous avez des modifications non enregistrées. Voulez-vous les abandonner ?';

  @override
  String get profileDiscard => 'Abandonner';

  @override
  String get profileUpdatedSuccess => 'Profil mis à jour avec succès !';

  @override
  String profileErrorSaving(String error) {
    return 'Erreur lors de l\'enregistrement du profil : $error';
  }

  @override
  String get apiDocsPageQuickStartCode =>
      'curl -X GET \"https://api.navia.app/v1/universities\" \\\n  -H \"Authorization: Bearer VOTRE_CLE_API\" \\\n  -H \"Content-Type: application/json\"';

  @override
  String get apiDocsPageEndpointsTitle => 'Points de Terminaison API';

  @override
  String get apiDocsPageUniversitiesSection => 'Universités';

  @override
  String get apiDocsPageUniversitiesList => 'Lister toutes les universités';

  @override
  String get apiDocsPageUniversitiesDetails =>
      'Obtenir les détails d\'une université';

  @override
  String get apiDocsPageUniversitiesSearch => 'Rechercher des universités';

  @override
  String get apiDocsPageUniversitiesPrograms => 'Lister les programmes';

  @override
  String get apiDocsPageProgramsSection => 'Programmes';

  @override
  String get apiDocsPageProgramsList => 'Lister tous les programmes';

  @override
  String get apiDocsPageProgramsDetails =>
      'Obtenir les détails d\'un programme';

  @override
  String get apiDocsPageProgramsSearch => 'Rechercher des programmes';

  @override
  String get apiDocsPageRecommendationsSection => 'Recommandations';

  @override
  String get apiDocsPageRecommendationsGenerate =>
      'Générer des recommandations';

  @override
  String get apiDocsPageRecommendationsDetails =>
      'Obtenir les détails d\'une recommandation';

  @override
  String get apiDocsPageStudentsSection => 'Étudiants';

  @override
  String get apiDocsPageStudentsProfile => 'Obtenir le profil étudiant';

  @override
  String get apiDocsPageStudentsUpdate => 'Mettre à jour le profil étudiant';

  @override
  String get apiDocsPageStudentsApplications => 'Lister les candidatures';

  @override
  String get apiDocsPageAuthTitle => 'Authentification';

  @override
  String get apiDocsPageAuthDescription =>
      'Toutes les requêtes API nécessitent une authentification à l\'aide d\'une clé API.';

  @override
  String get apiDocsPageAuthHeader => 'Authorization: Bearer VOTRE_CLE_API';

  @override
  String get apiDocsPageRateLimitsTitle => 'Limites de Débit';

  @override
  String get apiDocsPageRateLimitFree => 'Niveau Gratuit';

  @override
  String get apiDocsPageRateLimitFreeValue => '100 requêtes/heure';

  @override
  String get apiDocsPageRateLimitBasic => 'Basique';

  @override
  String get apiDocsPageRateLimitBasicValue => '1 000 requêtes/heure';

  @override
  String get apiDocsPageRateLimitPro => 'Pro';

  @override
  String get apiDocsPageRateLimitProValue => '10 000 requêtes/heure';

  @override
  String get apiDocsPageRateLimitEnterprise => 'Entreprise';

  @override
  String get apiDocsPageRateLimitEnterpriseValue => 'Illimité';

  @override
  String get apiDocsPageContactTitle => 'Besoin d\'un Accès API?';

  @override
  String get apiDocsPageContactDescription =>
      'Contactez-nous pour obtenir vos identifiants API';

  @override
  String get apiDocsPageContactButton => 'Nous Contacter';

  @override
  String get compliancePageCertificationsTitle => 'Certifications';

  @override
  String get compliancePageCertSoc2Title => 'SOC 2 Type II';

  @override
  String get compliancePageCertSoc2Description =>
      'Certifié pour la sécurité, la disponibilité et la confidentialité';

  @override
  String get compliancePageCertIsoTitle => 'ISO 27001';

  @override
  String get compliancePageCertIsoDescription =>
      'Certification de gestion de la sécurité de l\'information';

  @override
  String get compliancePageCertGdprTitle => 'Conforme RGPD';

  @override
  String get compliancePageCertGdprDescription =>
      'Règlement Général sur la Protection des Données de l\'UE';

  @override
  String get compliancePageDataProtectionTitle => 'Protection des Données';

  @override
  String get compliancePagePrivacyTitle => 'Pratiques de Confidentialité';

  @override
  String get compliancePageRegulatoryTitle => 'Conformité Réglementaire';

  @override
  String get compliancePageThirdPartyTitle => 'Sécurité des Tiers';

  @override
  String get compliancePageSecurityTitle => 'Pratiques de Sécurité';

  @override
  String get compliancePageSecurityUpdatesTitle => 'Mises à Jour Régulières';

  @override
  String get compliancePageSecurityUpdatesDescription =>
      'Correctifs et mises à jour de sécurité déployés en continu';

  @override
  String get compliancePageSecurityBugBountyTitle =>
      'Programme de Prime aux Bugs';

  @override
  String get compliancePageSecurityBugBountyDescription =>
      'Programme de divulgation responsable pour les chercheurs en sécurité';

  @override
  String get compliancePageSecurityMonitoringTitle => 'Surveillance';

  @override
  String get compliancePageSecurityMonitoringDescription =>
      'Surveillance de sécurité et détection des menaces 24/7';

  @override
  String get compliancePageSecurityAuditTitle => 'Journaux d\'Audit';

  @override
  String get compliancePageSecurityAuditDescription =>
      'Journalisation complète de tous les événements de sécurité';

  @override
  String get compliancePageContactTitle => 'Questions sur la Conformité?';

  @override
  String get compliancePageContactDescription =>
      'Contactez notre équipe de conformité pour toute question';

  @override
  String get compliancePageContactEmail => 'conformite@navia.app';

  @override
  String get dataProtectionPageTitle => 'Protection des Données';

  @override
  String get dataProtectionPageSubtitle =>
      'Comment nous protégeons et gérons vos données personnelles';

  @override
  String get dataProtectionPageRightsTitle => 'Vos Droits sur les Données';

  @override
  String get dataProtectionPageRightsDescription =>
      'En vertu des lois sur la protection des données, vous disposez des droits suivants:';

  @override
  String get dataProtectionPageRightAccessTitle => 'Droit d\'Accès';

  @override
  String get dataProtectionPageRightAccessDescription =>
      'Vous pouvez demander une copie de toutes les données personnelles que nous détenons à votre sujet. Nous vous la fournirons dans les 30 jours.';

  @override
  String get dataProtectionPageRightRectificationTitle =>
      'Droit de Rectification';

  @override
  String get dataProtectionPageRightRectificationDescription =>
      'Vous pouvez demander la correction de données personnelles inexactes ou incomplètes.';

  @override
  String get dataProtectionPageRightErasureTitle => 'Droit à l\'Effacement';

  @override
  String get dataProtectionPageRightErasureDescription =>
      'Vous pouvez demander la suppression de vos données personnelles dans certaines circonstances.';

  @override
  String get dataProtectionPageRightPortabilityTitle =>
      'Droit à la Portabilité des Données';

  @override
  String get dataProtectionPageRightPortabilityDescription =>
      'Vous pouvez demander vos données dans un format structuré et lisible par machine.';

  @override
  String get dataProtectionPageRightObjectTitle => 'Droit d\'Opposition';

  @override
  String get dataProtectionPageRightObjectDescription =>
      'Vous pouvez vous opposer au traitement de vos données personnelles à certaines fins.';

  @override
  String get dataProtectionPageRightRestrictTitle =>
      'Droit de Limitation du Traitement';

  @override
  String get dataProtectionPageRightRestrictDescription =>
      'Vous pouvez demander que nous limitions l\'utilisation de vos données.';

  @override
  String get dataProtectionPageProtectionTitle =>
      'Comment Nous Protégeons Vos Données';

  @override
  String get dataProtectionPageProtectionContent =>
      'Nous mettons en œuvre des mesures de sécurité robustes pour protéger vos données personnelles:\n\n**Mesures Techniques**\n• Chiffrement de bout en bout pour la transmission des données\n• Chiffrement AES-256 pour les données stockées\n• Audits de sécurité et tests de pénétration réguliers\n• Systèmes de détection d\'intrusion\n• Centres de données sécurisés avec sécurité physique\n\n**Mesures Organisationnelles**\n• Formation du personnel à la protection des données\n• Contrôles d\'accès et authentification\n• Évaluations d\'impact sur la protection des données\n• Procédures de réponse aux incidents\n• Examens de conformité réguliers';

  @override
  String get dataProtectionPageStorageTitle =>
      'Stockage et Conservation des Données';

  @override
  String get dataProtectionPageStorageContent =>
      '**Où Nous Stockons Vos Données**\nVos données sont stockées sur des serveurs sécurisés situés dans des régions dotées de lois strictes sur la protection des données. Nous utilisons des fournisseurs cloud de premier plan avec certifications SOC 2 et ISO 27001.\n\n**Combien de Temps Nous Conservons Vos Données**\n• Données de compte: Jusqu\'à ce que vous supprimiez votre compte\n• Données de candidature: 7 ans pour la conformité\n• Données d\'analyse: 2 ans\n• Journaux de communication: 3 ans\n\nAprès ces périodes, les données sont supprimées en toute sécurité ou anonymisées.';

  @override
  String get dataProtectionPageSharingTitle => 'Partage des Données';

  @override
  String get dataProtectionPageSharingContent =>
      'Nous ne partageons vos données que lorsque cela est nécessaire:\n\n• **Avec votre consentement**: Lorsque vous acceptez explicitement\n• **Fournisseurs de services**: Partenaires qui nous aident à fournir des services\n• **Exigences légales**: Lorsque la loi l\'exige\n• **Transferts commerciaux**: En cas de fusion ou d\'acquisition\n\nNous ne vendons jamais vos données personnelles à des tiers.';

  @override
  String get dataProtectionPageExerciseTitle => 'Exercez Vos Droits';

  @override
  String get dataProtectionPageExerciseDescription =>
      'Pour faire une demande de données ou exercer l\'un de vos droits, contactez notre Délégué à la Protection des Données:';

  @override
  String get dataProtectionPageExerciseEmail => 'dpd@navia.app';

  @override
  String get dataProtectionPageExerciseContactButton => 'Nous Contacter';

  @override
  String get dataProtectionPageExerciseManageButton => 'Gérer les Données';

  @override
  String get dataProtectionPageRelatedTitle => 'Informations Connexes';

  @override
  String get dataProtectionPageRelatedPrivacy => 'Politique de Confidentialité';

  @override
  String get dataProtectionPageRelatedCookies => 'Politique des Cookies';

  @override
  String get dataProtectionPageRelatedTerms => 'Conditions d\'Utilisation';

  @override
  String get dataProtectionPageRelatedCompliance => 'Conformité';

  @override
  String get mobileAppsPageHeroTitle => 'Navia sur Mobile';

  @override
  String get mobileAppsPageHeroSubtitle =>
      'Emportez votre parcours éducatif avec vous.\nTéléchargez l\'application Navia sur votre plateforme préférée.';

  @override
  String get navSolutions => 'Solutions';
  @override
  String get forStudents => 'Pour les Étudiants';
  @override
  String get forInstitutions => 'Pour les Institutions';
  @override
  String get forParents => 'Pour les Parents';
  @override
  String get forCounselors => 'Pour les Conseillers';

  @override
  String get personaStudentHeroTitle => 'Votre avenir commence ici';
  @override
  String get personaStudentHeroSubtitle => 'Découvrez plus de 18 000 universités dans le monde, obtenez des recommandations par IA et suivez chaque candidature — le tout en un seul endroit.';
  @override
  String get personaStudentPain1Title => 'Submergé par les choix';
  @override
  String get personaStudentPain1Desc => 'Des milliers de programmes dans des centaines d\'universités — par où commencer ?';
  @override
  String get personaStudentPain2Title => 'Candidatures dispersées';
  @override
  String get personaStudentPain2Desc => 'Délais, documents et mises à jour répartis sur des dizaines de portails.';
  @override
  String get personaStudentPain3Title => 'Aucun accompagnement personnalisé';
  @override
  String get personaStudentPain3Desc => 'Les classements génériques ne tiennent pas compte de votre profil, objectifs et budget uniques.';
  @override
  String get personaStudentFeature1Title => 'Correspondance par IA';
  @override
  String get personaStudentFeature1Desc => 'Notre moteur de recommandation analyse votre profil pour suggérer des universités et programmes qui vous correspondent.';
  @override
  String get personaStudentFeature2Title => 'Suivi unifié des candidatures';
  @override
  String get personaStudentFeature2Desc => 'Gérez toutes vos candidatures, délais et documents depuis un seul tableau de bord.';
  @override
  String get personaStudentFeature3Title => 'Recherche intelligente d\'universités';
  @override
  String get personaStudentFeature3Desc => 'Filtrez par pays, frais de scolarité, classement, programmes et plus encore.';
  @override
  String get personaStudentTestimonial => 'Navia m\'a aidé à découvrir des programmes que je ne connaissais pas. J\'ai postulé à 8 universités et j\'ai été accepté dans 5 !';
  @override
  String get personaStudentTestimonialAuthor => 'Amara, Étudiante du Nigeria';
  @override
  String get personaStudentCta => 'Commencez votre parcours gratuitement';

  @override
  String get personaInstitutionHeroTitle => 'Attirez des étudiants talentueux du monde entier';
  @override
  String get personaInstitutionHeroSubtitle => 'Présentez vos programmes à des candidats motivés dans le monde entier. Gérez les candidatures efficacement et trouvez les bons candidats.';
  @override
  String get personaInstitutionPain1Title => 'Portée mondiale limitée';
  @override
  String get personaInstitutionPain1Desc => 'Les étudiants talentueux ne peuvent pas vous trouver s\'ils ne savent pas que vous existez.';
  @override
  String get personaInstitutionPain2Title => 'Admissions inefficaces';
  @override
  String get personaInstitutionPain2Desc => 'L\'examen manuel des candidatures et les communications dispersées ralentissent tout.';
  @override
  String get personaInstitutionPain3Title => 'Difficile de se démarquer';
  @override
  String get personaInstitutionPain3Desc => 'Rivaliser pour l\'attention parmi des milliers d\'institutions est un défi.';
  @override
  String get personaInstitutionFeature1Title => 'Visibilité mondiale';
  @override
  String get personaInstitutionFeature1Desc => 'Votre institution est recherchable par des étudiants dans plus de 100 pays. Présentez vos programmes et réussites.';
  @override
  String get personaInstitutionFeature2Title => 'Gestion des candidatures';
  @override
  String get personaInstitutionFeature2Desc => 'Examinez les candidatures, communiquez avec les candidats et suivez les admissions depuis un tableau de bord.';
  @override
  String get personaInstitutionFeature3Title => 'Données et analyses';
  @override
  String get personaInstitutionFeature3Desc => 'Comprenez d\'où viennent vos candidats et comment améliorer le recrutement.';
  @override
  String get personaInstitutionTestimonial => 'Depuis notre inscription sur Navia, nous avons constaté une augmentation de 40 % des candidatures internationales.';
  @override
  String get personaInstitutionTestimonialAuthor => 'Dr. Kofi, Directeur des admissions';
  @override
  String get personaInstitutionCta => 'Inscrire votre institution';

  @override
  String get personaParentHeroTitle => 'Soutenez l\'avenir de votre enfant';
  @override
  String get personaParentHeroSubtitle => 'Restez informé et impliqué tout au long du processus de candidature. Suivez les progrès, comparez les options et prenez des décisions ensemble.';
  @override
  String get personaParentPain1Title => 'Se sentir exclu';
  @override
  String get personaParentPain1Desc => 'Le processus de candidature peut être opaque — vous voulez aider mais ne savez pas où en sont les choses.';
  @override
  String get personaParentPain2Title => 'Difficile de comparer les options';
  @override
  String get personaParentPain2Desc => 'Frais de scolarité, classements, localisation, programmes — la comparaison est écrasante.';
  @override
  String get personaParentPain3Title => 'S\'inquiéter du bon choix';
  @override
  String get personaParentPain3Desc => 'Vous voulez le meilleur pour votre enfant, mais comment savoir quelle université est la bonne ?';
  @override
  String get personaParentFeature1Title => 'Suivi des candidatures';
  @override
  String get personaParentFeature1Desc => 'Consultez les mises à jour en temps réel de chaque candidature soumise par votre enfant.';
  @override
  String get personaParentFeature2Title => 'Comparaison d\'universités';
  @override
  String get personaParentFeature2Desc => 'Comparez les universités côte à côte selon les frais, programmes, classements et résultats.';
  @override
  String get personaParentFeature3Title => 'Tableau de bord partagé';
  @override
  String get personaParentFeature3Desc => 'Restez connecté avec le conseiller de votre enfant et soyez notifié des délais et décisions importants.';
  @override
  String get personaParentTestimonial => 'Je comprends enfin les options de ma fille. Navia nous a permis de comparer les universités et de décider ensemble.';
  @override
  String get personaParentTestimonialAuthor => 'Mme Diallo, Parent du Sénégal';
  @override
  String get personaParentCta => 'Rejoindre en tant que parent';

  @override
  String get personaCounselorHeroTitle => 'Favorisez la réussite de vos étudiants';
  @override
  String get personaCounselorHeroSubtitle => 'Gérez les parcours de plusieurs étudiants, fournissez des recommandations basées sur les données et suivez les résultats depuis une seule plateforme.';
  @override
  String get personaCounselorPain1Title => 'Trop d\'étudiants, trop peu de temps';
  @override
  String get personaCounselorPain1Desc => 'Gérer les candidatures de dizaines d\'étudiants avec des tableurs et des e-mails est insoutenable.';
  @override
  String get personaCounselorPain2Title => 'Informations obsolètes sur les universités';
  @override
  String get personaCounselorPain2Desc => 'Suivre les changements de programmes, délais et conditions d\'admission de centaines d\'universités.';
  @override
  String get personaCounselorPain3Title => 'Pas de vue centralisée';
  @override
  String get personaCounselorPain3Desc => 'Suivre quel étudiant a postulé où et à quelle étape il en est — tout est dispersé.';
  @override
  String get personaCounselorFeature1Title => 'Gestion des étudiants';
  @override
  String get personaCounselorFeature1Desc => 'Consultez tous vos étudiants, leurs candidatures et leurs progrès depuis un tableau de bord organisé.';
  @override
  String get personaCounselorFeature2Title => 'Recommandations par IA';
  @override
  String get personaCounselorFeature2Desc => 'Obtenez des suggestions d\'universités basées sur les données pour chaque étudiant selon son profil unique.';
  @override
  String get personaCounselorFeature3Title => 'Outils de collaboration';
  @override
  String get personaCounselorFeature3Desc => 'Partagez des recommandations avec les parents, coordonnez avec les institutions et envoyez des rappels.';
  @override
  String get personaCounselorTestimonial => 'Navia a transformé ma façon de travailler. Je peux maintenant accompagner 3 fois plus d\'étudiants avec de meilleurs résultats.';
  @override
  String get personaCounselorTestimonialAuthor => 'M. Mensah, Conseiller scolaire';
  @override
  String get personaCounselorCta => 'Commencer à conseiller avec Navia';

  @override
  String get personaPainPointsTitle => 'Nous comprenons vos défis';
  @override
  String get personaFeaturesTitle => 'Conçu pour vous';
  @override
  String get personaTestimonialTitle => 'Ce que disent les autres';
}
