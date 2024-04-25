import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/view/widgets/expenses/all_expenses_header.dart';
import 'package:responsive_dashboard/view/widgets/expenses/all_expenses_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          ExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesListView(),
        ],
      ),
    );
  }
}
