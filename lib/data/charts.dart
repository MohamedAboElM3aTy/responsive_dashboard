import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_chart_model.dart';

const List<IncomeChartModel> charts = [
  IncomeChartModel(
    title: 'Design Services',
    percentage: 40,
    color: Color(0xff208CC8),
  ),
  IncomeChartModel(
    title: 'Design Product',
    percentage: 25,
    color: Color(0xff4EB7F2),
  ),
  IncomeChartModel(
    title: 'Product royalti',
    percentage: 20,
    color: Color(0xff064061),
  ),
  IncomeChartModel(
    title: 'Other',
    percentage: 22,
    color: Color(0xffE2DECD),
  ),
];
