import 'package:book_nest/Features/Search/Presentation/Manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/Resources/colorManager.dart';
import '../../../../../Core/Resources/styles.dart';
import '../../../../../Core/Widgets/custom_box_decoration.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomBoxDecoration().gradientBgBoxDecoration().copyWith(
            borderRadius: BorderRadius.circular(16),
          ),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
            hintText: "Search",
            hintStyle: Styles.textStyle18,
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: () {
                BlocProvider.of<SearchedBooksCubit>(context)
                    .featchSearchedBooks(searchText: searchController.text);
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 23,
              ),
            )),
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
