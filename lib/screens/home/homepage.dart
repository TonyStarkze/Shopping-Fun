import 'package:flutter/material.dart';
import 'package:shopping/models/product.dart';
import 'package:shopping/screens/home/product_cards.dart';
import 'package:shopping/screens/add_product/add_product.dart'; // Make sure to import AddProduct widget

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        tooltip: 'Add a Product',
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          // Navigate to AddProduct when button is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProduct()),
          );
        },
        child: const Icon(Icons.add, color: Colors.white, size: 25),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Search Products Here',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.grey,
                )),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Call the search filter method
                  },
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Hi-Fi Shop & Service',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 23),
            Text(
              'Audio shop on Rustaveli Ave 57.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.6),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This shop offers both products and services',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.6),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                const Text(
                  'Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(width: 7),
                Text(
                  products.length.toString(),
                  style: const TextStyle(
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            if (products.isEmpty)
              const Expanded(
                  child: Center(child: Text('No products available!'))),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCards(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
