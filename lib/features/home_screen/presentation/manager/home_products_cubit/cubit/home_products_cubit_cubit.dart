import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';
import 'package:stylish/features/home_screen/domain/use_cases/get_products_use_case.dart';

part 'home_products_cubit_state.dart';

class HomeProductsCubitCubit extends Cubit<HomeProductsCubitState> {
  HomeProductsCubitCubit(this.getProductsUseCase) : super(HomeProductsCubitInitial());
  final GetProductsUseCase getProductsUseCase;
  // here we deal with usecase as long as we perform clean architecture 
  // beacause 'USECASE' deals with State Mamagemet as it's shown before in clean architecture diagram
 Future<void> getProducts()async{
  emit(HomeProductsCubitLoading());

  var result=await getProductsUseCase.call(); 
  // it return an Either class of two sides 'Failure or List of product entities'
  result.fold((failure)
    // failure is a left side of Failure object
  {
    emit(HomeProductsCubitFailure(failure.message));
  }
  ,(products)
      // products is a right side of returned object type and here it's a list of product entity
   {
      emit(HomeProductsCubitSuccess(products));
   });

 }
}
