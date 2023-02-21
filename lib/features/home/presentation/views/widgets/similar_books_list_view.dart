import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/simailar_books_cubit/simailar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimailarBooksCubit, SimailarBooksState>(
      builder: (context, state) {
        if (state is SimailarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: CustomBookImage(
                        imageUrl:
                            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic01.nyt.com%2Fimages%2F2022%2F12%2F30%2Fbooks%2F27JANBOOKS%2F27JANBOOKS-mediumSquareAt3X.jpg&imgrefurl=https%3A%2F%2Fwww.nytimes.com%2F2022%2F12%2F29%2Fbooks%2Fjanuary-2023-books.html&tbnid=7s1kuoTaxeXKSM&vet=12ahUKEwjPp53266X9AhUpTaQEHThqBSEQMyg7egQIARBW..i&docid=IY0lvaPgyWpvuM&w=1800&h=1800&q=Book%20image&ved=2ahUKEwjPp53266X9AhUpTaQEHThqBSEQMyg7egQIARBW'),
                  );
                }),
          );
        } else if (state is SimailarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
