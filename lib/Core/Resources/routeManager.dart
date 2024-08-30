import 'package:book_nest/Features/Home/Screens/homePage.dart';
import 'package:book_nest/Features/Splash/Screens/splashPage.dart';
import 'package:flutter/cupertino.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashPage: (context) => SplashPage(),
    RoutesName.kHomePage: (context) => HomePage(),
  };
}

class RoutesName {
  static const String kSplashPage = "Splash";
  static const String kHomePage = "Home";
}
