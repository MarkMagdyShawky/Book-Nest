import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/constants.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Features/Home/presentation/Views/Widgets/BookListWidgets/custom_rating_widget.dart';
import 'package:flutter/material.dart';

class BestSellerBookDetails extends StatelessWidget {
  const BestSellerBookDetails({required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            bookModel.volumeInfo.title.toString(),
            style: Styles.textStyle20,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            bookModel.volumeInfo.authors![0].toString(),
            style: Styles.textStyle14.copyWith(color: kWhiteColor2),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Free",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w900, fontFamily: kMontserrat),
              ),
              RatingWidgets(
                mainAxisAlignment: MainAxisAlignment.start,
                rating: bookModel.volumeInfo.averageRating ?? 0,
                count: bookModel.volumeInfo.ratingsCount ?? 0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
