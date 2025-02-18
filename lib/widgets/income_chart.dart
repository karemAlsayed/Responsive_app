import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomChart extends StatefulWidget {
  const IncomChart({super.key});

  @override
  State<IncomChart> createState() => _IncomChartState();
}

class _IncomChartState extends State<IncomChart> {


  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pietouchResponse) {
          activeIndex=  pietouchResponse?.touchedSection?.touchedSectionIndex??-1;
          setState(() {
            
          });
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            radius: activeIndex == 0? 45 :40,
            showTitle: false,
            value: 40,
            color: const Color(0xff208bc7),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 25,
            radius: activeIndex == 1? 45 :40,
            color: const Color(0xff4db7f2),
          ),
          PieChartSectionData(
            radius: activeIndex == 2? 45 :40,
            showTitle: false,
            value: 10,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            radius: activeIndex == 3? 45 :40,
            showTitle: false,
            value: 25,
            color: const Color(0xffe2decd),
          ),
        ]);
  }
}
