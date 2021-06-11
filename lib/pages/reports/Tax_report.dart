import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/report_drawer.dart';
import 'package:sales/widgets/tables/tax_report_table.dart';


class TaxReport extends StatefulWidget {
 
  @override
  _TaxReportState createState() => _TaxReportState();
}

class _TaxReportState extends State<TaxReport> {
  
   String reportType = "Tax Rate Report";
   String filter = 'Exclude';
   bool lessFilters = false;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ReportDrawer(reportsClicked: ReportsClicked.taxReports,),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                isDarkMode: false,
                 text: 'Tax Report'
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
                                dropdownList: ['Tax Rate Report'],
                              ),
                            ]
                          ),                     
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
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
                                              style: kMediumTextNormalStyle
                                            ),
                                        ),
                                      ),
                                ),
                              ],
                            ),
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
                                          style: k15Blue
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
                                              style: k15Blue
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [               
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
              TaxReportTable()
            ],
          )
        ),
      )
    );
  }
}
