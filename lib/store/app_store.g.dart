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

  final _$parseJsonFileAsyncAction = AsyncAction('_AppStore.parseJsonFile');

  @override
  Future<void> parseJsonFile() {
    return _$parseJsonFileAsyncAction.run(() => super.parseJsonFile());
  }

  @override
  String toString() {
    return '''
catalogResponse: ${catalogResponse},
allListProduct: ${allListProduct}
    ''';
  }
}
