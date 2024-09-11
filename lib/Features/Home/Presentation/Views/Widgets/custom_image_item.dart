import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:flutter/material.dart';

class CustomImageItem extends StatelessWidget {
  final String imageURL;
  const CustomImageItem({super.key, required this.imageURL});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: kSecondColor,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(imageURL),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
