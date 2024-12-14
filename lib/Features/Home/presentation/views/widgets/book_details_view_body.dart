import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_cover_card.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
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
          children: [
            const CustomBookDetailsAppBar(),
            SizedBox(
                height: screenHeight * 0.37,
                child: const CustomBookCoverCard()),
          ],
        ),
      ),
    );
  }
}
