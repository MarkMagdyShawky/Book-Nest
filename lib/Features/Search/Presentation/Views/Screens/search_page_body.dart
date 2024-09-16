import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Resources/constants.dart';
import '../../../../../Core/Resources/styles.dart';
import '../Widgets/custom_search_result.dart';
import '../Widgets/custom_search_text_field.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollBehavior: CupertinoScrollBehavior(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: kPadding20, right: kPadding20, top: 60, bottom: kPadding20),
                child: CustomSearchTextField(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding20, vertical: kPadding20),
                child: Text("Search Results", style: Styles.textStyle18),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding30),
                child: CustomSearchResult(),
              )
            ],
          ),
        )
      ],
    );
  }
}
