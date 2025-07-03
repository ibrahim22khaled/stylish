class ProductEntity {
  final int productId;
  final String productName;
  final String productDescription;
  final num productPrice;
  final num productRate;
  final int productReviews;

  ProductEntity({
    required this.productId,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productRate,
    required this.productReviews,
  });
}
