import 'package:book_nest/Core/Widgets/custom_error_widget.dart';
import 'package:book_nest/Features/Home/Presentation/Views/Widgets/BookListWidgets/custom_loading_list_cards.dart';
import 'package:book_nest/Features/Search/Presentation/Manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Home/presentation/Views/Widgets/BookListWidgets/best_seller_list_item.dart';

class CustomSearchResult extends StatelessWidget {
  const CustomSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
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
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errorMessage: state.errMessag);
        } else {
          return CustomLoadingListCards();
        }
      },
    );
  }
}
