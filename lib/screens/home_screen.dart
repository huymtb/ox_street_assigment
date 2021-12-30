import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ox_street_assigment/res/images/images.dart';
import 'package:ox_street_assigment/screens/product_type_list_screen.dart';
import 'package:ox_street_assigment/store/app_store.dart';
import 'package:ox_street_assigment/utils/dimens.dart';
import 'package:ox_street_assigment/utils/ui_utils.dart';
import 'package:ox_street_assigment/widget/home_item_widget.dart';
import 'package:ox_street_assigment/generated/l10n.dart';
import 'package:provider/src/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AppStore _appStore;

  @override
  void initState() {
    super.initState();
    _appStore = context.read<AppStore>();
    _appStore.loadRankingList();
    _appStore.loadDroppedList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            Images.icLogo,
            height: 36.0,
          ),
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
                listProduct: _appStore.allListProduct,
                seeAllPressed: () {
                  navigateTo(ProductTypeListScreen(
                    title: S.current.allList,
                    listProduct: _appStore.allListProduct,
                  ));
                },
              ),
              const SizedBox(
                height: Dimens.bigPadding,
              ),
              Observer(
                builder: (BuildContext context) {
                  return HomeItemWidget(
                    title: S.current.rankList,
                    listProduct: _appStore.rankingList,
                    isShowLoading: _appStore.isShowLoadingRanking,
                    seeAllPressed: () {
                      navigateTo(ProductTypeListScreen(
                        title: S.current.rankList,
                        listProduct: _appStore.rankingList,
                      ));
                    },
                  );
                },
              ),
              const SizedBox(
                height: Dimens.bigPadding,
              ),
              Observer(
                builder: (BuildContext context) {
                  return HomeItemWidget(
                    title: S.current.dropped,
                    listProduct: _appStore.justDroppedList,
                    isShowLoading: _appStore.isShowLoadingDropped,
                    seeAllPressed: () {
                      navigateTo(ProductTypeListScreen(
                        title: S.current.dropped,
                        listProduct: _appStore.justDroppedList,
                      ));
                    },
                  );
                },
              ),
              SafeArea(child: Container())
            ],
          ),
        ));
  }
}
