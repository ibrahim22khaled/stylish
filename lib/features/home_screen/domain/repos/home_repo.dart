import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

abstract class HomeRepo {
  Future<List<ProductEntity>> getProducts();
}