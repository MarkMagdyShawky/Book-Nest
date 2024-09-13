import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../Home/Data/Models/book_model/book_model.dart';
import '../../../../Home/Data/Repos/home_repo.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit({required this.homeRepo}) : super(SimilerBooksInitial());

  HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks({required String category}) async {
    emit(SimilerBooksLoading());
    var result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold((failure) {
      emit(SimilerBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SimilerBooksSuccess(books: books));
    });
  }
}
