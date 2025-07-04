import 'package:stylish/core/utils/api_service.dart';
import 'package:stylish/features/home_screen/data/models/product_model.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductEntity>> getProducts(); // here I don't care about Failure because Failure is managed by HomeRepo class in domain layer..
                                             // here I care about getting data using API service.
}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  final ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<ProductEntity>> getProducts() async{
  var data =await apiService.get(endPoint: 'products'); // data is a list of maps... It depends on the API data shape.

  List<ProductEntity> products = getProductsList(data); // here we separete it on an external function to achieve Single Responsibilty Principle
    return products;

  }

  List<ProductEntity> getProductsList(List<Map<String, dynamic>> data) {
    List<ProductEntity>products=[];
    for (var productMap in data){  // productMap is the map of {String and dynamic} in the whole list which I've called it "data"
      products.add(ProductModel.fromJson(productMap)); // Here we parse the data from API to Product entity
    }
    return products;
  }
  
}