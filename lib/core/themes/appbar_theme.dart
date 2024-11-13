import 'package:flutter_portfolio/core/exports/app_exports.dart';

AppBarTheme getAppBarTheme(context) => AppBarTheme(
      backgroundColor: AppColor.white,
      foregroundColor: AppColor.white,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 0,
      // shadowColor: Colors.black,
      titleTextStyle: TextStyle(
        fontSize: 18.sp,
        color: AppColor.black,
        fontWeight: FontWeight.w600,
        // fontWeight: FontWeight.w500,
      ),
    );
