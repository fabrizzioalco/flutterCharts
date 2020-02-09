import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';
import 'package:flutter_charts/Models/ScatterChartModel.dart';

import '../scatterChart.dart';


class ScatterChartView extends StatelessWidget{
  final List<LinearSalesScatterChart> data =[
    LinearSalesScatterChart(
      year: 0,
      sales: 5,
      radius: 3.0
    ),
    LinearSalesScatterChart(
      year: 10,
      sales:25,
      radius: 3.0
    ),
    LinearSalesScatterChart(
      year:20,
      sales: 50,
      radius: 3.0
    )
  ];

@override 
Widget build(BuildContext context){
  return ScatterChartSales(data:data);
}
}