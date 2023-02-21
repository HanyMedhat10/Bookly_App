import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../Splash/presentation/view_models/views/widgets/book_rating.dart';
import '../../../../Splash/presentation/view_models/views/widgets/books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
              imageUrl:
                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic01.nyt.com%2Fimages%2F2022%2F12%2F30%2Fbooks%2F27JANBOOKS%2F27JANBOOKS-mediumSquareAt3X.jpg&imgrefurl=https%3A%2F%2Fwww.nytimes.com%2F2022%2F12%2F29%2Fbooks%2Fjanuary-2023-books.html&tbnid=7s1kuoTaxeXKSM&vet=12ahUKEwjPp53266X9AhUpTaQEHThqBSEQMyg7egQIARBW..i&docid=IY0lvaPgyWpvuM&w=1800&h=1800&q=Book%20image&ved=2ahUKEwjPp53266X9AhUpTaQEHThqBSEQMyg7egQIARBW'),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              // color: const Color(0xff707070),
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: 245,
          rating: 4,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
