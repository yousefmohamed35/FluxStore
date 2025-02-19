import 'package:fluxstore/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
    GoRoute(path: '/',builder: (context, state) => SplashView(),)
  ]);
}
