import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> tabs;
  final TabController tabController;

  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.tabController,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      indicator: BoxDecoration(
        color: const Color(0xFF212429), // Active tab background
        borderRadius: BorderRadius.circular(8),
      ),
      labelColor: Colors.pink, // Active tab text color
      unselectedLabelColor: Colors.white70, // Inactive tab text color
      tabs: widget.tabs
          .map(
            (tab) => Tab(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  tab,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
