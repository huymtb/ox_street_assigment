# ox_street_assigment
Ox Street Assignment for flutter position

### 1. Run iOS
- Update pod repo
```
pod repo update
```
- Reinstall pod
```
rm -rf ~/Library/Developer/Xcode/DerivedData/
rm -rf ~/Library/Caches/CocoaPods/
pod cache clean --all

flutter clean
flutter pub get

cd ios/
rm -rf Pods/
rm Podfile.lock

pod deintegrate
pod install --repo-update
```
- If it does not work, open project in Xcode, Product > Clean or Product > Clean Build Folder
- Run project again

### 2. How to generate code
- Generate the code then terminate (don't watch the changes real time).
```
flutter packages pub run build_runner build
```

- Generate the code and stay watching the changes real time, when there is a change, re-generate new code.
```
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

### 3. How to navigate to new screen
- Use the `navigateTo` method under `/navigation/navigation.dart`.
```
navigateTo(YourScreen());
```

### 4. Localization
- You have to install the plugin: [Flutter Intl](https://plugins.jetbrains.com/plugin/13666-flutter-intl )
- Declare texts under `lib/l10n/intl_en.arb`. Every time you change the texts under this file and save, above plugin will run automatically to generate new code.
- How to use localized texts:
```
// yourKey is the key you defined in intl_en.arb
Text(S.current.yourKey);
```
- If you want to add new language, just create new .arb file under lib/l10n/ folder. The file name is `intl_{countrycode}.arb`.

### 5. Troubleshooting
5.1 - Can not generate .g.dart (stores)
- If in the store, there is an import for graphql: `package:graphql/client.dart`, we must hide Store in graphql
```
import 'package:graphql/client.dart' hide Store;
```

5.2 - Can not generate localization files
- Make sure you installed flutter-intl plugin in your IDE

VSCode: https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl

Android Studio/IntelliJ: https://plugins.jetbrains.com/plugin/13666-flutter-intl

- Run below command to generate code:
```
flutter pub global run intl_utils:generate
```

### 6. Known issue
- All list data in app don't use load more, because all data get once from json file.
