import 'package:bookly_app/core/utilities/service_locator.dart';
import 'package:bookly_app/features/home/search/data/repos/search_repo_implem.dart';
import 'package:bookly_app/features/home/search/presentation/managers/book_search_cubit/book_search_cubit.dart';
import 'package:bookly_app/features/home/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => BookSearchCubit(getIt.get<SearchRepoImplem>()),
          child: const SearchViewBody(),
        ),
      ),
    );
  }
}
