import 'package:dartz/dartz.dart';
import 'package:book_nest/Core/Errors/failure.dart';
import 'package:book_nest/Core/Utils/api_service.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_nest/Features/Home/Data/Repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=subject:programming&Sorting=Newest');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure(""));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
