import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/trasaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});

  static const items = [
    TransactionModel(
      isWithdrawal: true,
      title: 'Cash Withdrawal',
      date: '13 April, 2022',
      amount: r'$20,129',
    ),
    TransactionModel(
      isWithdrawal: false,
      title: 'Landing Page Project',
      date: '13 April, 2022',
      amount: r'$3,000',
    ),
    TransactionModel(
      isWithdrawal: true,
      title: 'Life Expensess',
      date: '13 April, 2022',
      amount: r'$780',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(trasnctionModel: items[index]);
      },
    );
  }
}
