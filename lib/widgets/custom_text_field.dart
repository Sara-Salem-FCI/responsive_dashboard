import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.styleRegular16(context).copyWith(color: const Color(0xffaaaaaa)),
          fillColor: const Color(0xfffafafa),
          filled: true,
          border: inputBorder(),
          enabledBorder: inputBorder(),
          focusedBorder: inputBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder inputBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xfffafafa)),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );
}