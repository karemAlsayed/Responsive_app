import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.trasnctionModel});

  final TransactionModel trasnctionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          trasnctionModel.title,
          style: AppStyles.styleSemiBold16.copyWith(
            color: const Color(0xff064060),

          ),
        ),
        subtitle: Text(
          trasnctionModel.date,
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(0xffaaaaaa),
          ),
          
        ),
        trailing: Text(
          trasnctionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: trasnctionModel.isWithdrawal?const Color(0xfff3735e):const Color(0xff7cd87a),
          ),
          
        ),
      ),
    );
  }
}
