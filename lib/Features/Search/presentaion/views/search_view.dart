import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Features/Search/presentaion/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static const String route = '/searchView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kPrimaryColor),
      body: const SafeArea(child: SearchViewBody()),
    );
  }
}
