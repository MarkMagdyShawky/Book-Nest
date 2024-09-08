import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:flutter/material.dart';
import '../../../Home/Presentation/Widgets/custom_image_item.dart';

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
