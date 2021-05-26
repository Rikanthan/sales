import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/retail_table_header.dart';
import 'package:sales/widgets/tables/sales_report_table_body.dart';
class SalesReportTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:3.75,left: 70,right: 70,bottom: 11.375),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFebebeb),
                      border:Border(
                        right:BorderSide(color: kTableBorderColor),
                        bottom:BorderSide( color: kTableBorderColor)
                      )
                    ),
                    height: 30,
                    width: 153
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFebebeb),
                      border:Border(
                        right:BorderSide( color: kTableBorderColor),
                        bottom:BorderSide( color: kTableBorderColor)
                      )
                    ),
                    height: 30,
                    width: 270,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('2021',style: kMediumTextStyle,),
                      ],
                    )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kTableHeaderBackgroundColor,
                      border:Border(
                        right:BorderSide( color: kTableBorderColor),
                        bottom:BorderSide( color: kTableBorderColor)
                      )
                    ),
                    height: 29,
                    width: 105,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'TOTAL',
                          style: TextStyle(
                            color: Color(0xFF959595),
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            fontFamily: 'Lato'
                            ),
                          ),
                      ],
                    )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFebebeb),
                      border:Border(
                        bottom:BorderSide( color: kTableBorderColor)
                      )
                    ),
                    height: 29,
                    width: 354
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:Border(
                        right:BorderSide( color: kTableBorderColor),
                        bottom:BorderSide( color: kTableBorderColor)
                      )
                    ),
                    height: 50,
                    width: 153,
                    child:Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Summary',style: kMediumTextStyle,),
                        ],
                      ),
                    )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:Border(
                        right:BorderSide( color: kTableBorderColor),
                        bottom:BorderSide( color: kTableBorderColor)
                      )
                    ),
                    height: 50,
                    width: 270,
                    child:Row(
                      children: [
                        Container(
                          width: 73,
                          child: Padding(
                            padding: const EdgeInsets.only(right:14.0,top:1,bottom: 1 ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('3rd\nMay',style: kMediumTextStyle,),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 65,
                          child: Padding(
                            padding: const EdgeInsets.only(right:14.0,top:1,bottom: 1 ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('10th\nMay',style: kMediumTextStyle,),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 65,
                          child: Padding(
                            padding: const EdgeInsets.only(right:15.0,top:1,bottom: 1 ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('17th\nMay',style: kMediumTextStyle,),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 66,
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right:14.0,top:1,bottom: 1 ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('24th\nMay',style: kMediumTextStyle,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                   Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFfbfbfb),
                      border:Border(
                        right:BorderSide( color: kTableBorderColor),
                        bottom:BorderSide( color: kTableBorderColor),
                      )
                    ),
                    height: 50,
                    width: 105,
                    child:
                      RetailTableHeader(
                        text: 'Revenue', 
                        width: 105,
                        expandedWidth: 105,
                        isOtherClicked: false,
                        isThisAscending: true, 
                        onPress: (){}, 
                        rightBorder: false,
                        bottomBorder: false,
                        )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFfbfbfb),
                      border:Border(
                        bottom:BorderSide( color: kTableBorderColor),
                      )
                    ),
                    height: 50,
                    width: 115,
                    child:
                      RetailTableHeader(
                        text: 'Cost of', 
                        width: 105,
                        expandedWidth: 115,
                        isOtherClicked: false,
                        isThisAscending: true, 
                        onPress: (){}, 
                        rightBorder: false,
                        bottomBorder: false,
                        )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFfbfbfb),
                      border:Border(
                        bottom:BorderSide( color: kTableBorderColor),
                      )
                    ),
                    height: 50,
                    width: 84,
                    child:
                      RetailTableHeader(
                        text: 'Gross', 
                        width: 84,
                        expandedWidth: 84,
                        isOtherClicked: false,
                        isThisAscending: true, 
                        onPress: (){}, 
                        rightBorder: false,
                        bottomBorder: false,
                        )
                  ),
                  Container(
                      decoration: BoxDecoration(
                        border:Border(
                        bottom:BorderSide( color: kTableBorderColor),
                        ),
                      color: Color(0xFFfbfbfb),
                      ),                  
                    height: 50,
                    width: 79,
                    child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Margin(%)',style: kMediumTextStyle,),
                        ],
                      )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFfbfbfb),
                      border:Border(
                        right:BorderSide( color: kTableBorderColor),
                        bottom: BorderSide(color: kTableBorderColor)
                      )
                    ),
                    height: 50,
                    width: 76,
                    child:
                      RetailTableHeader(
                        text: 'Tax', 
                        width: 76,
                        expandedWidth: 76,
                        isOtherClicked: false,
                        isThisAscending: true, 
                        onPress: (){}, 
                        rightBorder: false,
                        bottomBorder: false,
                        )
                  ),
                ],
              ),
              SalesReportBody()
            ],
          ),
      ),
    );
  }
}