import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:ox_street_assigment/screens/splash_screen.dart';
import 'package:ox_street_assigment/store/app_store.dart';
import 'package:provider/provider.dart';
import 'package:ox_street_assigment/generated/l10n.dart';

class OxStreetApp extends StatefulWidget {
  const OxStreetApp({Key? key}) : super(key: key);

  @override
  _OxStreetAppState createState() => _OxStreetAppState();
}

class _OxStreetAppState extends State<OxStreetApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppStore>(
          create: (_) => AppStore(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.key,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: const SplashScreen(),
      ),
    );
  }
}
