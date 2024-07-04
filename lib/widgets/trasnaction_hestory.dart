

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20,),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xffaaaaaa)
          ),
        ),
        const SizedBox(height: 16,),
        const TransactionListView(),

      ],
    )
    ;
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         const Text(
      'Transactions',
      style: AppStyles.styleSemiBold20,
    ),
     Text(
      'See all',
      style: AppStyles.styleMedium16.copyWith(
        color: const Color(0xff4eb7f2),
      
      ),
    ),
      ],
    );
  }
}