import 'package:hive/hive.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<ProductEntity>getProducts(); // it's not a future function beacause the data here it's already cashed!
}
class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<ProductEntity> getProducts() { 
    var box = Hive.box<ProductEntity>(KHomeBox);
    return box.values.toList();
    /// it gets data cached in my device memory from the SaveProductsData fun from remote data source by Hive
}
}