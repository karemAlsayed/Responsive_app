

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expensess',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(child: SizedBox(),),
        RangeOptions(),
      ],
    );
  }
}
