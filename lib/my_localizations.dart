import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:my_localizations/l10n/app_localizations.dart';

import 'language_model.dart';
import 'my_localizations_platform_interface.dart';

class MyLocalizations {
  List<Locale> _activeLocales = [];

  final Locale _defaultLocal = const Locale('en');

  AppLocalizations? _strings;

  AppLocalizations get strings {
    if (_strings == null) {
      throw StateError(
        'MyLocalizations not initialized. Call initialize() first.',
      );
    }
    return _strings!;
  }

  List<Locale> get activeLocales => _activeLocales;

  bool get isLoaded => _strings != null;

  bool get isEnglish => _strings?.localeName == 'en';

  Future<void> initialize({
    required Function(Locale locale) saveLocale,
    required List<LanguageModel> allowedLocale,
    Locale? defaultLocale,
  }) async {
    final allowedSet = allowedLocale
        .map((e) => '${e.code}_${e.country ?? ""}')
        .toSet();

    _activeLocales = AppLocalizations.supportedLocales.where((locale) {
      final key = '${locale.languageCode}_${locale.countryCode ?? ""}';
      return allowedSet.contains(key);
    }).toList();

    Locale locale = defaultLocale ?? _defaultLocal;

    if (kDebugMode) {
      // locale = Locale('zh'); // uncomment to test chinese
    }

    if (!_activeLocales.contains(locale)) {
      if (_activeLocales.isNotEmpty) {
        locale = _activeLocales.first;
      } else {
        locale = _defaultLocal;
      }
    }

    if (AppLocalizations.supportedLocales.contains(locale)) {
      _strings = await AppLocalizations.delegate.load(locale);
      saveLocale(locale);
    }
  }

  Future<String?> getPlatformVersion() {
    return MyLocalizationsPlatform.instance.getPlatformVersion();
  }

  Future<void> loadIfChanged(Locale locale) async {
    // Compare language codes to avoid "en" vs "en_US" mismatches if that's the intent
    // Or strictly compare if we support multiple regions.
    // Given AppLocalizations only has 'en', 'hi', 'zh', strict check is fine but let's be safe.

    if (_strings == null) return;

    final currentCode = _strings!.localeName;
    // final newCode = locale.toString(); // canonicalized usually

    // AppLocalizations.localeName is usually the canonicalized string (e.g. "en")
    // locale.languageCode is "en".

    bool didChange = currentCode != locale.languageCode;

    if (didChange && AppLocalizations.supportedLocales.contains(locale)) {
      _strings = await AppLocalizations.delegate.load(locale);
    }
  }
}
