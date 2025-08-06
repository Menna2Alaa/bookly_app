import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custome_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custome_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custome_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
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
        } else if (state is SimilarBooksFailure) {
          return CustomeErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomeLoadingIndicator();
        }
      },
    );
  }
}
