import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/imageManager.dart';
import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:flutter/material.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kPrimaryColor,
            kSecondColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const ClipRRect(
        child: Image(
          image: AssetImage(ImageManger.logoImage),
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
