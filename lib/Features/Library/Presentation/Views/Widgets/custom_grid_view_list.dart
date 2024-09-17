import 'package:book_nest/Core/Resources/constants.dart';
import 'package:book_nest/Core/Resources/list_manager.dart';
import 'package:book_nest/Features/Library/Presentation/Views/Widgets/custom_category_card.dart';
import 'package:flutter/material.dart';

class CustomGridViewList extends StatelessWidget {
  const CustomGridViewList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: categoriesNamesList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: kPadding30 / 2,
          mainAxisSpacing: kPadding30,
          childAspectRatio: 2.9 / 4),
      itemBuilder: (context, index) {
        return CustomCategoryCard(
          categoryImage: categoriesImagesList[index],
          categoryName: categoriesNamesList[index],
        );
      },
    );
  }
}
