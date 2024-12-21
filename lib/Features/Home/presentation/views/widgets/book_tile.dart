import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_cover_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookTile extends StatelessWidget {
  const BookTile({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(BookDetailsView.route);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 200,
        child: Row(
          children: [
            CustomBookCoverCard(
              imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      bookModel.volumeInfo!.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle14.copyWith(
                      color: Colors.white.withValues(alpha: .7),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle22,
                      ),
                      Spacer(),
                      BookRating(
                        rating: 0,
                        ratingCount: 0,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
