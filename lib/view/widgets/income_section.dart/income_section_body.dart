import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_chart.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return width < 1370 && width >= SizeConfig.tabletBreakPoint
        ? const Expanded(
            child: IncomeChart(isInDetails: true),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(isInDetails: false),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
