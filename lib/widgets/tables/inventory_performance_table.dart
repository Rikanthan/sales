import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/product_sub_header.dart';
import 'package:sales/widgets/TextInput/retail_table_header.dart';

class InventoryPerformanceTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top:3.75,left: 70,right: 70,bottom: 11.375),
        child: Container(
          height: 540,
          width:1118,
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
                      width: 141
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
                      width: 95,
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
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFebebeb),
                        border:Border(
                          bottom:BorderSide( color: kTableBorderColor)
                        )
                      ),
                      height: 30,
                      width: 741
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
                      height: 79,
                      width: 141,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: ProductSubHeader(
                              text: 'Product',
                              width: 90,
                              expandedWidth: 90,
                              isOtherClicked: false,
                              isThisAscending: true,
                              isThisNumber: false, 
                              onPress: (){},
                              isThisProduct: false,
                              isSelected: false
                              ),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(right:15.0),
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: kDashboardMidBarColor,
                                ),
                            )
                        ],
                      )
                      
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                        border:Border(
                         
                          right: BorderSide( color: kTableBorderColor),
                        )
                      ),
                      height: 79,
                      width: 95,
                      child:
                        RetailTableHeader(
                          text: 'Closing Inventory', 
                          width: 95,
                          expandedWidth: 79,
                          isOtherClicked: true,
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
                        )
                      ),
                      height: 79,
                      width: 67,
                      child:
                        RetailTableHeader(
                          text: 'Items\nSold', 
                          width: 67,
                          expandedWidth: 67,
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
                         
                        )
                      ),
                      height: 79,
                      width: 66,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Items\nSold\nper\nDay' , style: kMediumTextStyle,)
                        ],
                      )
                        
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                        border:Border(         
                        )
                      ),
                      height: 79,
                      width: 82,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Sell-\nthrough\nRate' , style: kMediumTextStyle,)
                        ],
                      )
                        
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                        border:Border(         
                        )
                      ),
                      height: 50,
                      width: 114,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Days\nCover' , style: kMediumTextStyle,)
                        ],
                      )           
                    ),
                   Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfbfbfb),
                        border:Border(
                         
                        )
                      ),
                      height: 50,
                      width: 103,
                      child:
                        RetailTableHeader(
                          text: 'Avg.Cost', 
                          width: 103,
                          expandedWidth:103,
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
                         
                        )
                      ),
                      height: 50,
                      width: 42,
                      child:Padding(
                              padding: const EdgeInsets.only(left:15,right:15.0),
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: kDashboardMidBarColor,
                                ),
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