import 'package:flutter/cupertino.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Container(
        width: isActive ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: isActive ? const Color(0xff4db7f2) : const Color(0xffe7e7e7),
        ),
      ),
    );
  }
}
