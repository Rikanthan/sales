import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sales/constants/colors.dart';
import '../../models/chart_model.dart';

class SubscriberChart extends StatelessWidget {
  final List<TimeSeriesSales> data;
  final String header;

  SubscriberChart({@required this.data,@required this.header});

  @override
  Widget build(BuildContext context) {
    List <charts.Series<TimeSeriesSales, DateTime>> series =[
    charts.Series(
        id: 'Sales',
        colorFn: (TimeSeriesSales sales, _) => sales.barColor,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
    
      )
    ]; 
        return Container(
      height: 350,
      width: 284,
      child: Card(
        shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:20,right:28.0,top:27.4,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF969696)
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,right:28.0,bottom: 2.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Rs0",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      fontSize: 46,
                      color: Color(0xFF4b4b4b)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                          Text(
                          "No Change",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Color(0xFFb5b5b5)
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(top:3.0),
                           child: Text(
                            "Previous Day",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFFb5b5b5)
                            ),
                        ),
                         ),
                      ]
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Expanded(
              child: charts.TimeSeriesChart(
                series, animate: true,dateTimeFactory: charts.LocalDateTimeFactory(),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,right:28.0,top:27.4,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "View Report",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: kDropDownColor
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}