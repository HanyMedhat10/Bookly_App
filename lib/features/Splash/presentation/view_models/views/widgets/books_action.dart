import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../home/data/models/book_model/book_model.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri _url = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                }
              },
              text: 'Free preview',
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
