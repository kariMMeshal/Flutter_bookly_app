import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.amber,
        ),
        const SizedBox(width: 5),
        const Text("4.8", style: Styles.textStyle16),
        const SizedBox(width: 3),
        Text(
          "(254)",
          style: Styles.textStyle14
              .copyWith(color: Colors.white.withValues(alpha: .6)),
        ),
      ],
    );
  }
}
