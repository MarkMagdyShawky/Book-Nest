import 'package:book_nest/Core/Resources/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15),
            ),
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
            textStyle: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w900,
            )),
        child: Text(text),
      ),
    );
  }
}
