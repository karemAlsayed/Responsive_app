import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';

import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';


class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustmBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
