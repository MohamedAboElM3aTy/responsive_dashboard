import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/charts.dart';
import 'package:responsive_dashboard/view/widgets/income_section.dart/income_chart_labels.dart';

class IncomeChartListView extends StatelessWidget {
  const IncomeChartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: charts.length,
      itemBuilder: (ctx, index) => IncomeChartLabels(
        chart: charts[index],
      ),
    );
  }
}
