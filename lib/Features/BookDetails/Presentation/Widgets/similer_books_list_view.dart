import 'package:book_nest/Core/Resources/pageDimensions.dart';
import 'package:book_nest/Core/Utils/app_router.dart';
import 'package:book_nest/Core/Widgets/custom_error_widget.dart';
import 'package:book_nest/Core/Widgets/custom_loading_list.dart';
import 'package:book_nest/Features/BookDetails/Presentation/manager/similer_boos_cubit/similer_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../Home/Presentation/Views/Widgets/custom_image_item.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (BuildContext context, state) {
        if (state is SimilerBooksSuccess) {
          return SizedBox(
            height: PageDimensions().pageHeight(context) * .166,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(RoutesName.kBookDetails, extra: state.books[index]);
                      },
                      child: CustomImageItem(
                        imageURL: state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",
                      ),
                    ),
                  );
                }),
          );
        } else if (state is SimilerBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingList(height: .166);
        }
      },
    );
  }
}
