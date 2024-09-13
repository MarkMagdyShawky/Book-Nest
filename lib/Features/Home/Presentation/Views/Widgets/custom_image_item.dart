import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Widgets/Loading/custom_image_animation_loading.dart';

class CustomImageItem extends StatelessWidget {
  final String imageURL;
  const CustomImageItem({super.key, required this.imageURL});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: imageURL,
          fit: BoxFit.fill,
          placeholder: (context, url) => Center(
            child: CustomImageLoadingAnimation(),
          ),
          errorWidget: (context, url, error) => Icon(
            Icons.error_outline_rounded,
            size: 40,
            color: kWhiteColor2,
          ),
        ),
      ),
    );
  }
}
