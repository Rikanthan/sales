import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/product_sub_header.dart';
import 'package:sales/widgets/cards/custom_cards/active_product_details.dart';
import 'package:flutter_switch/flutter_switch.dart';
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
  bool isSwitch = true;


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
                      activeColor: MaterialStateColor
                                            .resolveWith(
                                                      (states) => 
                                                          kSignInButtonColor
                                                          ),
                      focusColor: MaterialStateColor
                                            .resolveWith(
                                                          (states) => 
                                                          kSignInButtonColor
                                                          ),
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
              //color: _expansionTile? kInputBorderColor: kWhite,
                decoration: 
                      BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: _expansionTile ? kInputBorderColor 
                                                    : kSignInButtonColor,
                                        width: _expansionTile? 0 :4.0,
                                        )
                                    ),
                                    color: _expansionTile? kInputBorderColor: kWhite,
                                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8,right:0,top: 8,bottom: 8),
                        child: InkWell(
                          child: Icon(
                            ! _expansionTile  ? Icons.keyboard_arrow_down : 
                                                Icons.keyboard_arrow_right,
                            size: 15,
                            color: kDashboardMidBarColor,
                            ),
                           onTap: (){
                             setState(() {
                               _expansionTile = !_expansionTile;
                             });
                           }
                          ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left:8.0,top:8.0,bottom:8.0,right: 8.0),
                          child: Checkbox(
                            activeColor: MaterialStateColor
                                                .resolveWith(
                                                          (states) => kSignInButtonColor
                                                          ),
                            focusColor: MaterialStateColor
                                                .resolveWith(
                                                            (states) => kSignInButtonColor
                                                            ),
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
                                  Icons.account_box_rounded,
                                  size: 50,
                                  color: kWhite,
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
                            child: Center(child: Text('-'))
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 43,
                            width: 54,
                            child: Center(child: Text('-'))
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 43,
                            width: 76,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                        child : FlutterSwitch(
                                          width: 68.0,
                                          height: 35.0,
                                          valueFontSize: 15.0,
                                          toggleSize: 37.0,
                                          value: isSwitch,
                                          borderRadius: 30.0,
                                          padding: 0.0,
                                          activeText: ' \u2714',
                                          inactiveText: '\u2716',
                                          activeTextColor: kWhite,
                                          inactiveTextColor: kDashboardMidBarColor,
                                          activeColor: kSignInButtonColor,
                                          inactiveColor: kWhite,
                                          activeSwitchBorder: Border.all(
                                              color: kDropDownColor,
                                              width: 3.0,
                                            ),
                                          inactiveSwitchBorder: Border.all(
                                              color: kDropDownColor,
                                              width: 3.0,
                                            ),
                                          showOnOff: true,
                                          toggleBorder: Border.all(color:kDropDownColor,width:1),
                                          duration: Duration(milliseconds:100),
                                          onToggle: (val) {
                                            setState(() {
                                              isSwitch = val;
                                            });
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '20 May 2021',
                                   style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: kAppBarColor,
                                               ),
                                          ),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                  if(!_expansionTile)
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