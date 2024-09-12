import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';

class CustomImageLoadingAnimation extends StatelessWidget {
  const CustomImageLoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: CardLoading(
       cardLoadingTheme:  CardLoadingTheme(
          colorOne: kSecondColor.withOpacity(0.7),
          colorTwo: kSecondColor.withOpacity(0.7),
        ),
        height: 150,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        margin: EdgeInsets.only(bottom: 10),
      ),
    );
  }
}
