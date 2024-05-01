import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/charts.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        _getPieChartData(),
      ),
    );
  }

  PieChartData _getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: charts[0].percentage,
          color: charts[0].color,
          showTitle: false,
          radius: activeIndex == 0 ? 50 : 30,
        ),
        PieChartSectionData(
          value: charts[1].percentage,
          color: charts[1].color,
          showTitle: false,
          radius: activeIndex == 1 ? 50 : 30,
        ),
        PieChartSectionData(
          value: charts[2].percentage,
          color: charts[2].color,
          showTitle: false,
          radius: activeIndex == 2 ? 50 : 30,
        ),
        PieChartSectionData(
          value: charts[3].percentage,
          color: charts[3].color,
          showTitle: false,
          radius: activeIndex == 3 ? 50 : 30,
        ),
      ],
    );
  }
}
