import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/view/widgets/transaction_history/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionHistoryModel> transactions = [
    TransactionHistoryModel(
      amount: '20,129',
      date: '13 Apr 2022',
      title: 'Cash Withdrawal',
      isPaid: true,
    ),
    TransactionHistoryModel(
      amount: '2,000',
      date: '13 Apr, 2022',
      title: 'Landing Page Project',
      isPaid: false,
    ),
    TransactionHistoryModel(
      amount: '20,129',
      date: '13 Apr, 2022',
      title: 'Juni Mobile App Project',
      isPaid: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactions.length,
      itemBuilder: (ctx, index) => TransactionHistoryItem(
        transaction: transactions[index],
      ),
    );
  }
}
