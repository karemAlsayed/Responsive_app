

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustmBackGroundContainer(
        child: SizedBox(
      height: 350,
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(
            height: 20,
          ),
          IncomeSectionBody()
        ],
      ),
    ));
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= SizeConfig.desktop 
        ? const Expanded(child: Padding(
          padding: EdgeInsets.all(16),
          child: DetailedIncomeChart(),
        ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomChart()),
              Expanded(flex: 3, child: IncomeDEtails()),
            ],
          );
    
  }
}
