import 'package:flutter_portfolio/core/exports/app_exports.dart';

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<PortfolioApp> createState() => _MyAppState();
}

class _MyAppState extends State<PortfolioApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Status bar color change
      statusBarIconBrightness: Brightness.dark, // Status bar icon color change
    ));
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) {
        return GetMaterialApp.router(
          routerDelegate: AppRoute.router.routerDelegate,
          routeInformationParser: AppRoute.router.routeInformationParser,
          routeInformationProvider: AppRoute.router.routeInformationProvider,
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 500),
          initialBinding: Dependency(),
          // locale: const Locale('bn'),
          // supportedLocales: Language.all,
          // localizationsDelegates: const [
          //   AppLocalizations.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          theme: ThemeData(
            // appBarTheme: getAppBarTheme(context),
            fontFamily: 'Poppins',
            // colorSchemeSeed: AppColor.primary,
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColor.primary,
              primary: AppColor.primary,
              surface: AppColor.white,
            ),
            scaffoldBackgroundColor: AppColor.primary,
            textTheme: getTextTheme(context),
          ),
        );
      },
    );
  }
}
