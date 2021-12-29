import 'package:flutter/material.dart';
import 'package:ox_street_assigment/res/images/images.dart';
import 'package:ox_street_assigment/utils/dimens.dart';
import 'package:ox_street_assigment/widget/home_item_widget.dart';
import 'package:ox_street_assigment/generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(Images.icLogo, height: 36.0,),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: Dimens.regularPadding,
            ),
            HomeItemWidget(
              title: S.current.allList,
            )
          ],
        ),
      )
    );
  }

}
