import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_container_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/view/widgets/expenses/expenses_header_container.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final List<ExpensesHeaderContainerModel> expensesList = const [
    ExpensesHeaderContainerModel(
      imageName: AppImages.imagesBalance,
      accountType: 'Balance',
    ),
    ExpensesHeaderContainerModel(
      imageName: AppImages.imagesIncome,
      accountType: 'Income',
    ),
    ExpensesHeaderContainerModel(
      imageName: AppImages.imagesExpenses,
      accountType: 'Expenses',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => setState(() => selectedIndex = 0),
            child: ExpensesHeaderContainer(
              isActive: selectedIndex == 0,
              expenses: expensesList[0],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: InkWell(
            onTap: () => setState(() => selectedIndex = 1),
            child: ExpensesHeaderContainer(
              isActive: selectedIndex == 1,
              expenses: expensesList[1],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: InkWell(
            onTap: () => setState(() => selectedIndex = 2),
            child: ExpensesHeaderContainer(
              isActive: selectedIndex == 2,
              expenses: expensesList[2],
            ),
          ),
        ),
      ],
    );
  }
}
