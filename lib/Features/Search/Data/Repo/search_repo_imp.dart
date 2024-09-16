import 'package:book_nest/Core/Errors/failure.dart';
import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Core/Utils/api_service.dart';
import 'package:book_nest/Features/Search/Data/Repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp extends SearchRepo {
  final ApiService apiService;

  SearchRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> featchSeachedBooks({required String searchText}) async {
    try {
      String endPoint = 'volumes?Filtering=free-ebooks&q=$searchText';

      var data = await apiService.get(endPoint: endPoint);

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioExeption(e));
    } catch (e) {
      return left(ServerFailure(errorMessage: "No Books Founded!"));
    }
  }
}
