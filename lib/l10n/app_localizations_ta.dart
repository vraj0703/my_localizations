// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'எனது உள்ளூர்மயமாக்கல்கள்';

  @override
  String animatedArrowSemanticSwipe(Object title) {
    return '$title பற்றிய விவரங்களை ஆராயவும்.';
  }

  @override
  String collectionLabelDiscovered(Object percentage) {
    return '$percentage% கண்டுபிடிக்கப்பட்டது';
  }

  @override
  String get fullscreenImageViewerSemanticFull =>
      'முழுத்திரை படம், விளக்கம் இல்லை';

  @override
  String collectionLabelCount(Object count, Object total) {
    return '$count இல் $total';
  }

  @override
  String newlyDiscoveredLabelNew(Object count, Object suffix) {
    return '$count புதிய உருப்படி$suffix ஆராய';
  }

  @override
  String timelineSemanticDate(Object fromDate, Object endDate) {
    return '$fromDate முதல் $endDate வரை';
  }

  @override
  String titleLabelDate(Object fromDate, Object endDate) {
    return '$fromDate முதல் $endDate வரை';
  }

  @override
  String get ok => 'சரி';

  @override
  String get cancel => 'ரத்து செய்';

  @override
  String get page => 'பக்கம்';

  @override
  String appPageSemanticSwipe(Object pageTitle, Object current, Object total) {
    return '$pageTitle $current of $total.';
  }

  @override
  String semanticsPrevious(Object title) {
    return 'முந்தைய $title';
  }

  @override
  String semanticsNext(Object title) {
    return 'அடுத்த $title';
  }

  @override
  String get date => 'தேதி';

  @override
  String get searchTerms => 'தேடல் சொற்கள்';

  @override
  String get close => 'நெருக்கமான';

  @override
  String get back => 'மீண்டும்';

  @override
  String get privacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String privacyStatement(Object privacyUrl) {
    return 'எங்கள் $privacyUrl இல் விளக்கப்பட்டுள்ளபடி நாங்கள் எந்த தனிப்பட்ட தகவலையும் சேகரிப்பதில்லை.';
  }

  @override
  String get pageNotFoundMessage => 'நீங்கள் தேடும் பக்கம் இல்லை.';

  @override
  String get pageNotFound => 'பக்கம் கிடைக்கவில்லை.';

  @override
  String get today => 'இன்று';

  @override
  String get yesterday => 'நேற்று';

  @override
  String get cameraPermissionTitle => 'தயவுசெய்து கேமரா அனுமதியை வழங்கவும்';

  @override
  String get voicePermissionTitle =>
      'தயவுசெய்து மைக்ரோஃபோன் அனுமதியை வழங்கவும்';

  @override
  String get cameraPermissionDescription =>
      'தயவுசெய்து கேமரா அனுமதியை வழங்கவும்';

  @override
  String get voicePermissionDescription =>
      'தயவுசெய்து மைக்ரோஃபோன் அனுமதியை வழங்கவும்';

  @override
  String get testKey => 'வணக்கம் உலகம்';

  @override
  String get startOver => 'மீண்டும் தொடங்குங்கள்';

  @override
  String get continueLabel => 'தொடரவும்';

  @override
  String get score => 'மதிப்பெண்';

  @override
  String get enroll => 'பதிவு செய்யுங்கள்';

  @override
  String get somethingWentWrong => 'ஏதோ தவறாகிவிட்டது';

  @override
  String get tryAgain => 'மீண்டும் முயற்சிக்கவும்';
}
