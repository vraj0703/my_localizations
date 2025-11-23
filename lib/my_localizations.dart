import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:my_localizations/l10n/app_localizations.dart';

import 'language_model.dart';
import 'my_localizations_platform_interface.dart';

class MyLocalizations {
  static late List<Locale> _activeLocales;

  final Locale _defaultLocal = Locale('en');

  AppLocalizations? _strings;

  AppLocalizations get strings => _strings!;

  List<Locale> get activeLocales => _activeLocales;

  bool get isLoaded => _strings != null;

  bool get isEnglish => strings.localeName == 'en';

  Future<void> initialize({
    required Function(Locale locale) saveLocale,
    required List<LanguageModel> allowedLocale,
  }) async {
    Locale locale = _defaultLocal;
    //locale = Locale(localeCode.split('_')[0]);
    if (kDebugMode) {
      // locale = Locale('zh'); // uncomment to test chinese
    }
    _activeLocales = AppLocalizations.supportedLocales
        .where(
          (locale) => allowedLocale
              .where(
                (element) =>
                    element.code == locale.languageCode &&
                    element.country == locale.countryCode,
              )
              .isNotEmpty,
        )
        .toList();

    if (_activeLocales.contains(locale) == false) {
      locale = _defaultLocal;
    }

    _strings = await AppLocalizations.delegate.load(locale);
    saveLocale(locale);
  }

  Future<String?> getPlatformVersion() {
    return MyLocalizationsPlatform.instance.getPlatformVersion();
  }

  Future<void> loadIfChanged(Locale locale) async {
    bool didChange = _strings?.localeName != locale.languageCode;
    if (didChange && AppLocalizations.supportedLocales.contains(locale)) {
      _strings = await AppLocalizations.delegate.load(locale);
    }
  }
}
