# my_localizations

## Getting Started

### 1. Setup Dependencies

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: ^0.19.0

dev_dependencies:
  flutter_test:
    sdk: flutter
```

### 2. Configuration (l10n.yaml)

Create a file named `l10n.yaml` in the root of your project. This tells Flutter how to generate the code.

```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
nullable-getter: false
```

### 3. Create Translation Assets (ARB)

Create the directory `lib/l10n`.
Based on your JSON input (`en_US`, `hi_IN`, `zh_CN`), create the following files.

**`lib/l10n/app_en.arb`**
```json
{
  "@@locale": "en_US",
  "welcomeMessage": "Welcome to our Super App",
  "settingsTitle": "Settings"
}
```

**`lib/l10n/app_hi.arb`**
```json
{
  "@@locale": "hi_IN",
  "welcomeMessage": "हमारे सुपर ऐप में आपका स्वागत है",
  "settingsTitle": "सेटिंग्स"
}
```

**`lib/l10n/app_zh.arb`**
```json
{
  "@@locale": "zh_CN",
  "welcomeMessage": "欢迎使用我们的超级应用程序",
  "settingsTitle": "设置"
}
```

### How to Add a New Language (Extensibility)

To demonstrate how easy it is to extend:

1.  **Update the Input JSON:** Add `"es_ES"` to your configuration list.
2.  **Create ARB:** Create `lib/l10n/arb/app_es.arb`.
3.  **Run Generation:** Run `flutter gen-l10n`. Flutter detects the new file and regenerates the Dart code.
4.  **Done.** No manual code changes are required in the UI or the Delegate.


You do **not** need to manually write the `AppLocalizations` class, but you might need to run a command or check a setting if the file isn't showing up.

### 1. The Short Answer
If you have `generate: true` in your `pubspec.yaml`, Flutter generates the file automatically when you run:
```bash
flutter pub get
```
**or** when you run the app:
```bash
flutter run
```

If you want to force the generation manually without running the app, use:
```bash
flutter gen-l10n
```

---

### 2. "Why can't I see the file?"
By default, Flutter generates these files in a **hidden** system directory so they don't clutter your project.
*   **Location:** `.dart_tool/flutter_gen/gen_l10n/app_localizations.dart`
*   **Import path:** `import 'package:flutter_gen/gen_l10n/app_localizations.dart';`

Your IDE (VS Code / Android Studio) should recognize this import path automatically **after** you run `flutter pub get` once.

### 3. Troubleshooting
If the class is still not found, check these three common mistakes:

#### A. Check `pubspec.yaml` indentation
Ensure `generate: true` is correctly indented under `flutter:`
```yaml
flutter:
  uses-material-design: true
  generate: true  # <--- MUST BE HERE
```

#### B. Restart the Analyzer
Sometimes the IDE doesn't realize a new file was generated.
*   **VS Code:** `Ctrl+Shift+P` -> "Dart: Restart Analysis Server".
*   **Android Studio:** File -> "Invalidate Caches / Restart".

#### C. (Optional) Generate files into your `lib/` folder
If you prefer to **see** the generated code inside your project (e.g., in `lib/l10n/generated/`), add this to your `l10n.yaml`:

```yaml
arb-dir: lib/l10n/arb
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
nullable-getter: false

# Add these two lines:
synthetic-package: false
output-dir: lib/l10n/generated
```
*Note: If you do this, you must change your import to a relative path (e.g., `import '../l10n/generated/app_localizations.dart';`) instead of `package:flutter_gen/...`.*