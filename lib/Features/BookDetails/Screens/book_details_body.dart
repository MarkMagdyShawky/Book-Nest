import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Features/BookDetails/Widgets/custom_book_details_appBar.dart';
import 'package:book_nest/Features/BookDetails/Widgets/similer_boos_list_view.dart';
import 'package:book_nest/Features/Home/Widgets/BookListWidgets/rationgWidgets.dart';
import 'package:book_nest/Features/Home/Widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widgets/book_actions.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: <Widget>[
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: PageDimensions().pageWidth(context) * 0.21),
                  child: CustomImageItem(),
                ),
                const SizedBox(height: 30),
                Text(
                  "The Jungle Book",
                  style: Styles.textStyle30,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  "Rudyard Kipling",
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    color: kWhiteColor1.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                RationgWidgets(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 30),
                // Book Actions (btns)
                BookActions(),
                const Expanded(
                  child: SizedBox(height: 50),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(bottom: 22.0),
                  child: SimilerBooksListView(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// test