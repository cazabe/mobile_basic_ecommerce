import 'package:flutter/material.dart';
import 'package:productos_app/ui/input_decorations.dart';
import 'package:productos_app/widgets/product_image.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const ProductImage(),
                Positioned(
                  top: 60,
                  left: 20,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const _ProductForm(),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save_alt_outlined),
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  const _ProductForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: _buildBoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecorations.authInputDecoration(
                    hinText: 'Nombre del producto',
                    labelTexr: 'Nombre:',
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecorations.authInputDecoration(
                    hinText: '\$150',
                    labelTexr: 'Precio:',
                  ),
                ),
                const SizedBox(height: 30),
                SwitchListTile.adaptive(
                  value: true,
                  title: const Text('Disponoble'),
                  activeColor: Colors.indigo,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, 5),
              blurRadius: 5)
        ]);
  }
}
