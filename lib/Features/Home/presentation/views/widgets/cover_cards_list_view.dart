import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_card.dart';
import 'package:flutter/material.dart';

class CoverCardsListView extends StatelessWidget {
  const CoverCardsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const CustomBookCard(),
      ),
    );
  }
}
