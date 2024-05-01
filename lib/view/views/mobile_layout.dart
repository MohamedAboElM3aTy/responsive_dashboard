import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/all_expenses_and_quick_invoices_section.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_section.dart';
import 'package:responsive_dashboard/view/widgets/my_card_and_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoicesSection(),
          SizedBox(height: 24),
          MyCardsAndTransactionHistory(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
