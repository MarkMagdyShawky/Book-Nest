import 'package:book_nest/Core/Resources/routeManager.dart';
import 'package:book_nest/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_nest/Features/Home/Presentation/Views/Widgets/custom_image_item.dart';
import 'package:book_nest/Features/Home/presentation/Views/Widgets/BookListWidgets/best_seller_book_info.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../../Core/Resources/imageManager.dart';
import '../../../../../../Core/Resources/pageDimensions.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem(
      {super.key, required this.bookModel, required this.bookIndex});

  final BookModel bookModel;
  final int bookIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(RoutesName.kBookDetails);
      },
      child: SizedBox(
        height: 130,
        width: PageDimensions().pageWidth(context) - 70,
        child: Row(
          children: <Widget>[
            CustomImageItem(
                imageURL: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 25,
            ),
            BestSellerBookDetails(
              bookModel: bookModel,
              bookIndex: bookIndex,
            ),
          ],
        ),
      ),
    );
  }
}
