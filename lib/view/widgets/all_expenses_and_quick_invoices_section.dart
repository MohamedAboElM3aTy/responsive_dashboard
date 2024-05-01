import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/expenses/all_expenses.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/quick_invoice.dart';

class AllExpensesAndQuickInvoicesSection extends StatelessWidget {
  const AllExpensesAndQuickInvoicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
        ],
      ),
    );
  }
}
