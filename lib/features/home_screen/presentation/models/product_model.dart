class Product {
  final String image;
  final String name;
  final String description;
  final double price;
  final double originalPrice;
  final double discountPercentage;
  final double rating;
  final int reviews;

  Product( {
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviews,
     required this.originalPrice,
     required this.discountPercentage,
  });
}