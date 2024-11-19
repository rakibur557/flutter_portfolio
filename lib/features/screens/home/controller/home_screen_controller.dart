import 'package:flutter_portfolio/core/exports/app_exports.dart';

class HomeScreenController extends GetxController
    with GetTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  bool _enableBackdrop = false;
  bool get enableBackdrop => _enableBackdrop;
  ScrollController get scrollController => _scrollController;

  late TabController tabController;
  // The selected index of the tab
  int selectedIndex = 0;

  @override
  void onInit() {
    _scrollController.addListener(_scrollListener);
    //tab
    // Initialize TabController
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging ||
          tabController.index != selectedIndex) {
        selectedIndex = tabController.index;
        update(); // Notify GetBuilder to rebuild
      }
    });
    super.onInit();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels > 0) {
      if (!_enableBackdrop) {
        _enableBackdrop = true;
        update();
      }
    } else {
      if (_enableBackdrop) {
        _enableBackdrop = false;
        update();
      }
    }
    update();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
