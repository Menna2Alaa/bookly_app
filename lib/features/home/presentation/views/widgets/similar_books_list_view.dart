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
                  'https://www.bing.com/images/search?view=detailV2&ccid=dUrbYWuv&id=2C09E84EDE4EBA73D3697A2F356AF17FD1F103B9&thid=OIP.dUrbYWuvUqtb5xocbSY3XAHaFh&mediaurl=https%3a%2f%2fpluspng.com%2fimg-png%2fnovel-png-over-the-horizon-by-david-thoreson-1000.png&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.754adb616baf52ab5be71a1c6d26375c%3frik%3duQPx0X%252fxajUveg%26pid%3dImgRaw%26r%3d0&exph=745&expw=1000&q=novel+image+png&simid=608020778791078612&FORM=IRPRST&ck=DDFA0DC6CB149BA6AE28424E4DD9656F&selectedIndex=16&itb=1',
            ),
          );
        },
      ),
    );
  }
}
