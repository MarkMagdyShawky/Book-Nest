import 'package:book_nest/Core/Resources/constans.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Features/Home/Widgets/BookListWidgets/rationgWidgets.dart';
import 'package:flutter/material.dart';

class BestSellerBookDetails extends StatelessWidget {
  const BestSellerBookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Harry Potter And The Globlet of Fire Harry Potter And The Globlet of Fire Harry Potter And The Globlet of Fire",
            style: Styles.textStyle20,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text("JK. Rolling"),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "19.15 \$",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w900, fontFamily: kMontserrat),
              ),
              RationgWidgets(
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ],
          )
        ],
      ),
    );
  }
}
