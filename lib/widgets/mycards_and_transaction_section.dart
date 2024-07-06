

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

import 'package:responsive_dashboard/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/trasnaction_hestory.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: CustmBackGroundContainer(
        child: Column(
          children: [
            MyCardsSection(),
            Divider(
              height: 40,
              color: Color(0xfff1f1f1),
            ),
            TransactionHistory(),
          

          ],
        )
      ),
    );
  }
}