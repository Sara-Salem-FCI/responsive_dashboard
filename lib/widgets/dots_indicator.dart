import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage});
final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        children: List.generate(3, (index) => Padding(
          padding: const EdgeInsets.only(right: 5),
          child: CustomDot(isActive: index == currentPage),
        )),
      ),
    );
  }
}
