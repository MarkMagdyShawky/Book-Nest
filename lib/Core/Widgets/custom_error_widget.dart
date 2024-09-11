import 'package:book_nest/Core/Resources/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  const CustomErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        errorMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
