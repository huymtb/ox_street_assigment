import 'package:flutter/material.dart';
import 'package:ox_street_assigment/res/images/images.dart';
import 'package:ox_street_assigment/screens/home_screen.dart';
import 'package:ox_street_assigment/store/app_store.dart';
import 'package:ox_street_assigment/utils/ui_utils.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late AppStore _appStore;
  @override
  void initState() {
    super.initState();
    _appStore = context.read<AppStore>();
    _appStore.parseJsonFile().then((value) {
      Future.delayed(const Duration(milliseconds: 2000), () {
        navigateTo(const HomeScreen(), clearStack: true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          Images.icLogo,
          width: getScreenWidth(context) / 2,
        ),
      ),
    );
  }
}
