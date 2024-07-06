

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/mycards_and_transaction_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(height: 24,),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24,),
    
          IncomeSection(),
    
          
        ],
      ),
    );
  }
}