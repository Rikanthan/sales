import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
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
        backgroundColor: kAppBarColor,
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
                                  'Total Value Issued',style: k15BlackDark,
                                  ),
                                Text(
                                  'Rs0.00',
                                  style:k15BlackNormal
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
                                    'Total Value Redeemed',style: k15BlackDark,
                                    ),
                                    Text(
                                  'Rs0.00',
                                  style: k15BlackNormal
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
                                  'Outstanding Balance',style: k15BlackDark,
                                  ),
                                   Text(
                                  'Rs0.00',
                                  style: k15BlackNormal
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
                             color:kWhite,
                             height: 52,
                             width:231,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text(
                                     'Customer',
                                     style: k15BlackDark,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:kWhite,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Total issued',
                                     style: k15BlackDark,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:kWhite,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Total redeemed',
                                     style: k15BlackDark,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:kWhite,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Balance',
                                     style: k15BlackDark,
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
                               style: k14Black
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
