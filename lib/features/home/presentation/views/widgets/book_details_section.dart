import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/data/models/book_models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custome_book_image.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomeBookImage(
            imageUrl:
                book.volumeInfo.imageLinks?.thumbnail ??
                'https://ts3.mm.bing.net/th?id=OIP.vDNRay2iy8gkI1Cn9aaeVAAAAA&pid=15.1',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          textAlign: TextAlign.center,
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0.0,
          count: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        BookButtonAction(book: book),
      ],
    );
  }
}
