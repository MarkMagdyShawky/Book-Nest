import 'package:book_nest/Core/Widgets/custom_error_widget.dart';
import 'package:book_nest/Core/Widgets/custom_looding_widget.dart';
import 'package:book_nest/Features/Home/Presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_nest/Features/Home/presentation/Views/Widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Resources/pageDimensions.dart';

class FreaturedBooksListView extends StatelessWidget {
  const FreaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: PageDimensions().pageHeight(context) * 0.26,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: CustomImageItem(),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}