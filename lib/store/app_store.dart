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

  @action
  Future<void> parseJsonFile() async {
    var jsonFile = await rootBundle.loadString('lib/res/file/catalog.json');
    catalogResponse = CatalogResponse.fromJson(json.decode(jsonFile));
    allListProduct = catalogResponse.data ?? [];
  }
}
