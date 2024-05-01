import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: ShapeDecoration(
            color: chart.color,
            shape: const OvalBorder(),
          ),
        ),
        const SizedBox(width: 10),
        FittedBox(
          child: Text(
            chart.title,
            style: AppStyles.styleRegular16(context),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '${chart.percentage.toString()}%',
          style: AppStyles.styleMedium16(context),
        ),
      ],
    );
  }
}
