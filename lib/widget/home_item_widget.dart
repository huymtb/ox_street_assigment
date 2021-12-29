import 'package:flutter/material.dart';
import 'package:ox_street_assigment/utils/dimens.dart';
import 'package:ox_street_assigment/generated/l10n.dart';

class HomeItemWidget extends StatelessWidget {
  final String title;
  final Function? seeAllPressed;

  const HomeItemWidget({Key? key, this.title = '', this.seeAllPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.regularPadding),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: Dimens.homeTitleFont),
                ),
              ),
              GestureDetector(
                onTap: () {
                  seeAllPressed?.call();
                },
                child: Container(
                  width: 60.0,
                  height: 30.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(Dimens.seeAllRadius)),
                      border: Border.all(color: Colors.grey)),
                  child: Text(
                    '${S.current.seeAll}  >',
                    style: TextStyle(
                      fontSize: Dimens.seeAllFont
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
