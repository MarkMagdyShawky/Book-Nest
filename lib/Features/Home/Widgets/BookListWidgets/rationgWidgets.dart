import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:flutter/material.dart';

class RationgWidgets extends StatelessWidget {
  const RationgWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.star),
        Text("4.8"),
        const SizedBox(width: 3),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: kFonstColor2),
        ),
      ],
    );
  }
}
