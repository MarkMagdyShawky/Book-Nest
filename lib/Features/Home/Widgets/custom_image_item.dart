import 'package:flutter/material.dart';

import '../../../Core/Resources/imageManager.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4.1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage(ImageManger.Image1),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
