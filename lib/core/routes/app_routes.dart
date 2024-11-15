import 'package:flutter_portfolio/core/exports/app_exports.dart';

class AppRoute {
  ///------Route paths------///
  static const String _splashScreenPath = "/splash_screen";
  static const String _homeScreenPath = "/home";

  ///------Route name------///
  static const String splashScreen = "splashScreen";
  static const String homeScreen = "homeScreen";

  static final router = GoRouter(
    initialLocation: _homeScreenPath,
    navigatorKey: PortfolioApp.navigatorKey,
    routes: [
      GoRoute(
        name: homeScreen,
        path: _homeScreenPath,
        builder: (context, state) => HomeScreen(),
      ),
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
