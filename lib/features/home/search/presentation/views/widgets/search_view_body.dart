import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/search/presentation/managers/book_search_cubit/book_search_cubit.dart';
import 'package:bookly_app/features/home/search/presentation/views/widgets/custome_search_text_field.dart';
import 'package:bookly_app/features/home/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    final subject = searchController.text.trim();
    if (subject.isNotEmpty) {
      BlocProvider.of<BookSearchCubit>(context).bookSearch(subject: subject);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeSearchTextField(
            controller: searchController,
            onSearchPressed: _performSearch,
          ),
          const SizedBox(height: 30),
          const Text('Search Results', style: Styles.textStyle18),
          const SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
