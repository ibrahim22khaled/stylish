import 'package:dartz/dartz.dart';
import 'package:stylish/core/errors/failure.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';
import 'package:stylish/features/home_screen/domain/repos/home_repo.dart';

class GetProductsUseCase {
  final HomeRepo homeRepo;
  GetProductsUseCase(this.homeRepo);
  
  Future<Either<Failure,List<ProductEntity>>> getProducts(){
    return homeRepo.getProducts();
    
  }
}