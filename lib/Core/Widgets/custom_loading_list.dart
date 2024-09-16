import 'package:flutter/material.dart';

import '../Resources/pageDimensions.dart';
import 'Loading/custom_image_animation_loading.dart';

class CustomLoadingList extends StatelessWidget {
  const CustomLoadingList({
    super.key,
    required this.height,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PageDimensions().pageHeight(context) * height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: CustomImageLoadingAnimation(),
        ),
      ),
    );
  }
}
