import 'package:book_nest/Core/Resources/colorManager.dart';
import 'package:book_nest/Core/Resources/constants.dart';
import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Core/Utils/app_router.dart';
import 'package:book_nest/Features/Home/Presentation/Views/Screens/homePage.dart';
import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({
    super.key,
    required this.categoryImage,
    required this.categoryName,
  });
  final String categoryImage;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kBorderRadius16),
          image: DecorationImage(
            image: AssetImage(categoryImage),
            fit: BoxFit.cover,
          ),
        ),
        height: PageDimensions().pageHeight(context) * 8,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 3),
              decoration: BoxDecoration(
                color: kWhiteColor1,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kBorderRadius16),
                  bottomRight: Radius.circular(kBorderRadius16),
                ),
              ),
              child: Text(
                categoryName,
                style: Styles.textStyle16.copyWith(color: kBlackColor3, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
