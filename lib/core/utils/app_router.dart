import 'package:fluxstore/features/introduction/presentation/view/intro_view.dart';
import 'package:fluxstore/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kIntroView = '/introView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kIntroView, builder: (context, state) => IntroView(),),
    ],
  );
}
