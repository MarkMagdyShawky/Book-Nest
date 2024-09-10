import 'package:bloc/bloc.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
