import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor});
final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: backgroundColor?? const Color(0xff4db7f2),
          ),
          onPressed: () {},
          child: Text(
            'Send Money',
            style: backgroundColor == null ? AppStyles.styleSemiBold18(context)
                : AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xff4db7f2),
            ),
          ),
        ),
      ),
    );
  }
}
