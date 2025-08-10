import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custome_error_widget.dart';
import 'package:bookly_app/features/home/search/presentation/managers/book_search_cubit/book_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookSearchCubit, BookSearchState>(
      builder: (context, state) {
        if (state is BookSearchSuccess) {
          if (state.book.isEmpty) {
            return const Center(
              child: Text(
                'No books found for this subject',
                style: TextStyle(fontSize: 16),
              ),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.book.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(book: state.book[index]),
              );
            },
          );
        } else if (state is BookSearchFailure) {
          return CustomeErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
