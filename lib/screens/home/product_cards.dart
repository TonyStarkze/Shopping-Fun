import 'package:flutter/material.dart';
import 'package:shopping/models/product.dart';

class ProductCards extends StatelessWidget {
  const ProductCards({required this.product, super.key});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/img/prodImg/${product.image}',
                    width: 130,
                    height: 130,
                  ),
                  Positioned(
                    top: -15, // Position the icon as per your need
                    right: -18, // Position the icon as per your need
                    child: IconButton(
                      icon: const Icon(
                        Icons.delete_rounded, // Correct the syntax here
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        // Action when icon is pressed
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                product.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$${product.price}',
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ));
  }
}
