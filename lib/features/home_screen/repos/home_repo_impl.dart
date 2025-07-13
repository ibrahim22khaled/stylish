import 'package:dartz/dartz.dart';
import 'package:stylish/core/errors/failure.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';
import 'package:stylish/features/home_screen/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo{
  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}