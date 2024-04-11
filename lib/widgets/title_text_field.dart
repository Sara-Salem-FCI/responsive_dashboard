import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 5),
          CustomTextField(hintText: hint,),
        ],
      ),
    );
  }
}
