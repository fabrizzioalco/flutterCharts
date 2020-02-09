import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SubscriberSeries{
  final String year;
  final int numberOfSubscribers;
  final charts.Color barColor;

  SubscriberSeries({
    @required this.year,
    @required this.numberOfSubscribers,
    @required this.barColor
  });

}