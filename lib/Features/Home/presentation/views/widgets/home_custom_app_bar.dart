import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Features/Search/presentaion/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
        left: kHorizentalPadding,
        right: kHorizentalPadding,
      ),
      child: Row(
        children: [
          Image.asset(AssetsData.logoPath, height: 24),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(SearchView.route);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 26),
          )
        ],
      ),
    );
  }
}
