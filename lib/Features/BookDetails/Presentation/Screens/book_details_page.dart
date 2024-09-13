import 'package:book_nest/Features/BookDetails/Presentation/Screens/book_details_body.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/similer_boos_cubit/similer_books_cubit.dart';

class BookDetailsPage extends StatefulWidget {
  const BookDetailsPage({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsPage> createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context)
        .fetchSimilerBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(),
    );
  }
}
