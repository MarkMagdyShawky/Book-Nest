import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Core/Widgets/custom_box_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/custom_search_text_field.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: CustomSearchTextField(),
        ),
      ],
    );
  }
}


