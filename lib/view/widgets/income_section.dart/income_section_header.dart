import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xfff1f1f1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              SizedBox(width: 16),
              Icon(
                Icons.arrow_downward,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
