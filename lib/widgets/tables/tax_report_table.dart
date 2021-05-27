import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/retail_table_header.dart';

class TaxReportTable extends StatelessWidget {
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
                        color: Color(0xFFfbfbfb)
                      ),
                      height: 50,
                      width: 208,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child:Text('Tax Code',style: kMediumTextStyle,)
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
                      width: 132,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child:Text('Rate',style: kMediumTextStyle,)
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
                            padding: const EdgeInsets.only(left: 14,right: 14.0),
                            child:Text('Tax',style: kMediumTextStyle,)
                          )              
                        ],
                      )  
                    ), 
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                      ),
                      height: 50,
                      width: 408,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RetailTableHeader(
                            text: 'Revenue.(Excl.Tax)',
                            width: 408,
                             expandedWidth: 408, 
                             isOtherClicked: false, 
                             isThisAscending: true, 
                             onPress: (){}, 
                             rightBorder: false, 
                             bottomBorder: false
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