import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/product_sub_header.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:sales/widgets/cards/active_product_details.dart';
class ShowProducts extends StatefulWidget {
  @override
  _ShowProductsState createState() => _ShowProductsState();
}

class _ShowProductsState extends State<ShowProducts> {
  bool _isSelected = false;
  bool _isAssending = true;
  bool _product = false;
  bool _brand = true;
  bool _supplier = true;
  bool _retailPrice = true;
  bool _expansionTile = true;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:48.0,right: 48.0,top:24.0,bottom: 24.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Showing 1 active product.',
                  style: TextStyle(
                    color: kSignInTextColor,
                    fontFamily: 'Lato',
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0,top:12,bottom: 12.0),
                  child: TextButton.icon(
                    onPressed: (){},
                    icon: Icon(
                      Icons.download_sharp,
                      size: 15,
                      color: kDashboardMidBarColor,
                      ), 
                    label: Text(
                      'Export List...',
                          style:TextStyle(
                          color: kDashboardMidBarColor,
                          fontFamily: 'Lato',
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),
                      )
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Divider(
                height:1.0,
                color:kAppBarColor
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:16.0,bottom: 16.0,left: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child: Checkbox(
                    //  overlayColor: MaterialStateColor.resolveWith((states) => Colors.white),
                      activeColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor),
                     // hoverColor: MaterialStateColor.resolveWith((states) => Colors.white),
                      focusColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor),
                      value: _isSelected,
                       onChanged: (newValue){
                         setState(() {
                           _isSelected = newValue;
                           _product = true;
                         });
                       }
                      ),
                  ),
                  ProductSubHeader(
                    text: 'Product',
                    width: 210,
                    expandedWidth: 215,
                    isThisAscending: _isAssending,
                    isOtherClicked: _product,
                    isThisNumber: false,
                    isSelected: _isSelected,
                    isThisProduct: true,
                    onPress: (){
                      setState(() {
                        _product = false;
                        _brand = true;
                        _supplier = true;       
                        _retailPrice = true;
                        _isAssending?_isAssending = false:_isAssending = true;

                      });
                    },
                    ),
                  ProductSubHeader(
                    text: 'Brand',
                    width: 47,
                    expandedWidth: 66,
                    isThisAscending: _isAssending,
                    isOtherClicked: _brand,
                    isThisNumber: false,
                    isThisProduct: false,
                    isSelected: _isSelected,
                    onPress: (){
                      setState(() {
                        _product = true;
                        _brand = false;
                        _supplier = true;
                        _isAssending?_isAssending = false:_isAssending = true;
                      });
                    },
                    ),
                  ProductSubHeader(
                    text: 'Supplier',
                    width: 66,
                    expandedWidth: 83,
                    isThisAscending: _isAssending,
                    isOtherClicked: _supplier,
                    isThisNumber: false,
                    isSelected: _isSelected,
                    isThisProduct: false,
                    onPress: (){
                      setState(() {
                        _product = true;
                        _brand = true;
                        _supplier = false;
                        _retailPrice = true;
                        _isAssending?_isAssending = false:_isAssending = true;
                      });
                      },
                    ),
                  ProductSubHeader(
                    text: 'Inventory',
                    width: 78,
                    expandedWidth: 78,
                    isThisAscending: true,
                    isOtherClicked: true,
                    isThisNumber: false,
                    isSelected: _isSelected,
                    isThisProduct: false,
                    onPress: (){
                    },
                    ),
                  ProductSubHeader(
                    text: 'Retail Price',
                    width: 91,
                    expandedWidth: 107,
                    isThisAscending: _isAssending,
                    isOtherClicked: _retailPrice,
                    isThisNumber: true,
                    isSelected: _isSelected,
                    isThisProduct: false,
                    onPress: (){
                      setState(() {
                        _product = true;
                        _brand = true;
                        _supplier = true;
                        _retailPrice = false;
                        _isAssending?_isAssending = false:_isAssending = true;
                      });
                    },
                    ), 
                  ProductSubHeader(
                    text: 'Active',
                    width: 62,
                    expandedWidth: 62,
                    isThisAscending: true,
                    isOtherClicked: true,
                    isThisNumber: false,
                    isSelected: _isSelected,
                    isThisProduct: false,
                    onPress: (){
                    },
                    ),
                  ProductSubHeader(
                    text: 'Created',
                    expandedWidth: 117,
                    width: 117,
                    isThisAscending: true,
                    isOtherClicked: true,
                    isThisNumber: false,
                    isSelected: _isSelected,
                    isThisProduct: false,
                    onPress: (){
                      },
                    ), 
                ],
              ),
            ),
            Divider(
              height:1,
              color:kAppBarColor
            ),
            Container(
              //color: _expansionTile? kInputBorderColor: Colors.white,
                decoration: 
                      BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: _expansionTile? kInputBorderColor: kSignInButtonColor,
                                        width: _expansionTile? 0 :4.0,
                                        )
                                    ),
                                    color: _expansionTile? kInputBorderColor: Colors.white,
                                  ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8,right:0,top: 8,bottom: 8),
                        child: InkWell(
                          child: Icon(
                            ! _expansionTile?Icons.keyboard_arrow_down :Icons.keyboard_arrow_right,
                            size: 15,
                            color: kDashboardMidBarColor,
                            ),
                           onTap: (){
                             setState(() {
                               if(_expansionTile)
                               {
                                 _expansionTile = false;
                               }
                               else if(!_expansionTile)
                               {
                                 _expansionTile = true;
                               }
                               
                             });
                           }
                          ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left:8.0,top:8.0,bottom:8.0,right: 8.0),
                          child: Checkbox(
                            activeColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor),
                            focusColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor),
                            value: _isSelected,
                             onChanged: (newValue){
                               setState(() {
                                 _isSelected = newValue;
                                 _product = true;
                               });
                             }
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width:215,
                            height:52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle_notifications,
                                  size: 50,
                                  color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[
                                        TextButton(
                                          child: Text(
                                            'dress12',
                                            style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: kAppBarColor,
                                              decoration: TextDecoration.underline
                                               ),
                                          ),
                                          onPressed: (){}
                                        ),
                                        Text(
                                          '10001',
                                           style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: kAppBarColor,
                                               ),
                                          )
                                      ]
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 43,
                            width: 50,
                            child: Text('-')
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 43,
                            width: 54,
                            child: Text('-')
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 43,
                            width: 76,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: Colors.red,
                                               ),
                                          )
                              ],
                            )
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 43,
                            width: 89,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '\u20B9 0.00',
                                  style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: kSignInTextColor,
                                               ),
                                          )
                              ],
                            )
                          )
                        ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                        height: 43,
                                        width:76,
                                        child: LiteRollingSwitch(
                                            value: true,
                                            textOn: '\u2714',
                                            textOff: '\u2716',
                                            colorOn: kSignInButtonColor,
                                            colorOff: kDashboardMidBarColor,
                                            iconOn: Icons.close_rounded,
                                            iconOff: Icons.circle,
                                            animationDuration: Duration(milliseconds: 400),
                                            onChanged: (bool state) {
                                            // print('turned ${(state) ? 'yes' : 'no'}');
                                            },
                                          ),
                                      ),
                          ),
                          Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 43,
                            width: 114,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('20 May 2021'),
                              ],
                            )
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 43,
                            width: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: kDropDownColor,
                                  size:15
                                  ),
                              ],
                            )
                          )
                        ),             
                    ],
                  ),
                  Divider(
                    thickness:2.0,
                    color: kInputBorderColor,
                  ),
                  ActiveProducts()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}