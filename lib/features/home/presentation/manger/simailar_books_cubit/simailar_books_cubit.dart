// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'simailar_books_state.dart';

class SimailarBooksCubit extends Cubit<SimailarBooksState> {
  SimailarBooksCubit(
    this.homeRepo,
  ) : super(SimailarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimailarBooks({required String category}) async {
    emit(SimailarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(categary: category);
    result.fold((failure) {
      emit(SimailarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimailarBooksSuccess(books));
    });
  }
}
