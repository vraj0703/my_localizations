import 'package:flutter/foundation.dart';
import 'package:flutter_base/common_libs.dart';

class LocaleLogic {
  final Locale _defaultLocal = Locale('en');

  AppLocalizations? _strings;

  AppLocalizations get strings => _strings!;

  bool get isLoaded => _strings != null;

  bool get isEnglish => strings.localeName == 'en';

  Future<void> load() async {
    Locale locale = _defaultLocal;
    //locale = Locale(localeCode.split('_')[0]);
    if (kDebugMode) {
      // locale = Locale('zh'); // uncomment to test chinese
    }
    if (AppLocalizations.supportedLocales.contains(locale) == false) {
      locale = _defaultLocal;
    }

    _strings = await AppLocalizations.delegate.load(locale);
  }

  Future<void> loadIfChanged(Locale locale) async {
    bool didChange = _strings?.localeName != locale.languageCode;
    if (didChange && AppLocalizations.supportedLocales.contains(locale)) {
      _strings = await AppLocalizations.delegate.load(locale);
    }
  }
}
