import 'package:bookly_app/core/utilities/models/book_models/book_model.dart';
import 'package:bookly_app/features/home/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_search_state.dart';

class BookSearchCubit extends Cubit<BookSearchState> {
  BookSearchCubit(this.searchRepo) : super(BookSearchInitial());

  final SearchRepo searchRepo;

  Future<void> bookSearch({required String subject}) async {
    emit(BookSearchLoading());
    var result = await searchRepo.searchBooks(subject: subject);
    result.fold(
      (failure) => emit(BookSearchFailure(errMessage: failure.errMessage)),
      (books) => emit(BookSearchSuccess(book: books)),
    );
  }
}
