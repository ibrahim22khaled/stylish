import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:stylish/core/utils/api_service.dart';
import 'package:stylish/features/home_screen/data/data_sources/home_local_data_source.dart';
import 'package:stylish/features/home_screen/data/data_sources/home_remote_data_source.dart';
import 'package:stylish/features/home_screen/repos/home_repo_impl.dart';

final getIt = GetIt.instance;
// here we have an object of get_it package that apply "Dependency injection"
// this object lets us to store a service to apply Singleton pattern principle
// that we have one object we store it one time and use it however we want without creating new objects
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
