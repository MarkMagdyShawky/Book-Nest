import 'package:book_nest/Core/Errors/failure.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_nest/Features/Home/Data/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSelleerBooks() {
    // TODO: implement fetchBestSelleerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
