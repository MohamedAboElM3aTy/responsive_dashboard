import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transaction,
  });

  final TransactionHistoryModel transaction;

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
          transaction.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transaction.date,
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(0xffaaaaaa),
          ),
        ),
        trailing: Text(
          '\$${transaction.amount}',
          style: AppStyles.styleSemiBold20.copyWith(
            color: transaction.isPaid
                ? const Color(0xff7cd87a)
                : const Color(0xfff3735e),
          ),
        ),
      ),
    );
  }
}
