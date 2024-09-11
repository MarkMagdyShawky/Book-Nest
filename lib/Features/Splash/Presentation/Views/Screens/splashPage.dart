import 'package:book_nest/Core/Resources/routeManager.dart';
import 'package:book_nest/Features/Splash/Presentation/Views/Widgets/splashPageBody.dart';
import 'package:flutter/material.dart';

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
        Navigator.popAndPushNamed(context, RoutesName.kHomePage);
        // Using GetX
        // Get.to(
        //   () => const HomePage(),
        //   transition: Transition.fadeIn,
        //   // duration: kTransitionDiration,
        // );
      },
    );
  }
}
