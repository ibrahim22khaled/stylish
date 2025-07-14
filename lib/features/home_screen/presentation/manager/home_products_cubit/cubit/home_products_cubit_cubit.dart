import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';

part 'home_products_cubit_state.dart';

class HomeProductsCubitCubit extends Cubit<HomeProductsCubitState> {
  HomeProductsCubitCubit() : super(HomeProductsCubitInitial());
}
