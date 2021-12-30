import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:ox_street_assigment/model/catalog_response.dart';
import 'package:ox_street_assigment/model/product.dart';

part 'app_store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  CatalogResponse catalogResponse = CatalogResponse();

  @observable
  List<Product> allListProduct = ObservableList<Product>();

  @observable
  List<Product> rankingList = ObservableList<Product>();

  @observable
  List<Product> justDroppedList = ObservableList<Product>();

  @observable
  bool isShowLoadingRanking = false;

  @observable
  bool isLoadAMore = false;

  @observable
  bool isShowLoadingDropped = false;

  @action
  Future<void> parseJsonFile() async {
    var jsonFile = await rootBundle.loadString('lib/res/file/catalog.json');
    catalogResponse = CatalogResponse.fromJson(json.decode(jsonFile));
    allListProduct = catalogResponse.data ?? [];
  }

  @action
  Future<void> loadRankingList() async {
    isShowLoadingRanking = true;
    rankingList.addAll(allListProduct);
    rankingList.sort((a, b) => a.rank!.compareTo(b.rank!));
    isShowLoadingRanking = false;
  }

  @action
  Future<void> loadDroppedList() async {
    isShowLoadingDropped = true;
    for (final Product product in allListProduct) {
      if (product.justDropped ?? false) {
        justDroppedList.add(product);
      }
    }
    isShowLoadingDropped = false;
  }
}
