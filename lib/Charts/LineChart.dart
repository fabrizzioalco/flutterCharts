import 'package:flutter/material.dart';  
import 'package:charts_flutter/flutter.dart';
import 'package:flutter_charts/Models/LineChart.dart';
import 'package:flutter_charts/Models/subscribers_series.dart';
import 'package:flutter_charts/subscriber_chart.dart';

import 'package:charts_flutter/flutter.dart' as charts;

import '../LinearSales.dart';




class LineChartView extends StatelessWidget{
  final List<LinearSales> data =[
    LinearSales(
      year:0,
      sales: 5
    ),
    LinearSales(
      year: 1,
      sales: 25
    ), 
    LinearSales(
      year: 2,
      sales: 75
    ),
    LinearSales(
      year: 3, 
      sales:100
    )
  ]; 

  @override 
  Widget build(BuildContext context) {
    return LinearSalesChart(data: data);
  }
}