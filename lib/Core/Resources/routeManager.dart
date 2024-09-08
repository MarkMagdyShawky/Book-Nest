import 'package:book_nest/Features/BookDetails/Screens/book_details_page.dart';
import 'package:book_nest/Features/Home/Screens/homePage.dart';
import 'package:book_nest/Features/Search/Screens/search_page.dart';
import 'package:book_nest/Features/Splash/Screens/splashPage.dart';
import 'package:flutter/cupertino.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashPage: (context) => SplashPage(),
    RoutesName.kHomePage: (context) => HomePage(),
    RoutesName.kBookDetails: (context) => BookDetailsPage(),
    RoutesName.kSearchPage: (context) => SearchPage(),
  };
}

class RoutesName {
  static const String kSplashPage = "Splash";
  static const String kHomePage = "Home";
  static const String kBookDetails = "BookDetails";
  static const String kSearchPage = "SearchPage";

}
