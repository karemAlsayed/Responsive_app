import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';

class DasBoardView extends StatelessWidget {
  const DasBoardView({super.key});

  get desktopLayout => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashboardDesktopLayout(),),
    );
  }
}
