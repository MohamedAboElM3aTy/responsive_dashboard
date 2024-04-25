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
      children: expensesList.asMap().entries.map(
        (item) {
          final itemIndex = item.key;
          return Expanded(
            child: InkWell(
              onTap: () => setState(() => selectedIndex = itemIndex),
              child: Padding(
                padding: (itemIndex == 1)
                    ? const EdgeInsets.symmetric(horizontal: 12.0)
                    : EdgeInsets.zero,
                child: ExpensesHeaderContainer(
                  isActive: selectedIndex == itemIndex,
                  expenses: item.value,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
