import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/charts.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_chart_labels.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: charts
          .map(
            (chart) => IncomeChartLabels(chart: chart),
          )
          .toList(),
    );
  }
}
