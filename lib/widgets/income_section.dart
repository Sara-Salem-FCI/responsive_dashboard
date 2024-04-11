import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

import '../utils/app_styles.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Income',
                style: AppStyles.styleSemiBold20(context),
              ),
              const Spacer(),
              const RangeOptions(),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: IncomeChart(),
              ),
              SizedBox(width: 15,),
              Expanded(
                flex: 3,
                child: IncomeDetails(),
              ),
              SizedBox(width: 15,),
            ],
          ),
        ],
      ),
    );
  }
}
