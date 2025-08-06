import 'package:bookly_app/core/utilities/app_router.dart';
import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/data/models/book_models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custome_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomeBookImage(
              imageUrl:
                  book.volumeInfo.imageLinks?.thumbnail ??
                  'https://www.bing.com/images/search?view=detailV2&id=00399E3400150470DC79B0A89985706837E8AA27&thid=OIP.ArqTHvk6aGiQe9iMai8NnwHaJs&mediaurl=https%3a%2f%2fwww.intelligent.com%2fwp-content%2fuploads%2f2022%2f08%2fIntroduction-to-Algorithms.png&exph=670&expw=512&q=best+computer+science+books+2023&simid=608023274148686621&ck=2F1FC6FE4DA6EF589F131D0108583BE4&itb=0&FORM=IVCLIG',
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      book.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: 'assets/fonts/GT Sectra Fine Regular.ttf',
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    book.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),

                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: book.volumeInfo.averageRating ?? 0.0,
                        count: book.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
