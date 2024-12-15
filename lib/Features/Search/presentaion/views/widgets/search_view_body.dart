import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Search/presentaion/views/widgets/custom_text_field.dart';
import 'package:bookly_app/Features/Search/presentaion/views/widgets/serach_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        CustomTextField(),
        Text("Search Results", style: Styles.textStyle20),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
