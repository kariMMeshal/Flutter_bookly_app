import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String categorie}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(categroie: categorie);
    result.fold((failure) {
      emit(SimilarBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccess(similarBooks: books));
    });
  }
}
