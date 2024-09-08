import 'package:flutter/material.dart';
import '../../../../Core/Resources/colorManager.dart';
import '../../../../Core/Resources/pageDimensions.dart';
import '../../../../Core/Resources/styles.dart';
import '../../../Home/Presentation/Widgets/BookListWidgets/rationgWidgets.dart';
import '../../../Home/Presentation/Widgets/custom_image_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
