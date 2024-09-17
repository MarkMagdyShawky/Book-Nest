import 'package:book_nest/Core/Widgets/custom_error_widget.dart';
import 'package:book_nest/Features/Home/Presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_nest/Features/Home/presentation/Views/Widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Resources/pageDimensions.dart';
import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/Widgets/custom_loading_list.dart';

class FreaturedBooksListView extends StatelessWidget {
  const FreaturedBooksListView({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: PageDimensions().pageHeight(context) * 0.26,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(RoutesName.kBookDetails, extra: state.books[index]);
                    },
                    child: CustomImageItem(
                      imageURL: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingList(height: 0.26);
        }
      },
    );
  }
}
