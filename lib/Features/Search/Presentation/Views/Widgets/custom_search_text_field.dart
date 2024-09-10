import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/Resources/colorManager.dart';
import '../../../../../Core/Resources/styles.dart';
import '../../../../../Core/Widgets/custom_box_decoration.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          CustomBoxDecoration().gradientBgBoxDecoration().copyWith(borderRadius: BorderRadius.circular(16)),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: Styles.textStyle18,
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          suffixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: kSecondColor,
      ),
    );
  }
}
