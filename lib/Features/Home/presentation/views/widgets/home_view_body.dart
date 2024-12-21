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
            spacing: 30,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeCustomAppBar(),
              CoverCardsListView(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: kHorizentalPadding),
                  child: Text("Newest Books", style: Styles.textStyle22)),
              SizedBox(),
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
