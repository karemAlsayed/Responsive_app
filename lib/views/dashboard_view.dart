import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

class DasBoardView extends StatefulWidget {
  const DasBoardView({super.key});

  @override
  State<DasBoardView> createState() => _DasBoardViewState();
}

class _DasBoardViewState extends State<DasBoardView> {
  get desktopLayout => null;
  final GlobalKey<ScaffoldState> scafoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldkey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scafoldkey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xFF4EB7F2),
                ),
              ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width <SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
