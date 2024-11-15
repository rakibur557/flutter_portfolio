import 'package:flutter_portfolio/core/exports/app_exports.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PortfolioApp());
}
