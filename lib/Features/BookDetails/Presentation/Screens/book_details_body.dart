import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Features/BookDetails/Presentation/Widgets/custom_book_details_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widgets/book_actions.dart';
import '../Widgets/book_details_section.dart';
import '../Widgets/similar_book_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: <Widget>[
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const SizedBox(height: 30),
                // Book Actions (btn)
                BookActions(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(height: 50),
                ),
                SimilarBookSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
