import 'package:bookly_app/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String route = "/homeView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
