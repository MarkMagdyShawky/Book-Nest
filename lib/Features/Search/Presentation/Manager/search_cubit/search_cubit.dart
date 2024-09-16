import 'package:bloc/bloc.dart';
import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Features/Search/Data/Repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchedBooksCubit extends Cubit<SearchState> {
  SearchedBooksCubit({required this.searchRepo}) : super(SearchInitial());

  final SearchRepo searchRepo;
  Future<void> featchSearchedBooks({required String searchText}) async {
    emit(SearchLoading());

    var result = await searchRepo.featchSeachedBooks(searchText: searchText);
    result.fold(
      (failure) {
        emit(SearchFailure(failure.errorMessage));
      },
      (books) {
        emit(SearchSuccess(books));
      },
    );
  }
}
