import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ox_street_assigment/app/ox_street_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MaterialApp(
      home: OxStreetApp(),
      debugShowCheckedModeBanner: false,
    ));
  });
}
