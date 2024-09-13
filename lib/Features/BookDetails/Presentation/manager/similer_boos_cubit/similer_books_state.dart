part of 'similer_books_cubit.dart';

abstract class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

class SimilerBooksInitial extends SimilerBooksState {}

class SimilerBooksLoading extends SimilerBooksState {}

class SimilerBooksFailure extends SimilerBooksState {
  final String errorMessage;
  SimilerBooksFailure(this.errorMessage);
}

class SimilerBooksSuccess extends SimilerBooksState {
  final List<BookModel> books;
  SimilerBooksSuccess({required this.books});
}
