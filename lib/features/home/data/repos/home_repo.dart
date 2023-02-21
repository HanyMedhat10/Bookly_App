import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // <error, data>
  Future<Either<ServerFailure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<ServerFailure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<ServerFailure, List<BookModel>>> fetchSimilarBooks(
      {required String categary});
}
