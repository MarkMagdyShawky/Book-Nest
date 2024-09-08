import 'package:book_nest/Features/BookDetails/Widgets/custom_book_details_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widgets/book_actions.dart';
import '../Widgets/book_details_section.dart';
import '../Widgets/similar_book_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

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
                BookDetailsSection(),
                const SizedBox(height: 30),
                // Book Actions (btn)
                BookActions(),
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
