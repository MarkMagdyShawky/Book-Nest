import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';

class CustomLoadingCard extends StatelessWidget {
  const CustomLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardLoading(
          cardLoadingTheme: cardLoadingTheme(),
          height: 30,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          width: 100,
          margin: EdgeInsets.only(bottom: 10),
        ),
        CardLoading(
          cardLoadingTheme: cardLoadingTheme(),
          height: 100,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          margin: EdgeInsets.only(bottom: 10),
        ),
        CardLoading(
          cardLoadingTheme: cardLoadingTheme(),
          height: 30,
          width: 200,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          margin: EdgeInsets.only(bottom: 10),
        ),
      ],
    );
  }

  CardLoadingTheme cardLoadingTheme() {
    return CardLoadingTheme(
      colorOne: kSecondColor.withOpacity(0.7),
      colorTwo: kSecondColor.withOpacity(0.7),
    );
  }
}
