import 'package:bloc/bloc.dart';
import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Core/Models/book_model/book_model.dart';

import '../../../../../Core/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:book_nest/Features/Home/Data/Repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());

  HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
