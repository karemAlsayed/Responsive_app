import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_widget.dart';
import 'package:responsive_dashboard/widgets/mycards_and_transaction_section.dart';


class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
         Expanded(
          flex: 2,
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        SizedBox(width: 24,),
        
        Expanded(child: MyCardAndTransactionHistorySection())
      ],
    );
  }
}
