import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Customer Name ', hint: 'Type customer name')),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: 'Customer Email', hint: 'Type customer email' )),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Reason For The Transaction', hint: 'Type the reason')),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: 'Amount', hint: 'USD' )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              backgroundcolo: Colors.transparent,
              color: Color(0xff4db7f2),
            )),
            SizedBox(
              height: 24,
            ),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
