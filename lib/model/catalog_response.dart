import 'package:ox_street_assigment/model/pagination.dart';
import 'package:ox_street_assigment/model/product.dart';

class CatalogResponse {
  List<Product>? data;
  Pagination? pagination;

  CatalogResponse({this.data, this.pagination});

  CatalogResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Product>[];
      json['data'].forEach((v) {
        data?.add(Product.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }
}
