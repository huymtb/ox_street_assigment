import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ox_street_assigment/utils/dimens.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitRing(
      color: Colors.grey,
      lineWidth: Dimens.loadingSized,
      size: Dimens.loadingSized,
    );
  }
}
