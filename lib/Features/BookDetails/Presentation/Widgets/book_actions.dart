import 'package:book_nest/Core/Models/book_model/book_model.dart';
import 'package:book_nest/Core/Utils/functions/launche_url.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Resources/colorManager.dart';
import '../../../../Core/Widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});
  final BookModel bookModel;
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
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              text: "Free",
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
              backgroundColor: kButtonColor,
              textColor: kWhiteColor1,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              text: "Preview",
            ),
          ),
        ],
      ),
    );
  }
}
