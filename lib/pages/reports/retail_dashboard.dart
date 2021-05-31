import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/barchart/simple_bar_chart.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/date_button.dart';
import 'package:sales/widgets/buttons/date_range_button.dart';
import 'package:sales/widgets/drawer/customer_drawer.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sales/widgets/tables/retail_dashboard_table.dart';
import '../../models/chart_model.dart';

class RetailDashboard extends StatefulWidget {
 
  @override
  _RetailDashboardState createState() => _RetailDashboardState();
}

class _RetailDashboardState extends State<RetailDashboard> {
   List<charts.Series> seriesList;
   bool animate;
    bool _isDayClicked = false;
   bool _isWeekClicked = true;
   bool _isMonthClicked = false;
   String outlet = 'Main Outlet';
   bool lessFilters = false;
   final List<TimeSeriesSales> data = [
       TimeSeriesSales(
         time: DateTime(2021, 3, 21),
         sales: 5,
          barColor: charts.ColorUtil.fromDartColor(Colors.blue)
        ),
      new TimeSeriesSales(time: DateTime(2021,3 , 22),sales: 4, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
      new TimeSeriesSales(time: DateTime(2021, 3, 23),sales: 1, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
      new TimeSeriesSales(time: DateTime(2021, 3, 24),sales: 2, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
      new TimeSeriesSales(time: DateTime(2021, 3 , 25),sales: 3, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
      new TimeSeriesSales(time: DateTime(2021, 3, 26),sales: 4, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
      new TimeSeriesSales(time: DateTime(2021, 3, 27),sales: 5, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),

    ];

   
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: CustomerDrawer(),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                isDarkMode: false,
                 text: 'Retail Dashboard'
                 ),
              Container(
                color: Colors.white,
                child:Padding(
                  padding: const EdgeInsets.only(top:24,bottom:24,left:48.0,right: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children :[
                              Text(
                                'View By',
                                style:kMediumTextStyle
                                ),
                              SizedBox(
                                height:5.0
                              ),
                              DateButton(
                                dayOnClicked: (){
                                  setState(() {
                                    _isDayClicked = true;
                                    _isWeekClicked = false;
                                    _isMonthClicked = false;
                                  });
                                },
                                isDayClicked: _isDayClicked, 
                                isMonthClicked: _isMonthClicked,
                                monthOnClicked: (){
                                  setState(() {
                                    _isDayClicked = false;
                                    _isWeekClicked = false;
                                    _isMonthClicked = true;
                                  });
                                },
                                isWeekClicked: _isWeekClicked, 
                                weekOnClicked:(){
                                  setState(() {
                                    _isDayClicked = false;
                                    _isWeekClicked = true;
                                    _isMonthClicked = false;
                                  });
                                },
                                )
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:24.0,right: 24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children :[
                                Text(
                                  'Dates',
                                  style:kMediumTextStyle
                                  ),
                                SizedBox(
                                  height:5.0
                                ),
                                DateRangeButton(
                                  previousOnClicked: (){},
                                  ispreviousClicked: true, 
                                  iscurrentdateClicked: false, 
                                  currentdateOnClicked: (){},
                                  isnextClicked: false, 
                                  nextOnClicked: (){}
                                )
                              ]
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Outlet',
                                style: kMediumTextStyle,
                              ),
                              SizedBox(
                                height:5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DropDownInput(
                                    isDarkMode: false,
                                        width: 232,
                                        height: 42,
                                      paddingAll: 4,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          outlet = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: outlet,
                                        dropdownList: ['Main Outlet','All outlets(1)'],
                                      ),
                                      SizedBox(
                                        width: 95,
                                      ),
                                      if(!lessFilters)
                                      TextButton(
                                        onPressed: (){
                                          setState(() {
                                            lessFilters = true;
                                          });
                                        },
                                        child: Text(
                                          'More Filters',
                                          style: TextStyle(
                                            color: kFilterTextColor,
                                            fontFamily: 'Lato',
                                            fontSize: 15
                                            ),
                                          ),
                                      ),
                                ],
                              )
                            ],
                          ),
                         
                        ],
                      ),
                      if(lessFilters)
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children : [
                            Text(
                              'Filter report by a brand,channel ,customer or other keyword',
                                style:kMediumTextStyle
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextInput(
                                        darkMode: false,
                                    validate:(value){},
                                    onChange: (value){},
                                    paddingTop: 12,
                                    hideText: false,
                                    height: 42,
                                    width:750,
                                    hintText: 'Add a filter...',
                                  ),
                                  TextButton(
                                        onPressed: (){
                                          setState(() {
                                            lessFilters = false;
                                          });
                                        },
                                        child: Text(
                                          'Less Filters',
                                          style: TextStyle(
                                            color: kFilterTextColor,
                                            fontFamily: 'Lato',
                                            fontSize: 15
                                            ),
                                          ),
                                      ),
                                ],
                              )
                          ]
                        ),
                      )
                    ]
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top:24.0,bottom: 24.0,left: 48.0, right: 48.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: SubscriberChart(
                            data: data,
                            header: 'REVENUE',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:24.0,right: 24.0),
                            child: Container(
                            child: SubscriberChart(
                              data: data,
                              header: 'SALE COUNT',
                              ),
                            ),
                          ),
                          Container(
                          child: SubscriberChart(
                            data: data,
                            header: 'CUSTOMER COUNT',
                            ),
                          ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:36.0,bottom: 36.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: SubscriberChart(
                              data: data,
                              header: 'GROSS PROFIT',
                              ),
                            ),
                              Padding(
                              padding: const EdgeInsets.only(left:24.0,right: 24.0),
                              child: Container(
                              child: SubscriberChart(
                                data: data,
                                header: 'DISCOUNTED',
                                ),
                              ),
                            ),
                            Container(
                            child: SubscriberChart(
                              data: data,
                              header: 'DISCOUNTED (%)',
                              ),
                            ),
                        ],
                      ),
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: SubscriberChart(
                            data: data,
                            header: 'AVG, SALE VALUE',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:24.0),
                            child: Container(
                            child: SubscriberChart(
                              data: data,
                              header: 'AVG, ITEMS PER SALE',
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              RetailTable()
            ],
          )
        ),
      )
    );
  }
}
