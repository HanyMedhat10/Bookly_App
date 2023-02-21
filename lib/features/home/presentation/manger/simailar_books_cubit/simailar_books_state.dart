part of 'simailar_books_cubit.dart';

abstract class SimailarBooksState extends Equatable {
  const SimailarBooksState();

  @override
  List<Object> get props => [];
}

class SimailarBooksInitial extends SimailarBooksState {}

class SimailarBooksFailure extends SimailarBooksState {
  final String errMessage;

  const SimailarBooksFailure(this.errMessage);
}

class SimailarBooksSuccess extends SimailarBooksState {
  final List<BookModel> books;

  const SimailarBooksSuccess(this.books);
}

class SimailarBooksLoading extends SimailarBooksState {}
