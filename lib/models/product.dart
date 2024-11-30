class Product {
  Product({
    required this.name,
    required this.price,
    required this.image,
  });

  final String name;
  final String price;
  final String image;
}

List<Product> products = [
  Product(name: 'Boat HeadPhone', price: 34.8.toString(), image: 'boat.webp'),
  Product(name: 'MI HeadPhone', price: 90.7.toString(), image: 'zeb.webp'),
  Product(name: 'iPhone 17', price: 999.9.toString(), image: 'iphone.webp'),
  Product(name: 'Airpods', price: 80.7.toString(), image: 'ipod.webp'),
];
