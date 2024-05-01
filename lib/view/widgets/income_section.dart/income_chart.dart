import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/charts.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({
    super.key,
    required this.isInDetails,
  });

  final bool isInDetails;

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
          title: widget.isInDetails
              ? '${charts[0].percentage} %'.toString()
              : null,
          showTitle: widget.isInDetails ? true : false,
          radius: activeIndex == 0 ? 40 : 30,
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        PieChartSectionData(
          value: charts[1].percentage,
          color: charts[1].color,
          title: widget.isInDetails
              ? '${charts[1].percentage} %'.toString()
              : null,
          showTitle: widget.isInDetails ? true : false,
          radius: activeIndex == 1 ? 40 : 30,
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        PieChartSectionData(
          value: charts[2].percentage,
          color: charts[2].color,
          title: widget.isInDetails
              ? '${charts[2].percentage} %'.toString()
              : null,
          showTitle: widget.isInDetails ? true : false,
          radius: activeIndex == 2 ? 40 : 30,
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        PieChartSectionData(
          value: charts[3].percentage,
          color: charts[3].color,
          title: widget.isInDetails
              ? '${charts[3].percentage} %'.toString()
              : null,
          showTitle: widget.isInDetails ? true : false,
          radius: activeIndex == 3 ? 40 : 30,
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
