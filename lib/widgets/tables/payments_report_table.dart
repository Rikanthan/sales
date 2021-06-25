import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';

class PaymentReportTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top:3.75,left: 70,right: 70,bottom: 11.375),
        child: Container(
          height: 540,
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
                      width: 191
                    ),
                     Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFebebeb),
                        border:Border(
                          bottom:BorderSide( color: kTableBorderColor)
                        )
                      ),
                      height: 30,
                      width: 542,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('2021',style: k15BlackDark,)
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
                      height: 30,
                      width: 147,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'TOTAL',
                            style: TextStyle(
                              color: Color(0xFF959595),
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              fontFamily: 'Lato'
                              ),
                            ),
                        ],
                      )
                    ),
                   
                  ],
                ),
                Row(
                  children: [
                     Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                        border:Border(
                          right:BorderSide( color: kTableBorderColor),      
                        )
                      ),
                      height: 50,
                      width: 191,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child:Text('Payment Type',style: k15BlackDark,)
                          )              
                        ],
                      )  
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                      ),
                      height: 50,
                      width: 143,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,right: 14.0),
                            child:Text('3rd May',style: k15BlackDark,)
                          )              
                        ],
                      )  
                    ), 
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                      ),
                      height: 50,
                      width: 133,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 1,right: 14.0),
                            child:Text('10th May',style: k15BlackDark,)
                          )              
                        ],
                      )  
                    ), 
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                      ),
                      height: 50,
                      width: 134,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 1,right: 14.0),
                            child:Text('17th May',style: k15BlackDark,)
                          )              
                        ],
                      )  
                    ), 
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                        border:Border(
                          right:BorderSide( color: kTableBorderColor),      
                        )
                      ),
                      height: 50,
                      width: 133,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 1,right: 15.0),
                            child:Text('24th May',style: k15BlackDark,)
                          )              
                        ],
                      )  
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFf8f8f8),
                        border:Border(
                          right:BorderSide( color: kTableBorderColor),      
                        )
                      ),
                      height: 50,
                      width: 147,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15.0),
                            child:Text('Amount',style: k15BlackDark,)
                          )              
                        ],
                      )  
                    ),                                                                      
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 884,
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                        border:Border(
                          bottom:BorderSide( color: kTableBorderColor),
                          left:BorderSide( color: kTableBorderColor),
                          right:BorderSide( color: kTableBorderColor),
                          top:BorderSide( color: kTableBorderColor),
                        )
                      ),
                      child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'No data avalible for this period',
                             style: TextStyle(
                               color: kFooterColor,
                               fontFamily: 'Roboto',
                               fontStyle: FontStyle.italic,
                               fontSize: 15.0,
                             ),
                            )
                        ],
                      ),
                  ),
                    )
                  ],
                )
  
              ],
            ),
        ),
      ),
    );
  }
}