import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_nest/Features/Home/Data/Repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadind());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) => emit(FeaturedBooksFaliure(failure.errorMessage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
