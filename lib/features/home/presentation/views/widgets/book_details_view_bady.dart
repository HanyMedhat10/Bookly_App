import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBady extends StatelessWidget {
  const BookDetailsViewBady({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          SafeArea(
            child: CustomBookDetailsAppBar(),
          ),
        ],
      ),
    );
  }
}
