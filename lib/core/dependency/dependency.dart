import 'package:flutter_portfolio/core/exports/app_exports.dart';

class Dependency extends Bindings {
  @override
  void dependencies() {
    // Get.put(Logger());
    // Get.put(NetworkCaller(logger: Get.find<Logger>()));

    // Get.lazyPut(() => WhoAmIScreenController(), fenix: true);
    // Get.lazyPut(() => NumberEnterScreenController(), fenix: true);
  }
}
