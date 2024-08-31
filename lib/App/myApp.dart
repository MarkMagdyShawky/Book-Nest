import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/routeManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookNest',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      routes: RouteManager.routes,
      initialRoute: RoutesName.kSplashPage,
    );
  }
}
