part of 'home_products_cubit.dart';

@immutable
sealed class HomeProductsCubitState {}

final class HomeProductsCubitInitial extends HomeProductsCubitState {}

final class HomeProductsCubitLoading extends HomeProductsCubitState {}

final class HomeProductsCubitFailure extends HomeProductsCubitState {
  final String errMessage;

  HomeProductsCubitFailure(this.errMessage);
  
}

final class HomeProductsCubitSuccess extends HomeProductsCubitState {
  final List<ProductEntity> products;

  HomeProductsCubitSuccess(this.products);
}
