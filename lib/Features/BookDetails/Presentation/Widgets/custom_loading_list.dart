import 'package:flutter/material.dart';

import '../../../../Core/Resources/pageDimensions.dart';
import '../../../../Core/Widgets/Loading/custom_image_animation_loading.dart';

class CustomLoadingList extends StatelessWidget {
  const CustomLoadingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PageDimensions().pageHeight(context) * .166,
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
