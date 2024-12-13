

import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20 , top: 60 , bottom: 30),
      child: Row(
        children: [
          Image.asset(AssetsData.logoPath, height: 24),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 26),
          )
        ],
      ),
    );
  }
}