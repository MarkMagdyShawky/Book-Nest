import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:flutter/material.dart';

class RatingWidgets extends StatelessWidget {
  const RatingWidgets({
    super.key,
    required this.mainAxisAlignment,
    required this.rating,
    required this.count,
  });

  final double rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        Icon(
          Icons.star,
          color: kGlodColor,
        ),
        Text(
          "$rating",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 6),
        Text(
          "($count)",
          style: Styles.textStyle14.copyWith(color: kWhiteColor2),
        ),
      ],
    );
  }
}
