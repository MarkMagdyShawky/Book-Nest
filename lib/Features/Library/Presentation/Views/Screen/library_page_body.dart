import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:book_nest/Core/Resources/styles.dart';
import 'package:book_nest/Core/Widgets/custom_box_decoration.dart';
import 'package:book_nest/Features/Library/Presentation/Views/Widgets/custom_grid_view_list.dart';
import 'package:flutter/material.dart';

class LibraryPageBody extends StatelessWidget {
  const LibraryPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: PageDimensions().pageHeight(context),
      width: PageDimensions().pageWidth(context),
      decoration: CustomBoxDecoration().gradientBgBoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            const Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20),
              child: Text("Library", style: Styles.textStyle30),
            ),
            SizedBox(
              child: CustomGridViewList(),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
