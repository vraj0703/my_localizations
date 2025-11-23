import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_localizations/my_localizations.dart';
import 'package:my_localizations/language_model.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('MyLocalizations', () {
    late MyLocalizations myLocalizations;

    setUp(() {
      myLocalizations = MyLocalizations();
    });

    test(
      'should throw StateError if strings accessed before initialization',
      () {
        expect(() => myLocalizations.strings, throwsStateError);
      },
    );

    test('should initialize with default locale if allowed', () async {
      bool saved = false;
      await myLocalizations.initialize(
        saveLocale: (locale) {
          saved = true;
          expect(locale.languageCode, 'en');
        },
        allowedLocale: [
          LanguageModel(code: 'en', country: null, displayName: 'English'),
        ],
      );

      expect(myLocalizations.isLoaded, true);
      expect(myLocalizations.isEnglish, true);
      expect(saved, true);
      expect(myLocalizations.activeLocales.length, 1);
      expect(myLocalizations.activeLocales.first.languageCode, 'en');
    });

    test(
      'should fallback to first allowed locale if default is not allowed',
      () async {
        // Default is 'en', but we only allow 'hi'
        bool saved = false;
        await myLocalizations.initialize(
          saveLocale: (locale) {
            saved = true;
            expect(locale.languageCode, 'hi');
          },
          allowedLocale: [
            LanguageModel(code: 'hi', country: null, displayName: 'Hindi'),
          ],
        );

        expect(myLocalizations.isLoaded, true);
        expect(myLocalizations.isEnglish, false);
        expect(saved, true);
        expect(myLocalizations.activeLocales.length, 1);
        expect(myLocalizations.activeLocales.first.languageCode, 'hi');
      },
    );

    test('should loadIfChanged when locale changes', () async {
      await myLocalizations.initialize(
        saveLocale: (_) {},
        allowedLocale: [
          LanguageModel(code: 'en', country: null, displayName: 'English'),
          LanguageModel(code: 'hi', country: null, displayName: 'Hindi'),
        ],
      );

      expect(myLocalizations.strings.localeName, 'en');

      await myLocalizations.loadIfChanged(const Locale('hi'));

      expect(myLocalizations.strings.localeName, 'hi');
    });

    test('should NOT loadIfChanged when locale is same', () async {
      await myLocalizations.initialize(
        saveLocale: (_) {},
        allowedLocale: [
          LanguageModel(code: 'en', country: null, displayName: 'English'),
        ],
      );

      final initialStrings = myLocalizations.strings;

      await myLocalizations.loadIfChanged(const Locale('en'));

      // Should be same instance if logic is optimized to not reload,
      // but loadIfChanged implementation reloads if "didChange" is true.
      // Since we passed 'en' and current is 'en', didChange should be false.
      expect(myLocalizations.strings, same(initialStrings));
    });
  });
}
