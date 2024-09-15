import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Resources/colorManager.dart';
import '../../../../Core/Resources/list_manager.dart';
import '../../../../Core/Resources/pageDimensions.dart';
import '../../../../Core/Resources/styles.dart';
import '../../../Home/Presentation/Views/Widgets/BookListWidgets/custom_rating_widget.dart';
import '../../../Home/Presentation/Views/Widgets/custom_image_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: PageDimensions().pageWidth(context) * 0.21),
          child: CustomImageItem(
            imageURL: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            bookModel.volumeInfo.title.toString(),
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          bookModel.volumeInfo.authors![0].toString(),
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: kWhiteColor1.withOpacity(0.7),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        // RatingWidgets(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   rating: rationList[2],
        //   count: ratingCount[1],
        // ),

        RatingWidgets(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
      ],
    );
  }
}
