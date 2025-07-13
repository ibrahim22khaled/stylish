import 'package:hive/hive.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

void SaveProductsData(List<ProductEntity> products, String boxName) {
     var box = Hive.box(boxName);
    box.addAll(products);
  }