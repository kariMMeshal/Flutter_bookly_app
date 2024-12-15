import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_cover_card.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizentalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            SizedBox(
              height: screenHeight * 0.37,
              child: const CustomBookCoverCard(),
            ),
            const SizedBox(height: 50),
            const Text("The Jungle Book", style: Styles.textStyle30),
            const SizedBox(height: 3),
            Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withValues(alpha: .7)),
            ),
            const SizedBox(height: 10),
            const BookRating(mainAxisAlignment: MainAxisAlignment.center),
            const SizedBox(height: 30),
            const BookAction(),
          ],
        ),
      ),
    );
  }
}
