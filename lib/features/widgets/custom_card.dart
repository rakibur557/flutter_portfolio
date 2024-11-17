import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color backgroundColor;

  const CustomCard({
    super.key,
    required this.child,
    this.borderRadius = 12.0,
    this.backgroundColor = const Color(0xFF1f2125), // Dark card background
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          // Subtle white glow around the card
          BoxShadow(
            color: Colors.white.withOpacity(0.06),
            offset: const Offset(-10, -10),
            blurRadius: 30,
            spreadRadius: 2,
          ),
          // Larger, diffused shadow for depth
          // BoxShadow(
          //   color: Colors.white.withOpacity(1.0),
          //   offset: const Offset(0, 20),
          //   blurRadius: 40,
          //   spreadRadius: -5,
          // ),
          // // Smaller, focused shadow close to the card
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(5, 5),
            blurRadius: 40,
            spreadRadius: -2,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0XFF17191c),
            Color(0XFF2e3238),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Adjust padding as needed
        child: child,
      ),
    );
  }
}
