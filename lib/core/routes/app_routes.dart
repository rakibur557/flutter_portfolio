import 'package:flutter_portfolio/core/exports/app_exports.dart';

class AppRoute {
  ///------Route paths------///
  static const String _splashScreenPath = "/splash_screen";
  static const String _welcomeScreenPath = "/welcome_screen";

  ///------Route name------///
  static const String splashScreen = "splashScreen";
  static const String welcomeScreen = "welcomeScreen";

  static final router = GoRouter(
    initialLocation: _splashScreenPath,
    // navigatorKey: FutureSchoolApp.navigatorKey,
    routes: [
      // GoRoute(
      //   name: splashScreen,
      //   path: _splashScreenPath,
      //   builder: (context, state) => const SplashScreen(),
      // ),
      // GoRoute(
      //   name: welcomeScreen,
      //   path: _welcomeScreenPath,
      //   builder: (context, state) {
      //     return const WelcomeScreen();
      //   },
      // ),
    ],
  );

  static void removePreviousPageAndGo(BuildContext context, String path) {
    while (context.canPop() == true) {
      context.pop();
    }
    context.pushReplacementNamed(path);
  }
}
