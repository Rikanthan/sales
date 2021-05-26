import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/retail_table_header.dart';

class RetailTable extends StatefulWidget {
  @override
  _RetailTableState createState() => _RetailTableState();
}

class _RetailTableState extends State<RetailTable> {
  bool _revenue = true;
  bool _itemsSold = true;
  bool _discounted = true;
  bool _isAssending = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 48,right: 48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:21.0,bottom: 21.0),
            child: Text(
              'Products sold',
                style: TextStyle(
                  fontSize: 25.375,
                  color: kTableHeaderColor,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400
                  ),
              ),
          ),
          Container(  
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: kFooterColor),
                  color:Colors.white,
                ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: kFooterColor),
                                bottom: BorderSide(color: kFooterColor)
                                ),
                            ),
                      width: 153,
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:14.0,bottom: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Product',style:kMediumTextStyle),
                          ],
                        ),
                      ),
                    ),
                    RetailTableHeader(
                      text: 'Revenue',
                      width: 200, 
                      expandedWidth: 214, 
                      isOtherClicked: _revenue,
                      isThisAscending: _isAssending, 
                      rightBorder: true,
                      bottomBorder: true,
                      onPress: (){
                        setState(() {
                          _revenue = false;
                          _itemsSold = true;
                          _discounted = true;
                           _isAssending?_isAssending = false:_isAssending = true;
                        });
                        }
                      ),     
                    RetailTableHeader(
                      text: 'Items Sold',
                      width: 202, 
                      expandedWidth: 215, 
                      rightBorder: false,
                      bottomBorder: true,
                      isOtherClicked: _itemsSold,
                      isThisAscending: _isAssending, 
                      onPress: (){
                        setState(() {
                          _revenue = true;
                          _itemsSold = false;
                          _discounted = true;
                           _isAssending?_isAssending = false:_isAssending = true;
                        });
                        }
                      ),     
                    RetailTableHeader(
                      text: 'Discounted',
                      width: 212, 
                      rightBorder: false,
                      expandedWidth: 226, 
                      isOtherClicked: _discounted,
                      isThisAscending: _isAssending, 
                      onPress: (){
                        setState(() {
                          _itemsSold = true;
                          _revenue = true;
                          _discounted = false;
                           _isAssending?_isAssending = false:_isAssending = true;
                        });
                        },
                        bottomBorder: true,
                      ),
                     Container(
                       decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: kFooterColor)
                                ),
                            ),
                      width: 144,
                      child: Padding(
                        padding: const EdgeInsets.only(left:15.0,right: 15.0,bottom: 14.0,top: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Trend',style:kMediumTextStyle),
                          ],
                        ),
                      ),
                    ),          
                  ],
                ),
                Padding(
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
                )
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top:21.0,bottom: 21.0),
            child: Text(
              'Top sales people',
                style: TextStyle(
                  fontSize: 25.375,
                  color: kTableHeaderColor,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400
                  ),
              ),
          ),
          Container(  
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: kFooterColor),
                  color:Colors.white,
                ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: kFooterColor),
                                bottom: BorderSide(color: kFooterColor)
                                ),
                            ),
                      width: 74,
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,top:14.0,bottom: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('User',style:kMediumTextStyle),
                          ],
                        ),
                      ),
                    ),
                    RetailTableHeader(
                      text: 'Revenue',
                      width: 140, 
                      expandedWidth: 140, 
                      isOtherClicked: _revenue,
                      isThisAscending: _isAssending, 
                      rightBorder: true,
                      bottomBorder: true,
                      onPress: (){
                        setState(() {
                          _revenue = false;
                          _itemsSold = true;
                          _discounted = true;
                           _isAssending?_isAssending = false:_isAssending = true;
                        });
                        }
                      ),   
                    RetailTableHeader(
                      text: 'Sale Count',
                      width:146, 
                      rightBorder: false,
                      bottomBorder: true,
                      expandedWidth:146, 
                      isOtherClicked: _discounted,
                      isThisAscending: _isAssending, 
                      onPress: (){
                        setState(() {
                          _itemsSold = true;
                          _revenue = true;
                          _discounted = false;
                           _isAssending?_isAssending = false:_isAssending = true;
                        });
                        }
                      ),  
                    RetailTableHeader(
                      text: 'Items Sold',
                      width: 141, 
                      expandedWidth: 141, 
                      rightBorder: false,
                      bottomBorder: true,
                      isOtherClicked: _itemsSold,
                      isThisAscending: _isAssending, 
                      onPress: (){
                        setState(() {
                          _revenue = true;
                          _itemsSold = false;
                          _discounted = true;
                           _isAssending?_isAssending = false:_isAssending = true;
                        });
                        }
                      ),                        
                     Container(
                       decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: kFooterColor)
                                ),
                            ),
                      width: 188,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0,bottom: 14.0,top: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Avg.Sale Value',style:kMediumTextStyle),
                          ],
                        ),
                      ),
                    ),   
                    Container(
                       decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: kFooterColor)
                                ),
                            ),
                      width: 237,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0,bottom: 14.0,top: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Avg.Items per Sale',style:kMediumTextStyle),
                          ],
                        ),
                      ),
                    ),                 
                  ],
                ),
                Padding(
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
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}