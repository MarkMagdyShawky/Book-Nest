import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Resources/constants.dart';
import '../../../../../Core/Resources/styles.dart';
import '../Widgets/custom_search_text_field.dart';
import '../Widgets/search_result.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: kPadding20, right: kPadding20, top: 60, bottom: kPadding20),
          child: CustomSearchTextField(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding20, vertical: kPadding20),
          child: Text("Search Results", style: Styles.textStyle18),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding30),
            child: SearchResult(),
          ),
        )
      ],
    );
  }
}
