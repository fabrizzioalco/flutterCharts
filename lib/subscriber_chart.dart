
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'Models/subscribers_series.dart';


class SubscribersChart extends StatelessWidget{
  final List<SubscriberSeries> data;

  SubscribersChart({ @required this.data});




  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
        id: "=Subscribers",
        data: data,
        domainFn: (SubscriberSeries series,  _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.numberOfSubscribers,
        colorFn: (SubscriberSeries series, _) => series.barColor)
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Bar Chart"),
      ),
      backgroundColor: Colors.white,
      body: charts.BarChart(series, animate: true),
    );
  }

}