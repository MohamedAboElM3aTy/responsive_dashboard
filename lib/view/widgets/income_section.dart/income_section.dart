import 'package:flutter/material.dart';
import 'package:responsive_dashboard/view/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_chart.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_chart_list_view.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeChartListView(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
