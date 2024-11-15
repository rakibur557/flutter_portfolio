import 'package:flutter_portfolio/core/exports/app_exports.dart';

class ApiUrls {
  static final String _baseUrlForAuth = dotenv.env['BASE_URL_FOR_AUTH']!;
  static String checkRegistration(String number) =>
      "$_baseUrlForAuth/phone/check?phone=$number";
  static String sendOtp = "$_baseUrlForAuth/otp/send";
}
