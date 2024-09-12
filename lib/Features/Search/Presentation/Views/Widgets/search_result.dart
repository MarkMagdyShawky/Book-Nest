import 'package:flutter/material.dart';

import '../../../../Home/Presentation/Views/Widgets/BookListWidgets/best_seller_list_item.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          // child: BestSellerListItem(),
          child: Text("data"),
        );
      },
    );
  }
}
