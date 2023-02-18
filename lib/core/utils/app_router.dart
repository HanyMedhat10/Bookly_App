import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentation/view_models/views/splash_view.dart';

class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}