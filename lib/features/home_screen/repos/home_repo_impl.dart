import 'package:dartz/dartz.dart';
import 'package:stylish/core/errors/failure.dart';
import 'package:stylish/features/home_screen/data/data_sources/home_local_data_source.dart';
import 'package:stylish/features/home_screen/data/data_sources/home_remote_data_source.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';
import 'package:stylish/features/home_screen/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  /// this calss to collect home & remote data source

  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });
  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      List<ProductEntity>products;
      // First you get the data cached in your device 
      products = homeLocalDataSource.getProducts();
      /// A check condition to get the data if it's cached
      if (products.isNotEmpty) {
        return right(products);
      }
      // Second you get the data if there is no cached data before
      products = await homeRemoteDataSource.getProducts();
      return right(products);
    } catch (e) {
      return left(Failure());
    }
  }
}
