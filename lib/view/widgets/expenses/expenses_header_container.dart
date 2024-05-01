import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/all_expenses_container_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ExpensesHeaderContainer extends StatelessWidget {
  const ExpensesHeaderContainer({
    super.key,
    required this.expenses,
    required this.isActive,
  });

  final ExpensesHeaderContainerModel expenses;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xFF4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xF1F1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  color: isActive ? Colors.white12 : const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: SvgPicture.asset(
                  expenses.imageName,
                  colorFilter: ColorFilter.mode(
                    isActive ? Colors.white : const Color(0xFF4EB7F2),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward),
            ],
          ),
          const SizedBox(height: 34),
          Text(
            expenses.accountType,
            style: isActive
                ? AppStyles.styleMedium16(context).copyWith(color: Colors.white)
                : AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 8),
          Text(
            expenses.date ?? 'April 2022',
            style: isActive
                ? AppStyles.styleRegular14(context).copyWith(
                    color: const Color(0xFFFAFAFA),
                  )
                : AppStyles.styleRegular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            '\$${expenses.moneyAmount}',
            style: isActive
                ? AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white)
                : AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
