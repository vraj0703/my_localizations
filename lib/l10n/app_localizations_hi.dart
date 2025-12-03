// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'मेरे स्थानीयकरण';

  @override
  String animatedArrowSemanticSwipe(Object title) {
    return '$title के बारे में विवरण देखें।';
  }

  @override
  String collectionLabelDiscovered(Object percentage) {
    return '$percentage% खोजा गया';
  }

  @override
  String get fullscreenImageViewerSemanticFull =>
      'पूर्ण स्क्रीन छवि, कोई विवरण उपलब्ध नहीं है';

  @override
  String collectionLabelCount(Object count, Object total) {
    return '$count का $total';
  }

  @override
  String newlyDiscoveredLabelNew(Object count, Object suffix) {
    return 'तलाशने के लिए $count नया आइटम$suffix';
  }

  @override
  String timelineSemanticDate(Object fromDate, Object endDate) {
    return '$fromDate से $endDate';
  }

  @override
  String titleLabelDate(Object fromDate, Object endDate) {
    return '$fromDate से $endDate';
  }

  @override
  String get ok => 'ठीक है';

  @override
  String get cancel => 'रद्द करना';

  @override
  String get page => 'पेज';

  @override
  String appPageSemanticSwipe(Object pageTitle, Object current, Object total) {
    return '$pageTitle $current का $total।';
  }

  @override
  String semanticsPrevious(Object title) {
    return 'पिछला $title';
  }

  @override
  String semanticsNext(Object title) {
    return 'अगला $title';
  }

  @override
  String get date => 'तारीख';

  @override
  String get searchTerms => 'खोज शब्द';

  @override
  String get close => 'बंद करना';

  @override
  String get back => 'पीछे';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String privacyStatement(Object privacyUrl) {
    return 'जैसा कि हमारे $privacyUrl में बताया गया है, हम कोई भी व्यक्तिगत जानकारी एकत्र नहीं करते हैं।';
  }

  @override
  String get pageNotFoundMessage =>
      'आप जिस पृष्ठ की तलाश कर रहे हैं वह मौजूद नहीं है।';

  @override
  String get pageNotFound => 'पृष्ठ नहीं मिला।';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get cameraPermissionTitle => 'कृपया कैमरे की अनुमति प्रदान करें';

  @override
  String get voicePermissionTitle => 'कृपया माइक्रोफोन की अनुमति प्रदान करें';

  @override
  String get cameraPermissionDescription => 'कृपया कैमरे की अनुमति प्रदान करें';

  @override
  String get voicePermissionDescription =>
      'कृपया माइक्रोफोन की अनुमति प्रदान करें';

  @override
  String get testKey => 'हैलो वर्ल्ड';

  @override
  String get startOver => 'प्रारंभ करें';

  @override
  String get continueLabel => 'जारी रखना';

  @override
  String get score => 'अंक';

  @override
  String get enroll => 'नामांकन';

  @override
  String get somethingWentWrong => 'कुछ गलत हो गया';

  @override
  String get tryAgain => 'पुनः प्रयास करें';

  @override
  String get next => 'अगला';

  @override
  String get selectAnOption => 'कोई विकल्प चुनें';

  @override
  String get low => 'कम';

  @override
  String get medium => 'मध्यम';

  @override
  String get high => 'उच्च';

  @override
  String get pleaseEnterValue => 'कृपया मान दर्ज करें';

  @override
  String get calculating => 'गिना जा रहा है';

  @override
  String get getDiscounts => 'छूट प्राप्त करें';

  @override
  String get recalculate => 'पुनर्गणना';

  @override
  String get makeSureItFitsFrame =>
      'सुनिश्चित करें कि यह फ्रेम में फिट बैठता है';

  @override
  String get analyzing => 'का विश्लेषण';

  @override
  String get uploading => 'अपलोड हो रहा है';

  @override
  String get camera => 'कैमरा';

  @override
  String get scan => 'स्कैन';

  @override
  String get photo => 'तस्वीर';
}
