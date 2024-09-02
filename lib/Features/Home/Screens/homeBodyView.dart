import 'package:book_nest/Core/Resources/imageManager.dart';
import 'package:flutter/material.dart';
import '../../../Core/Resources/pageDimensions.dart';
import '../Widgets/customAppBar.dart';
import '../Widgets/featuredBooksListView.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomAppBar(),
          FreaturedBooksListView(),
          SizedBox(
            height: 30,
          ),
          Text(
            "Best Seller",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 30,
          ),
          BestSellerListItem(),
        ],
      ),
    );
  }
}

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PageDimensions().pageHeight(context) * 0.15,
      width: PageDimensions().pageWidth(context) - 70,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              image: AssetImage(ImageManger.Image1),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: Text(
                    "Harry Potter And The Globlet of Fire",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ),
                Text("JK. Rolling"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "19.15 \$",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star),
                        Text("4.8"),
                        Text("(2390)"),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
