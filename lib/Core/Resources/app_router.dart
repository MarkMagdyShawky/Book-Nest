import 'package:book_nest/Core/Utils/service_locator.dart';
import 'package:book_nest/Features/BookDetails/Presentation/Screens/book_details_page.dart';
import 'package:book_nest/Features/BookDetails/Presentation/manager/similer_boos_cubit/similer_books_cubit.dart';
import 'package:book_nest/Features/Home/Data/Repos/home_repo_imp.dart';
import 'package:book_nest/Features/Home/Presentation/Views/Screens/homePage.dart';
import 'package:book_nest/Features/Search/Presentation/Views/Screens/search_page.dart';
import 'package:book_nest/Features/Splash/Presentation/Views/Screens/splashPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Home/Data/Models/book_model/book_model.dart';

abstract class AppRouts {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: RoutesName.kHomePage,
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: RoutesName.kBookDetails,
      builder: (context, state) {
        return BlocProvider(
          create: (context) =>
              SimilerBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
          child: BookDetailsPage(bookModel: state.extra as BookModel),
        );
      },
    ),
    GoRoute(
      path: RoutesName.kSearchPage,
      builder: (context, state) {
        return SearchPage();
      },
    )
  ]);
}
// class RouteManager {
//   static Map<String, WidgetBuilder> routes = {
//     RoutesName.kSplashPage: (context) => SplashPage(),
//     RoutesName.kHomePage: (context) => HomePage(),
//     RoutesName.kSearchPage: (context) => SearchPage(),
//   };
// }

class RoutesName {
  static const String kSplashPage = "/Splash";
  static const String kHomePage = "/Home";
  static const String kBookDetails = "/BookDetails";
  static const String kSearchPage = "/SearchPage";
}
