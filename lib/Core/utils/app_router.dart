import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_implemntation.dart';
import 'package:bookly_app/Features/Home/presentation/manager/Similar_Books_Cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Search/presentaion/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      GoRoute(
        path: BookDetailsView.route,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(getIt.get<HomeRepoImplemntation>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: SearchView.route,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
