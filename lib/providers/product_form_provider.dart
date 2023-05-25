import 'package:flutter/material.dart';
import 'package:productos_app/models/products.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Product product;

  ProductFormProvider(this.product);

  bool isValidFor() {
    return formkey.currentState?.validate() ?? false;
  }
}
