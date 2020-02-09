import 'package:charts_flutter/flutter.dart'as charts;
import 'package:flutter/material.dart';
import 'package:flutter_charts/Models/LineChart.dart';
import 'package:flutter_charts/Models/ScatterChartModel.dart';

class ScatterChartSales extends StatelessWidget{
  final List<LinearSalesScatterChart> data;

  ScatterChartSales({@required this.data});

  @override 
  Widget build(BuildContext context){
    List<charts.Series<LinearSalesScatterChart, int>> series =[
      charts.Series(
        id: 'Subscribre',
        data: data,
        domainFn: (LinearSalesScatterChart series, _) => series.sales,
        measureFn: (LinearSalesScatterChart series, _) => series.year,
        radiusPxFn: (LinearSalesScatterChart series, _) => series.radius
      )
    ];

    return new Scaffold(
      appBar: AppBar(
        title: Text('Scatter Chart'),
      ),
      body: charts.ScatterPlotChart(series, animate: true),
    );
  }
}