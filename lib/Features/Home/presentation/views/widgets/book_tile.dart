import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookTile extends StatelessWidget {
  const BookTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(BookDetailsView.route);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.asset(
                AssetsData.testImage,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Potter and the Goplit of Fire ",
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "J.K.Rowling",
                    style: Styles.textStyle16,
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    children: [
                      Text(
                        "19.99 \$",
                        style: Styles.textStyle30,
                      ),
                      Spacer(),
                      Rating()
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
