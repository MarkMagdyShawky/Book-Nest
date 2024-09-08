import 'package:book_nest/Core/Resources/routeManager.dart';
import 'package:book_nest/Features/Home/Presentation/Widgets/BookListWidgets/best_seller_book_info.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Resources/imageManager.dart';
import '../../../../../Core/Resources/pageDimensions.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

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
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage(ImageManger.Image1),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            BestSellerBookDetails(),
          ],
        ),
      ),
    );
  }
}
