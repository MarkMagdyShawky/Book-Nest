import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/imageManager.dart';
import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Features/BookDetails/Widgets/custom_book_details_appBar.dart';
import 'package:book_nest/Features/Home/Widgets/BookListWidgets/rationgWidgets.dart';
import 'package:book_nest/Features/Home/Widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: PageDimensions().pageWidth(context) * 0.20),
            child: CustomImageItem(),
          ),
          SizedBox(height: 25),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              color: kFonstColor.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          RationgWidgets(),
        ],
      ),
    );
  }
}
