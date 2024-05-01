import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_chart_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeChartLabels extends StatelessWidget {
  const IncomeChartLabels({
    super.key,
    required this.chart,
  });

  final IncomeChartModel chart;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: chart.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        chart.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        '${chart.percentage.toString()}%',
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
