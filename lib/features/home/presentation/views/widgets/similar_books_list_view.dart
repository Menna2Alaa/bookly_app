import 'package:bookly_app/features/home/presentation/views/widgets/custome_book_image.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomeBookImage(
              imageUrl:
                  'https://ts3.mm.bing.net/th?id=OIP.vDNRay2iy8gkI1Cn9aaeVAAAAA&pid=15.1',
            ),
          );
        },
      ),
    );
  }
}
