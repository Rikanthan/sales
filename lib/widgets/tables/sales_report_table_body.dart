import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/report_table_cell.dart';
import 'package:sales/widgets/TextInput/report_table_sub_cell.dart';
import 'package:sales/widgets/TextInput/report_table_sub_header.dart';
class SalesReportBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
              Row(
                  children: [
                    Container(
                      width:153,
                      height:45,
                      decoration:BoxDecoration(
                        color: Color(0xFFf8f8f8),
                        border: Border(
                          right:BorderSide( color: kTableBorderColor),
                          bottom: BorderSide(color: kTableBorderColor)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,top:1,bottom: 1,right: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Totals',style: kMediumTextStyle,
                                ),
                            ],
                          ),
                        ),
                      ),
                      ReportTableCell(
                        width: 75,
                        paddingLeft: 15,
                        text: 'Rs0.00', 
                        paddingRight: 14, 
                        rightBorder: false
                      ),
                        ReportTableCell(
                        width: 65,
                        paddingLeft: 1, 
                        paddingRight: 14,
                        text: 'Rs0.00', 
                        rightBorder: false
                      ),
                      ReportTableCell(
                        width: 65,
                        paddingLeft: 1, 
                        paddingRight: 14,
                        text: 'Rs0.00', 
                        rightBorder: false
                      ),
                        ReportTableCell(
                        width: 66,
                        paddingLeft: 1,
                        text: 'Rs0.00', 
                        paddingRight: 15, 
                        rightBorder: true
                      ),
                      ReportTableCell(
                        width: 105,
                        paddingLeft: 1,
                        text: 'Rs0.00', 
                        paddingRight: 14, 
                        rightBorder: true
                      ),
                      ReportTableCell(
                        width: 115,
                        paddingLeft: 1, 
                        paddingRight: 14,
                        text: 'Rs0.00', 
                        rightBorder: false
                      ),
                        ReportTableCell(
                        width: 84,
                        paddingLeft: 1, 
                        paddingRight: 15,
                        text: 'Rs0.00', 
                        rightBorder: true
                      ),
                      ReportTableCell(
                        width: 79,
                        paddingLeft: 1, 
                        paddingRight: 15,
                        text: '0%', 
                        rightBorder: true
                      ),
                      ReportTableCell(
                        width: 76,
                        paddingLeft: 1, 
                        paddingRight: 15,
                        text: 'Rs0.00', 
                        rightBorder: true
                      ),
                  ],
                  ),
                  Row(
                    children: [
                      Column(
                        children:[
                                Container(
                            decoration: BoxDecoration(
                              color: kTableHeaderBackgroundColor,
                              border:Border(
                                right:BorderSide( color: kTableBorderColor),
                                bottom:BorderSide( color: kTableBorderColor)
                              )
                            ),
                            height:250,
                            width: 38,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RotatedBox(
                                  quarterTurns: -1,
                                  child: Text(
                                    'TOTALS BY DATE RANGE',
                                    style: TextStyle(
                                      color: Color(0xFF959595),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      fontFamily: 'Lato'
                                      ),
                                    ),
                                ),
                              ],
                            )
                          ),
                        ]
                      ),
                      Column(
                        children: [
                          ReportSideHeader(
                            text: 'Revenue',
                             bottomBorder: false
                             ),
                          ReportSideHeader(
                            text: 'Cost of\nGoods Sold',
                             bottomBorder: false
                             ),
                          ReportSideHeader(
                            text: 'Gross Profit',
                             bottomBorder: false
                             ),
                          ReportSideHeader(
                            text: 'Margin (%)',
                             bottomBorder: false
                             ),
                          ReportSideHeader(
                            text: 'Tax',
                             bottomBorder: true
                             )
                        ],
                      ),
                      Column(
                        children:[
                          ReportTableSideCell(
                            width: 75,
                            paddingLeft: 15,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 75,
                            paddingLeft: 15,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 75,
                            paddingLeft: 15,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 75,
                            paddingLeft: 15,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: '0%'
                            ),
                            ReportTableSideCell(
                            width: 75,
                            paddingLeft: 15,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder:true,
                            text: 'Rs0.00'
                            )
                        ]
                      ),
                      Column(
                        children:[
                          ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: '0%'
                            ),
                            ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder:true,
                            text: 'Rs0.00'
                            )
                        ]
                      ),
                      Column(
                        children:[
                          ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder: false,
                            text: '0%'
                            ),
                            ReportTableSideCell(
                            width: 65,
                            paddingLeft: 1,
                            paddingRight: 14, 
                            rightBorder: false,
                            bottomBorder:true,
                            text: 'Rs0.00'
                            )
                        ]
                      ),
                      Column(
                        children:[
                          ReportTableSideCell(
                            width: 66,
                            paddingLeft: 1,
                            paddingRight: 15, 
                            rightBorder: true,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 66,
                            paddingLeft: 1,
                            paddingRight: 15, 
                            rightBorder: true,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 66,
                            paddingLeft: 1,
                            paddingRight: 15, 
                            rightBorder: true,
                            bottomBorder: false,
                            text: 'Rs0.00'
                            ),
                            ReportTableSideCell(
                            width: 66,
                            paddingLeft: 1,
                            paddingRight: 15, 
                            rightBorder: true,
                            bottomBorder: false,
                            text: '0%'
                            ),
                            ReportTableSideCell(
                            width: 66,
                            paddingLeft: 1,
                            paddingRight: 15, 
                            rightBorder: true,
                            bottomBorder:true,
                            text: 'Rs0.00'
                            )
                        ]
                      )
                    ],
                  )
      ],
    );
  }
}