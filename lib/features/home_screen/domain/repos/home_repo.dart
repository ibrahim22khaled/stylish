import 'package:dartz/dartz.dart';
import 'package:stylish/core/errors/failure.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<ProductEntity>>> getProducts();
}