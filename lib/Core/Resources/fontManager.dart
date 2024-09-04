import 'package:book_nest/Core/Resources/constans.dart';
import 'package:flutter/material.dart';

class FontManager {
  //
  Widget LogoText(double fontSize) {
    return Text(
      "Book Nest",
      style: TextStyle(
        fontFamily: kNerkoOne,
        fontSize: fontSize,
      ),
    );
  }
}
