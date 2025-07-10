import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<ProductEntity>getProducts(); // it's not a future function beacause the data here it's already cashed!
}
class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<ProductEntity> getProducts() { 
    // TODO: implement getProducts
    throw UnimplementedError();
  }
}