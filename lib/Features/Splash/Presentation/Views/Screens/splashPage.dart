import 'package:book_nest/Core/Utils/app_router.dart';
import 'package:book_nest/Features/Splash/Presentation/Views/Widgets/splashPageBody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        GoRouter.of(context).pushReplacement(RoutesName.kHomePage);
      },
    );
  }
}
