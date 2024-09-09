import 'package:book_nest/Core/Errors/failure.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSelleerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}