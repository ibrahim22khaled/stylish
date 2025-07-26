import 'package:hive/hive.dart';
part 'product_entity.g.dart';
// to generate product type adapterflutter packages pub run build_runner build

// run this prompt in terminal "  flutter packages pub run build_runner build  "

@HiveType(typeId: 0)
class ProductEntity {
  @HiveField(0)
  final int productId;
  @HiveField(1)
  final String productTitle;
  @HiveField(2)
  final num productPrice;
  @HiveField(3)
  final String productDescription;
  @HiveField(4)
  final String productCategory;
  @HiveField(5)
  final String productImage;
  @HiveField(6)
  final num productRate;
  @HiveField(7)
  final int productReviews;

  ProductEntity({
   required this.productId,
   required this.productTitle,
   required this.productPrice,
   required this.productDescription,
   required this.productCategory,
   required this.productImage,
   required this.productRate,
   required this.productReviews,
  });
}
///////////////////
//////////////