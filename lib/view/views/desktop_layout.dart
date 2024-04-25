import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/all_expenses_and_quick_invoices_section.dart';
import 'package:responsive_dashboard/view/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_section.dart';
import 'package:responsive_dashboard/view/widgets/my_card_and_transaction_history.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          SizedBox(width: 32),
          Expanded(
            flex: 2,
            child: AllExpensesAndQuickInvoicesSection(),
          ),
          SizedBox(width: 24),
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 40),
                MyCardsAndTransactionHistory(),
                SizedBox(height: 24),
                Expanded(child: IncomeSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
