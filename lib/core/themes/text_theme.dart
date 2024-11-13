import 'package:flutter_portfolio/core/exports/app_exports.dart';

TextTheme getTextTheme(BuildContext context) {
  return TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.primaryText,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      color: AppColor.white,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 14.sp,
      color: AppColor.secondaryText,
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      fontSize: 18.sp,
      color: AppColor.primaryText,
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      fontSize: 23.sp,
      color: AppColor.primaryText,
      fontWeight: FontWeight.w600,
    ),
  );
}
