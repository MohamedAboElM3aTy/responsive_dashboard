import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/quick_invoice/all_expenses_and_quick_invoices_section.dart';
import 'package:responsive_dashboard/view/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_section.dart';
import 'package:responsive_dashboard/view/widgets/transaction_history/my_card_and_transaction_history.dart';

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
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: AllExpensesAndQuickInvoicesSection(),
                        ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
