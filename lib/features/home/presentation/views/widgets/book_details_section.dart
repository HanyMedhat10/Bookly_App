// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../Splash/presentation/view_models/views/widgets/book_rating.dart';
import '../../../../Splash/presentation/view_models/views/widgets/books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
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
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: book.volumeInfo.ratingsCount ?? 0,
          rating: book.volumeInfo.averageRating ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
          bookModel:book ,
        ),
      ],
    );
  }
}
