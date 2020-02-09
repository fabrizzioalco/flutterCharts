import 'package:charts_flutter/flutter.dart'as charts;
import 'package:flutter/material.dart';
import 'package:flutter_charts/Models/LineChart.dart';


class LinearSalesChart extends StatelessWidget{
  final List<LinearSales> data;

  LinearSalesChart({@required this.data});

  @override 
  Widget build(BuildContext context){

    List<charts.Series<LinearSales, int>> series =[
      charts.Series(
        id: "Sales",
        data: data,
        domainFn: (LinearSales series, _) => series.sales,
        measureFn: (LinearSales series, _) => series.year
      )
    ];
    return new Scaffold(
        appBar: AppBar(
          title: Text('Sales')
        ),
        body: charts.LineChart(series, animate: true),
    );
  }
}
