import 'package:flutter/material.dart';  
import 'package:charts_flutter/flutter.dart';
import 'package:flutter_charts/Models/subscribers_series.dart';
import 'package:flutter_charts/subscriber_chart.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class BarChartView extends StatelessWidget {

 final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: "2008",
      numberOfSubscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2009",
      numberOfSubscribers: 11000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2010",
      numberOfSubscribers: 12000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2011",
      numberOfSubscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2012",
      numberOfSubscribers: 8500000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2013",
      numberOfSubscribers: 7700000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2014",
      numberOfSubscribers: 7600000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2015",
      numberOfSubscribers: 5500000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];
 
  @override
  Widget build(BuildContext context) {
    


    return SubscribersChart(data: data);
  }
}