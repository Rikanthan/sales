import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TimeSeriesSales{
  final DateTime time;
  final int sales;
  final charts.Color barColor;

  TimeSeriesSales(
    {
      @required this.time,
      @required this.sales,
      @required this.barColor
    }
  );
}