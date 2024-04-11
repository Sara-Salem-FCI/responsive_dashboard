import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/responsive_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xfffafafa),
              elevation: 0,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                ),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xfff7f9fa),
      body: const ResponsiveBody(),
    );
  }
}
