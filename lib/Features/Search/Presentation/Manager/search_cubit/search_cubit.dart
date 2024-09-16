import 'package:bloc/bloc.dart';
import 'package:book_nest/Features/Search/Data/Repo/search_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../Home/Data/Models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;
  Future<void> featchSearchedBooks({required String searchText}) async {
    emit(SearchLoading());

    var result =await searchRepo.featchSeachedBooks(searchText: searchText);
    result.fold((failure) {emit(SearchFailure(failure.errorMessage));} , () => null)
  }
}
