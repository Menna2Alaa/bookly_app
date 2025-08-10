part of 'book_search_cubit.dart';

sealed class BookSearchState extends Equatable {
  const BookSearchState();

  @override
  List<Object> get props => [];
}

class BookSearchInitial extends BookSearchState {}

class BookSearchLoading extends BookSearchState {}

class BookSearchSuccess extends BookSearchState {
  final List<BookModel> book;

  const BookSearchSuccess({required this.book});
}

class BookSearchFailure extends BookSearchState {
  final String errMessage;

  const BookSearchFailure({required this.errMessage});
}
