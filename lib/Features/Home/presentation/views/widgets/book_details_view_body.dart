import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Features/Home/presentation/views/sections/book_details_section.dart';
import 'package:bookly_app/Features/Home/presentation/views/sections/similar_boooks_section.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizentalPadding),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                SizedBox(height: 50),
                SimilarBooksSection(),
                SizedBox(height: 50),
              ],
            ),
          ),
        )
      ],
    );
  }
}
