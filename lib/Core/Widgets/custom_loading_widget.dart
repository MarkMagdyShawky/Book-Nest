import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:flutter/material.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: kSecondColor,
        strokeCap: StrokeCap.round,
        color: kWhiteColor2,
        strokeWidth: 10,
        strokeAlign: 3,
      ),
    );
  }
}
