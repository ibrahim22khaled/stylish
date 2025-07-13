import 'package:hive/hive.dart';
part 'product_entity.g.dart';
 // to generate product type adapterflutter packages pub run build_runner build


// run this prompt in terminal "  flutter packages pub run build_runner build  "

@HiveType(typeId:0)
class ProductEntity {
  @HiveField(0)
  final int productId;
  @HiveField(1)
  final String productName;
  @HiveField(2)
  final String productDescription;
  @HiveField(3)
  final num productPrice;
  @HiveField(4)
  final num productRate;
  @HiveField(5)
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
///////////////////