import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/view/widgets/transaction_history/transaction_history_header.dart';
import 'package:responsive_dashboard/view/widgets/transaction_history/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 16),
        Text(
          '13 April 2022',
          style: AppStyles.styleSemiBold16.copyWith(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryListView(),
      ],
    );
  }
}
