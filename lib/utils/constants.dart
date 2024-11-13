import 'package:flutter_portfolio/core/exports/app_exports.dart';

class Constants {
  static final double screenHeight =
      MediaQuery.of(PortfolioApp.navigatorKey.currentContext!).size.height;
  static final double screenWeight =
      MediaQuery.of(PortfolioApp.navigatorKey.currentContext!).size.width;

  static EdgeInsets bodyPadding =
      EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h);
}
