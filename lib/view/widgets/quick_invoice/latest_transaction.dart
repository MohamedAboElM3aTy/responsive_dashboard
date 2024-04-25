import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/latest_transaction_list_view.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transactions',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 16),
        LatestTransactionListView(),
      ],
    );
  }
}
