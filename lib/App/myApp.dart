import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Utils/app_router.dart';
import 'package:book_nest/Core/Utils/service_locator.dart';
import 'package:book_nest/Features/Home/Data/Repos/home_repo_imp.dart';
import 'package:book_nest/Features/Home/Presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_nest/Features/Home/Presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'BookNest',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: AppRouts.router,
      ),
    );
  }
}
