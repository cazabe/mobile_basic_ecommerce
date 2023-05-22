import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';
import 'package:http/http.dart' as http;

class ProductService extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-2097c-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  bool isLoading = true;
  //TODO hacer fetch de productos

  ProductService() {
    this.loadProducts();
  }
// <List<Product>>
  Future loadProducts() async {
    final url = Uri.https(_baseUrl, 'products.json');
    final response = await http.get(url);
    final Map<String, dynamic> productsMap = jsonDecode(response.body);
    productsMap.forEach((key, value) {
      final tempProduct = Product.fromMap(value);
      tempProduct.id = key;
      products.add(tempProduct);
    });

    print(products[0].name);
  }
}
