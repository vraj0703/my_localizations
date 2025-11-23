import 'package:flutter/material.dart';
import 'package:my_localizations/my_localizations.dart';
import 'package:my_localizations/language_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _myLocalizations = MyLocalizations();
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initLocalizations();
  }

  Future<void> _initLocalizations() async {
    await _myLocalizations.initialize(
      saveLocale: (locale) {
        debugPrint('Saved locale: $locale');
      },
      allowedLocale: [
        LanguageModel(code: 'en', country: null, displayName: 'English'),
        LanguageModel(code: 'hi', country: null, displayName: 'Hindi'),
        LanguageModel(code: 'zh', country: null, displayName: 'Chinese'),
      ],
      defaultLocale: const Locale('en'),
    );

    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
    }
  }

  Future<void> _changeLanguage(String code) async {
    await _myLocalizations.loadIfChanged(Locale(code));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('MyLocalizations Example')),
        body: Center(
          child: _isInitialized
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Current Language: ${_myLocalizations.strings.localeName}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      _myLocalizations.strings.appName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Privacy Policy: ${_myLocalizations.strings.privacyPolicy}',
                    ),
                    const SizedBox(height: 40),
                    Wrap(
                      spacing: 10,
                      children: [
                        ElevatedButton(
                          onPressed: () => _changeLanguage('en'),
                          child: const Text('English'),
                        ),
                        ElevatedButton(
                          onPressed: () => _changeLanguage('hi'),
                          child: const Text('Hindi'),
                        ),
                        ElevatedButton(
                          onPressed: () => _changeLanguage('zh'),
                          child: const Text('Chinese'),
                        ),
                      ],
                    ),
                  ],
                )
              : const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
