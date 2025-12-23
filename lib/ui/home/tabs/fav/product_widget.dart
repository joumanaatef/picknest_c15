class Product {
  final String name;
  final String color;
  final int price;
  final int? oldPrice;
  final String image;

  Product({
    required this.name,
    required this.color,
    required this.price,
    this.oldPrice,
    required this.image,
  });
}
