

import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded( flex: 3, child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: DashboardMobileLayout(),
        )),
        SizedBox(width: 32,),
      ],
    );
  }
}
