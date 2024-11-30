import 'package:flutter/material.dart';
import 'package:shopping/models/product.dart';
import 'package:shopping/screens/home/homepage.dart';

class AddProduct extends StatelessWidget {
  AddProduct({super.key});

  final TextEditingController _name = TextEditingController();
  final TextEditingController _price = TextEditingController();

  // Accepting BuildContext as a parameter
  void addProd(BuildContext context) {
    products.add(Product(
      name: _name.text.trim(),
      price: _price.text.trim(),
      image: 'iphone.webp',
    ));
    // Navigate to Homepage after adding the product
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Homepage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add a Product',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          children: [
            TextFormField(
              controller: _name,
              decoration: const InputDecoration(
                hintText: 'Product Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: _price,
              decoration: const InputDecoration(
                hintText: 'Price',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            FilledButton(
              onPressed: () {
                // Call addProd with the current context
                addProd(context);
              },
              child: const Text('Create Product'),
            ),
          ],
        ),
      ),
    );
  }
}
