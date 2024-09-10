import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:flutter/material.dart';

class RationgWidgets extends StatelessWidget {
  const RationgWidgets({
    super.key,
    required this.mainAxisAlignment,
  });

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
          "4.8",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 6),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: kWhiteColor2),
        ),
      ],
    );
  }
}
