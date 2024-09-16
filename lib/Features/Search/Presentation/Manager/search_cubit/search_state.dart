part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final List<BookModel> books;

  SearchSuccess(this.books);
}

class SearchFailure extends SearchState {
  final String errMessag;

  SearchFailure(this.errMessag);
}
