import 'package:flutter/material.dart';

class FontManager {
  //
  Widget LogoText(double fontSize) {
    return Text(
      "Book Nest",
      style: TextStyle(
        fontFamily: "NerkoOne",
        fontSize: fontSize,
      ),
    );
  }
}
