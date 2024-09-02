import 'package:book_nest/Features/Home/Screens/homePage.dart';
import 'package:book_nest/Features/Splash/Widgets/splashPageBody.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    NavigateHome();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashPageBody(),
    );
  }

  void NavigateHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        // Using GetX
        Get.to(
          () => const HomePage(),
          transition: Transition.fadeIn,
          // duration: kTransitionDiration,
        );
      },
    );
  }
}
