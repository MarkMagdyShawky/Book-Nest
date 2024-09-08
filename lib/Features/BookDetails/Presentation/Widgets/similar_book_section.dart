
import 'package:book_nest/Features/BookDetails/Presentation/Widgets/similer_boos_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Resources/styles.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.only(bottom: 22.0),
          child: SimilerBooksListView(),
        ),
      ],
    );
  }
}
