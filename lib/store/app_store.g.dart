// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$catalogResponseAtom = Atom(name: '_AppStore.catalogResponse');

  @override
  CatalogResponse get catalogResponse {
    _$catalogResponseAtom.reportRead();
    return super.catalogResponse;
  }

  @override
  set catalogResponse(CatalogResponse value) {
    _$catalogResponseAtom.reportWrite(value, super.catalogResponse, () {
      super.catalogResponse = value;
    });
  }

  final _$allListProductAtom = Atom(name: '_AppStore.allListProduct');

  @override
  List<Product> get allListProduct {
    _$allListProductAtom.reportRead();
    return super.allListProduct;
  }

  @override
  set allListProduct(List<Product> value) {
    _$allListProductAtom.reportWrite(value, super.allListProduct, () {
      super.allListProduct = value;
    });
  }

  final _$rankingListAtom = Atom(name: '_AppStore.rankingList');

  @override
  List<Product> get rankingList {
    _$rankingListAtom.reportRead();
    return super.rankingList;
  }

  @override
  set rankingList(List<Product> value) {
    _$rankingListAtom.reportWrite(value, super.rankingList, () {
      super.rankingList = value;
    });
  }

  final _$justDroppedListAtom = Atom(name: '_AppStore.justDroppedList');

  @override
  List<Product> get justDroppedList {
    _$justDroppedListAtom.reportRead();
    return super.justDroppedList;
  }

  @override
  set justDroppedList(List<Product> value) {
    _$justDroppedListAtom.reportWrite(value, super.justDroppedList, () {
      super.justDroppedList = value;
    });
  }

  final _$isShowLoadingRankingAtom =
      Atom(name: '_AppStore.isShowLoadingRanking');

  @override
  bool get isShowLoadingRanking {
    _$isShowLoadingRankingAtom.reportRead();
    return super.isShowLoadingRanking;
  }

  @override
  set isShowLoadingRanking(bool value) {
    _$isShowLoadingRankingAtom.reportWrite(value, super.isShowLoadingRanking,
        () {
      super.isShowLoadingRanking = value;
    });
  }

  final _$isShowLoadingDroppedAtom =
      Atom(name: '_AppStore.isShowLoadingDropped');

  @override
  bool get isShowLoadingDropped {
    _$isShowLoadingDroppedAtom.reportRead();
    return super.isShowLoadingDropped;
  }

  @override
  set isShowLoadingDropped(bool value) {
    _$isShowLoadingDroppedAtom.reportWrite(value, super.isShowLoadingDropped,
        () {
      super.isShowLoadingDropped = value;
    });
  }

  final _$parseJsonFileAsyncAction = AsyncAction('_AppStore.parseJsonFile');

  @override
  Future<void> parseJsonFile() {
    return _$parseJsonFileAsyncAction.run(() => super.parseJsonFile());
  }

  final _$loadRankingListAsyncAction = AsyncAction('_AppStore.loadRankingList');

  @override
  Future<void> loadRankingList() {
    return _$loadRankingListAsyncAction.run(() => super.loadRankingList());
  }

  final _$loadDroppedListAsyncAction = AsyncAction('_AppStore.loadDroppedList');

  @override
  Future<void> loadDroppedList() {
    return _$loadDroppedListAsyncAction.run(() => super.loadDroppedList());
  }

  @override
  String toString() {
    return '''
catalogResponse: ${catalogResponse},
allListProduct: ${allListProduct},
rankingList: ${rankingList},
justDroppedList: ${justDroppedList},
isShowLoadingRanking: ${isShowLoadingRanking},
isShowLoadingDropped: ${isShowLoadingDropped}
    ''';
  }
}
