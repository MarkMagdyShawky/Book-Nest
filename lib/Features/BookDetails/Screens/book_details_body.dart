import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Features/BookDetails/Widgets/custom_book_details_appBar.dart';
import 'package:book_nest/Features/Home/Widgets/BookListWidgets/rationgWidgets.dart';
import 'package:book_nest/Features/Home/Widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widgets/book_actions.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: <Widget>[
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: PageDimensions().pageWidth(context) * 0.21),
            child: CustomImageItem(),
          ),
          SizedBox(height: 30),
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
              color: kWhiteColor1.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          RationgWidgets(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(height: 30),
          // Book Actions (btns)
          BookActions(),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10),

          SimilerBooksListView(),
        ],
      ),
    );
  }
}

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PageDimensions().pageHeight(context) * .166,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10),
            child: CustomImageItem(),
          );
        },
      ),
    );
  }
}
