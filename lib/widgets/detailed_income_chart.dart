

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {


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
            titlePositionPercentageOffset: activeIndex == 0?1.5:null,
            titleStyle: AppStyles.styleMedium16.copyWith(color:activeIndex == 0?null: Colors.white),
            radius: activeIndex == 0? 45 :40,
            showTitle: true,
            title: activeIndex ==0 ? 'Design Service': '40%',
            value: 40,
            color: const Color(0xff208bc7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1?1.5:null,
            showTitle: true,
            title: activeIndex ==1 ? 'Design product': '25%',
            titleStyle: AppStyles.styleMedium16.copyWith(color:activeIndex == 1?null: Colors.white),

            value: 25,
            radius: activeIndex == 1? 45 :40,
            color: const Color(0xff4db7f2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset:  activeIndex == 2?1.5:null,
            titleStyle: AppStyles.styleMedium16.copyWith(color:activeIndex == 2?null: Colors.white),
            radius: activeIndex == 2? 45 :40,
            showTitle: true,
            title: activeIndex ==2 ? 'Product royality': '10%',
            value: 10,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset:  activeIndex == 3?1.5:null,
            titleStyle: AppStyles.styleMedium16.copyWith(color:activeIndex == 3?null: Colors.white),
            radius: activeIndex == 3? 45 :40,
            showTitle: true,
            title: activeIndex ==3 ? 'Other': '25%',
            value: 25,
            color: const Color(0xffe2decd),
          ),
        ]);
  }
}
