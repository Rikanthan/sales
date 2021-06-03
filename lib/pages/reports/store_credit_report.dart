import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';
import 'package:sales/widgets/drawer/report_drawer.dart';

class StoreCreditReport extends StatefulWidget {
 
  @override
  _StoreCreditReportState createState() => _StoreCreditReportState();
}

class _StoreCreditReportState extends State<StoreCreditReport> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ReportDrawer(reportsClicked: ReportsClicked.storeCreditReports,),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                isDarkMode: false,
                 text: 'Store Credit Report'
                 ),
              Padding(
                padding: const EdgeInsets.all(48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width:267,
                          height:58,
                          child: Padding(
                            padding: const EdgeInsets.only(top:20,bottom: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Value Issued',style: kMediumTextStyle,
                                  ),
                                Text(
                                  'Rs0.00',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    color: kAppBarColor
                                    ),
                                  )
                              ],
                            ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:80.0),
                          child: Container(
                            width:296,
                            height:58,
                            child: Padding(
                              padding: const EdgeInsets.only(top:20,bottom: 20,left: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Value Redeemed',style: kMediumTextStyle,
                                    ),
                                    Text(
                                  'Rs0.00',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    color: kAppBarColor
                                    ),
                                  )
                                ],
                              ),
                            )
                          ),
                        ),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width:267,
                          height:58,
                          child: Padding(
                            padding: const EdgeInsets.only(top:20,bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Outstanding Balance',style: kMediumTextStyle,
                                  ),
                                   Text(
                                  'Rs0.00',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    color: kAppBarColor
                                    ),
                                  )
                              ],
                            ),
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left:48.0,right: 48.0,top:24.0,bottom: 24.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                       Row(
                         children: [
                           Container(
                             color:Colors.white,
                             height: 52,
                             width:231,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text(
                                     'Customer',
                                     style: kMediumTextStyle,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:Colors.white,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Total issued',
                                     style: kMediumTextStyle,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:Colors.white,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Total redeemed',
                                     style: kMediumTextStyle,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:Colors.white,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Balance',
                                     style: kMediumTextStyle,
                                     ),
                                 ],
                               ),
                             ),
                           )
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text(
                               'No store credit card data available',
                               style: TextStyle(
                                 fontFamily: 'Lato',
                                 fontSize: 14,
                                 color:kAppBarColor
                                 ),
                                )
                          ],
                         ),
                       )
                   ],
                 ),
               )
            ],
          )
        ),
      )
    );
  }
}
