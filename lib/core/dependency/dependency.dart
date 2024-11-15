import 'package:flutter_portfolio/core/exports/app_exports.dart';
import 'package:flutter_portfolio/features/screens/home/controller/home_screen_controller.dart';

class Dependency extends Bindings {
  @override
  void dependencies() {
    // Get.put(Logger());
    // Get.put(NetworkCaller(logger: Get.find<Logger>()));

    Get.lazyPut(() => HomeScreenController(), fenix: true);
    // Get.lazyPut(() => NumberEnterScreenController(), fenix: true);
  }
}
