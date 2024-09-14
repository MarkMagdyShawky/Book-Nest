import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/constants.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Features/Home/Presentation/Views/Widgets/custom_drop_menue.dart';
import 'package:flutter/material.dart';
import '../Widgets/BookListWidgets/best_seller_list_view.dart';
import '../Widgets/customAppBar.dart';
import '../Widgets/featuredBooksListView.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [kPrimaryColor, kSecondColor],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ),
      ),
      child: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kPadding20),
                  child: CustomAppBar(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: kPadding20),
                  child: FreaturedBooksListView(),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kPadding20),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle20.copyWith(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding20),
              child: BestSellerListView(),
            ),
          )
        ],
      ),
    );
  }
}
