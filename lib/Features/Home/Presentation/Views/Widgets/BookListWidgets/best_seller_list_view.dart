import 'package:book_nest/Features/Home/Presentation/Views/Widgets/BookListWidgets/custom_loading_list_cards.dart';
import 'package:book_nest/Features/Home/Presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_nest/Features/Home/presentation/Views/Widgets/BookListWidgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../Core/Widgets/custom_error_widget.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BestSellerListItem(
                bookModel: state.books[index],
              ),
            );
          },
        );
      } else if (state is NewestBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return CustomLoadingListCards();
      }
    });
  }
}
