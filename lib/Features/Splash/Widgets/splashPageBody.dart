import 'package:book_nest/Core/Widgets/custom_box_decoration.dart';
import 'package:book_nest/Core/Resources/imageManager.dart';
import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:book_nest/Features/Splash/Widgets/slidingTextAnaimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    SlidingAnimationHelper();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageDimensions().pageWidth(context),
      height: PageDimensions().pageHeight(context),
      decoration: CustomBoxDecoration().gradientBgBoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(ImageManger.logoImage),
            width: 250,
            height: 250,
          ),
          SlidingTextAnimation(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void SlidingAnimationHelper() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(animationController);
    animationController.forward();
  }
}
