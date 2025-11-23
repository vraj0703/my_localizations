# my_localizations

A Flutter plugin for managing localizations with dynamic language switching support.

## Installation

### 1. Add Dependency

Since this is a local package, you can add it to your project's `pubspec.yaml` using the `path` dependency.

```yaml
dependencies:
  flutter:
    sdk: flutter
  # Add this:
  my_localizations:
    path: /absolute/path/to/my_localizations
```

Alternatively, if you host this on Git:

```yaml
dependencies:
  my_localizations:
    git:
      url: https://github.com/your_username/my_localizations.git
      ref: main
```

### 2. Import

```dart
import 'package:my_localizations/my_localizations.dart';
import 'package:my_localizations/language_model.dart'; // If you need LanguageModel
```

## Usage

### 1. Initialize

You must initialize `MyLocalizations` before using it, preferably in your `main.dart` or a startup logic.

```dart
final myLocalizations = MyLocalizations();

await myLocalizations.initialize(
  saveLocale: (locale) {
    // Save the locale to shared_preferences or database
    print('Locale saved: $locale');
  },
  allowedLocale: [
    LanguageModel(code: 'en', country: null, displayName: 'English'),
    LanguageModel(code: 'hi', country: null, displayName: 'Hindi'),
    LanguageModel(code: 'zh', country: null, displayName: 'Chinese'),
  ],
  defaultLocale: const Locale('en'),
);
```

### 2. Access Translations

Once initialized, you can access translations via the `strings` property.

```dart
Text(myLocalizations.strings.appName)
```

### 3. Change Language

To change the language dynamically:

```dart
await myLocalizations.loadIfChanged(const Locale('hi'));
setState(() {}); // Rebuild UI to reflect changes
```

### 4. Check State

```dart
if (myLocalizations.isLoaded) {
  // Safe to use strings
}

if (myLocalizations.isEnglish) {
  // Do something specific for English
}
```

## Features

-   **Dynamic Switching**: Switch languages at runtime without full app restart.
-   **Safe Access**: Throws helpful errors if accessed before initialization.
-   **Optimized**: Efficiently filters allowed locales.