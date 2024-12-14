import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/constants.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logoPath),
          SlidingText(slidingAnimation: slidingAnimation),
        ]);
  }

// Single Responsability Principle

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          GoRouter.of(context).push(HomeView.route);
        }
      },
    );
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: kAnimationDuration);
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
