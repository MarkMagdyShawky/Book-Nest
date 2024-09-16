import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Features/Home/Presentation/Views/Widgets/custom_image_item.dart';
import 'package:book_nest/Features/Home/presentation/Views/Widgets/BookListWidgets/best_seller_book_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../Core/Resources/pageDimensions.dart';
import '../../../../../../Core/Utils/app_router.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RoutesName.kBookDetails, extra: bookModel);
      },
      child: SizedBox(
        height: 130,
        width: PageDimensions().pageWidth(context) - 70,
        child: Row(
          children: <Widget>[
            CustomImageItem(
              imageURL: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(
              width: 25,
            ),
            BestSellerBookDetails(
              bookModel: bookModel,
            ),
          ],
        ),
      ),
    );
  }
}
