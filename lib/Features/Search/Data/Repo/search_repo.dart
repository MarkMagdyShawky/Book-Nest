import 'package:book_nest/Core/Errors/failure.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> featchSeachedBooks({required String searchText});
}
