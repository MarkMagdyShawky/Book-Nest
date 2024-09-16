import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:flutter/material.dart';

void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: Styles.textStyle14.copyWith(color: kWhiteColor1),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 10,
      backgroundColor: kPurpelColor1,
    ),
  );
}
