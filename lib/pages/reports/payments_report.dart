import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/barchart/simple_bar_chart.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/date_button.dart';
import 'package:sales/widgets/buttons/date_range_button.dart';
import 'package:sales/widgets/drawer/customer_drawer.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sales/widgets/tables/payments_report_table.dart';
import 'package:sales/widgets/tables/retail_dashboard_table.dart';
import 'package:sales/widgets/tables/sales_report_table.dart';
import '../../models/chart_model.dart';

class PaymentsReport extends StatefulWidget {
 
  @override
  _PaymentsReportState createState() => _PaymentsReportState();
}

class _PaymentsReportState extends State<PaymentsReport> {
  
   String reportType = "Payment type";
   String measure = 'Amount';
   String filter = 'Exclude';
   String comparision = 'No comparision';
   bool lessFilters = false;
  
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
                 text: 'Payments Report'
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
                                'Report Type',
                                style:kMediumTextStyle
                                ),
                              SizedBox(
                                height:5.0
                              ),
                              DropDownInput(
                                width: 220,
                                height: 46,
                              paddingAll: 4,
                                onPressed: (String newValue) 
                                                {
                                                  setState(() {
                                                  reportType = newValue;
                                                  }
                                                );
                                              },
                                dropdownValue: reportType,
                                dropdownList: ['Payment type'],
                              ),
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:12.0,right: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children :[
                                Text(
                                  'Measure',
                                  style:kMediumTextStyle
                                  ),
                                SizedBox(
                                  height:5.0
                                ),
                                DropDownInput(
                                width: 220,
                                height: 46,
                              paddingAll: 4,
                                onPressed: (String newValue) 
                                                {
                                                  setState(() {
                                                  measure = newValue;
                                                  }
                                                );
                                              },
                                dropdownValue: measure,
                                dropdownList: ['Amount'],
                              ),
                              ]
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date Range',
                                  style: kMediumTextStyle,
                                ),
                                SizedBox(
                                  height:5,
                                ),
                                Container(
                                  width:232,
                                  child: TextButton(
                                        onPressed: (){},
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(2.0),
                                              side: BorderSide(
                                                width: 2,
                                                color: kInputBorderColor
                                                )
                                              )
                                            ),
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.only(top:12.0,bottom: 12.0,left:12.0,right: 12.0),
                                          child: Text(
                                            "3rd May 2021-26th May 2021",
                                              style: TextStyle(
                                              color: kAppBarColor,
                                              fontFamily: 'Lato',
                                              fontSize: 15
                                              )
                                            ),
                                        ),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Comparision',
                                style: kMediumTextStyle,
                              ),
                              SizedBox(
                                height:5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DropDownInput(
                                        width: 220,
                                        height: 42,
                                      paddingAll: 4,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          comparision= newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: comparision,
                                        dropdownList: ['No comparision',''],
                                      ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
                                      )
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
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                   DropDownInput(
                                width: 130,
                                height: 42,
                              paddingAll: 4,
                                onPressed: (String newValue) 
                                                {
                                                  setState(() {
                                                  filter = newValue;
                                                  }
                                                );
                                              },
                                dropdownValue: filter,
                                dropdownList: ['Exclude','Include'],
                              ),
                                  TextInput(
                                    validate:(value){},
                                    onChange: (value){},
                                    paddingTop: 0,
                                    hideText: false,
                                    height: 42,
                                    width:563,
                                    hintText: 'Add a filter...',
                                  ),
                                  
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:12.0),
                                child: Container(
                                  height: 42,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children : [
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
                                    ]
                                  ),
                                ),
                              )
                          ]
                        ),
                      )
                    ]
                  ),
                )
              ),
              SizedBox(height: 12.0,),
              Padding(
                padding: const EdgeInsets.only(top: 13.0,left: 20.0,bottom: 13.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.tune_outlined,
                        color:kDashboardMidBarColor,
                        size:15
                      ), 
                      label: Text(
                        'Format Results',
                        style: TextStyle(
                          color: kDashboardMidBarColor,
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700
                          ),
                        )
                      ),
                      TextButton.icon(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.download_sharp,
                        color:kDashboardMidBarColor,
                        size:15
                      ), 
                      label: Text(
                        'Export Report',
                          style: TextStyle(
                          color: kDashboardMidBarColor,
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700
                          ),
                        )
                      )
                  ],
                ),
              ),
              PaymentReportTable()
            ],
          )
        ),
      )
    );
  }
}
