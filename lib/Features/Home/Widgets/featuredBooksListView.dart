import 'package:book_nest/Features/Home/Widgets/featuredListItem.dart';
import 'package:flutter/material.dart';

import '../../../Core/Resources/pageDimensions.dart';

class FreaturedBooksListView extends StatelessWidget {
  const FreaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PageDimensions().pageHeight(context) * 0.26,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: FeaturedListItem(),
          );
        },
      ),
    );
  }
}
