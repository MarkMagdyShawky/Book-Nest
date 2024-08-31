import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/imageManager.dart';
import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:book_nest/Core/Resources/routeManager.dart';
import 'package:book_nest/Features/Splash/Widgets/splashPageBody.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // change page after 4 sec
    // Future.delayed(
    //   const Duration(seconds: 4),
    //   () {
    //     print("replaceeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
    //     Navigator.pushReplacementNamed(context, RoutesName.kHomePage);
    //   },
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashPageBody(),
    );
  }
}
