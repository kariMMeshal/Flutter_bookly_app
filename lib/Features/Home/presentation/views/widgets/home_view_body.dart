import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_tiles_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/cover_cards_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeCustomAppBar(),
              CoverCardsListView(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kHorizentalPadding),
                child: Text("Best Seller", style: Styles.textStyle20),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizentalPadding),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
