import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/views/tablet_layout.dart';

import '../utils/size_config.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';

class ResponsiveBody extends StatelessWidget {
  const ResponsiveBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return const MobileLayout();
        }
        else if(constraints.maxWidth < SizeConfig.desktop) {
          return const TabletLayout();
        }
        else {
          return const DesktopLayout();
        }
      },
    );
  }
}