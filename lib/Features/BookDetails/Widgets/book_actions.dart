import 'package:flutter/material.dart';

import '../../../Core/Resources/colorManager.dart';
import '../../../Core/Widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: CustomButton(
              backgroundColor: kWhiteColor1,
              textColor: kBlackColor3,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              text: "19.99€",
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: kButtonColor,
              textColor: kWhiteColor1,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              text: "Free preview",
            ),
          ),
        ],
      ),
    );
  }
}
