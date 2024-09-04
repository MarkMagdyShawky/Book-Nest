import 'package:book_nest/Core/Resources/constans.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:flutter/material.dart';
import '../Widgets/BookListWidgets/best_seller_list_view.dart';
import '../Widgets/customAppBar.dart';
import '../Widgets/featuredBooksListView.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding20),
                child: CustomAppBar(),
              ),
              Padding(
                padding: EdgeInsets.only(left: kPadding20),
                child: FreaturedBooksListView(),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding20),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
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
    );
  }
}
