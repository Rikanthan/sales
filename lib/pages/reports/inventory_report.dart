import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/tab_bar.dart';
import 'package:sales/widgets/buttons/toggle_button.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sales/widgets/cards/popup_cards/calender_range.dart';
import 'package:sales/widgets/drawer/report_drawer.dart';
import 'package:sales/widgets/tables/inventory_performance_table.dart';
import 'package:sales/widgets/tables/inventory_replenishment_table.dart';
import 'package:sales/widgets/tables/inventory_summary_table.dart';

class InventoryReport extends StatefulWidget {
 
  @override
  _InventoryReportState createState() => _InventoryReportState();
}

class _InventoryReportState extends State<InventoryReport> {
   List<charts.Series> seriesList;
   bool animate;
    bool _summary = false;
   bool _replenishment = false;
   bool _performance = true;
   String reportType = "Product";
   String measure = 'On-hand Inventory';
   String filter = 'Exclude';
   String dateRange = 'All Time';
   String midBarText = 'Get an overview of inventory and its performance over time';
   bool lessFilters = false;
    bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ReportDrawer(reportsClicked: ReportsClicked.inventoryReports ),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              //DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                 text: 'Inventory Report',
                 isDarkMode: false,
                 ),
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                            TabBarItem(
                              darkMode: false,
                              width: 75, 
                              height: 48,
                              isClicked: _summary,
                              onClicked: (){
                                          setState(() {
                                            _summary = true;
                                            _replenishment = false;
                                           _performance = false;
                                           reportType = 'Product';
                                           measure = 'On-hand Inventory';
                                            dateRange = 'All time';
                                            midBarText = 'Get an overview of inventory and its performance over time';
                                          });
                                        },
                              text: 'Summary'
                              ),
                              Padding(
                                   padding: const EdgeInsets.only(left:35.0,right: 35.0),
                                   child: TabBarItem(
                                     darkMode: false,
                              width: 119, 
                              height: 48,
                              isClicked: _replenishment,
                              onClicked: (){
                                          setState(() {
                                          _summary = false;
                                          _replenishment = true;
                                          _performance = false;
                                          reportType = 'SKU Name';
                                           measure = 'All Inventory';
                                            dateRange = '29th Apr 2021-27th May\n2021';
                                            midBarText = 'A starting point to help you decide what to order and how much of it';
                                          });
                                        },
                              text: 'Replenishment'
                                ),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.only(right:35.0),
                                   child: TabBarItem(
                                     darkMode: false,
                              width: 103, 
                              height: 48,
                              isClicked: _performance,
                              onClicked: (){
                                          setState(() {
                                            _summary = false;
                                            _replenishment = false;
                                            _performance = true;
                                             reportType = 'Product';
                                           measure = 'All Inventory';
                                            dateRange = 'All time';
                                            midBarText = 'Track product performance and decide what to order';
                                          });
                                        },
                              text: 'Performance'
                              ),
                            ),
                  ]
                ),
              ),
              MidButtonBar(
                text: midBarText, 
                addBlueButton: false,
                blueButtonText: '', 
                blueOnTap: (){}, 
                greenButtonText: '', 
                greenOnTap: (){}
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
                                isDarkMode: false,
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
                                dropdownList: ['Product','SKU Name','Brand','Outlet','Supplier','Product Type'],
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
                                  isDarkMode: false,
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
                                dropdownList: ['On-hand Inventory','Low Inventory','All Inventory'],
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
                                        onPressed: (){
                                         showDialog(
                                           context: context, 
                                         builder: (_)=> CalenderRange()
                                         );
                                        },
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
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                dateRange,
                                                  style: kMediumTextNormalStyle
                                                ),
                                                Icon(
                                                  Icons.calendar_view_day_outlined,
                                                  size:15,
                                                  color: kDashboardMidBarColor,
                                                  )
                                            ],
                                          ),
                                        ),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Row(
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
                                            style: k15Blue
                                            ),
                                        )
                          ],
                        ),
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
                                     isDarkMode: false,
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
                                        darkMode: false,
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
                                padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ToggleButton(
                                      height: 28,
                                      width: 63,
                                      isSwitch: isSwitch,
                                      onToggle: (val) {
                                            setState(() {
                                              isSwitch = val;
                                            });
                                          },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          'Show inactive inventory',
                                          style: kMediumTextNormalStyle
                                          ),
                                      )
                                  ],
                                ),
                              ),
                              Container(
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
                                            style: k15Blue
                                            ),
                                        ),
                                  ]
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
                        style: k15BlueDark
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
                          style: k15BlueDark
                        )
                      )
                  ],
                ),
              ),
              if(_summary)
              InventorySummaryTable(),
              if(_replenishment)
              InventoryReplenishmentTable(),
              //if(_performance)
              //InventoryPerformanceTable()
            ],
          )
        ),
      )
    );
  }
}
