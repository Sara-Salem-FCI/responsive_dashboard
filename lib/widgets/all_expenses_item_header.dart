import 'package:flutter/material.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.icon, this.iconBackgroundColor, this.iconColor});
final IconData icon;
final Color? iconBackgroundColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: iconBackgroundColor ?? const Color(0xfffafafa),
                ),
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: iconColor ?? const Color(0xff4eb7f2),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Flexible(
          child: Icon(
            Icons.arrow_forward_ios,
            color: iconColor==null ? const Color(0xff064061): Colors.white,
          ),
        ),
      ],
    );
  }
}
