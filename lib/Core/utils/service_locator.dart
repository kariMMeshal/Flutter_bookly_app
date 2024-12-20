import 'package:bookly_app/Core/utils/api_services.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_implemntation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


// Dependency Injection **

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>((ApiServices(Dio())));

  getIt.registerSingleton<HomeRepoImplemntation>(
      HomeRepoImplemntation(getIt.get<ApiServices>()));
}
