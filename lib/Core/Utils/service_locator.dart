import 'package:book_nest/Core/Utils/api_service.dart';
import 'package:book_nest/Features/Home/Data/Repos/home_repo_imp.dart';
import 'package:book_nest/Features/Search/Data/Repo/search_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));

  getIt.registerSingleton<SearchRepoImp>(
    SearchRepoImp(apiService: getIt.get<ApiService>()),
  );
}
