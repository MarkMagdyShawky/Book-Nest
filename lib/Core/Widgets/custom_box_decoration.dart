import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:flutter/material.dart';

class CustomBoxDecoration {
  BoxDecoration gradientBgBoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          kPrimaryColor,
          kSecondColor,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }
}
