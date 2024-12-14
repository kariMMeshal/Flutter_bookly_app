import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: SplashView.route, // [ '/' : means the initial route ]
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: HomeView.route,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
