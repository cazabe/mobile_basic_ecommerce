import 'package:flutter/material.dart';
import 'package:productos_app/services/services.dart';
import 'package:productos_app/widgets/product_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productService = Provider.of<ProductService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          child: const ProductCard(),
          onTap: () => Navigator.pushNamed(context, 'product'),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}
