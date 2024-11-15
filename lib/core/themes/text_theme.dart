import 'package:flutter_portfolio/core/exports/app_exports.dart';

TextTheme getTextTheme(BuildContext context) {
  return TextTheme(
    // Display styles for large headers or splash text
    displayLarge: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.white,
    ),
    displayMedium: TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.white,
    ),
    displaySmall: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.white,
    ),

    // Headline styles for primary headings
    headlineLarge: TextStyle(
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.white,
    ),
    headlineMedium: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.white,
    ),
    headlineSmall: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.white,
    ),

    // Title styles for subtitles or secondary headings
    titleLarge: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.white,
    ),
    titleMedium: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.white,
    ),
    titleSmall: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.secondaryText,
    ),

    // Label styles for buttons and interactive text
    labelLarge: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.white,
    ),
    labelMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.white,
    ),
    labelSmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.secondaryText,
    ),

    // Body text for main content sections
    bodyLarge: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.white,
    ),
    bodySmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.secondaryText,
    ),

    // Caption styles for smaller, supporting text
    // caption: TextStyle(
    //   fontSize: 12.sp,
    //   fontWeight: FontWeight.w300,
    //   color: AppColor.secondaryText,
    // ),
    // overline: TextStyle(
    //   fontSize: 10.sp,
    //   fontWeight: FontWeight.w300,
    //   color: AppColor.secondaryText,
    // ),
    //
    // // Button style for general button text
    // button: TextStyle(
    //   fontSize: 14.sp,
    //   fontWeight: FontWeight.w600,
    //   color: AppColor.white,
    // ),
    //
    // // Optional additional variations for specific cases
    // subtitle1: TextStyle(
    //   fontSize: 17.sp,
    //   fontWeight: FontWeight.w500,
    //   color: AppColor.white,
    // ),
    // subtitle2: TextStyle(
    //   fontSize: 15.sp,
    //   fontWeight: FontWeight.w400,
    //   color: AppColor.secondaryText,
    // ),
  );
}
