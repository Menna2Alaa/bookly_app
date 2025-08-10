import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utilities/api_service.dart';
import 'package:bookly_app/core/utilities/models/book_models/book_model.dart';
import 'package:bookly_app/features/home/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplem implements SearchRepo {
  final ApiService apiService;

  SearchRepoImplem(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> searchBooks({
    required String subject,
  }) async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:$subject&filtering=free-ebooks&sorting=relevance',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
