import 'package:flutter/material.dart';

import '../../../Core/Resources/imageManager.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4.1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(17),
          image: const DecorationImage(
            image: AssetImage(ImageManger.Image1),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
