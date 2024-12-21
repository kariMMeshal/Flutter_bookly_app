import 'package:bookly_app/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/Features/Home/presentation/manager/Similar_Books_Cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_cover_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.similarBooks.length,
              itemBuilder: (context, index) => const CustomBookCoverCard(),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
