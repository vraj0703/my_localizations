import 'my_localizations_platform_interface.dart';

class MyLocalizations {
  static late List<String> _allowedLocale;

  static Future<void> initialize({required List<String> allowedLocale}) async {
    _allowedLocale = allowedLocale;
  }

  Future<String?> getPlatformVersion() {
    return MyLocalizationsPlatform.instance.getPlatformVersion();
  }

  static List<String> get allowedLocale => _allowedLocale;
}
