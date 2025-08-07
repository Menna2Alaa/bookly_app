import 'package:bookly_app/core/utilities/function/launch_url.dart';
import 'package:bookly_app/core/widgets/custome_button.dart';
import 'package:bookly_app/features/home/data/models/book_models/book_model.dart';
import 'package:flutter/material.dart';

class BookButtonAction extends StatelessWidget {
  const BookButtonAction({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomeButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              text: 'Free',
              textColor: Colors.black,
              boarderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),

          Expanded(
            child: CustomeButton(
              onPressed: () {
                launchCutomeUrl(context, book.volumeInfo.previewLink);
              },
              backgroundColor: const Color(0xffEF8262),
              text: getText(book),
              textColor: Colors.white,
              boarderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
