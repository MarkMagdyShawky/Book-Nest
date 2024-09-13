import 'package:dartz/dartz.dart';
import 'package:book_nest/Core/Errors/failure.dart';
import 'package:book_nest/Core/Utils/api_service.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_nest/Features/Home/Data/Repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=Computer Science&Sorting=Newest');
      List<BookModel> books = [];

      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioExeption(e));
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioExeption(e));
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
