import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/product_sub_header.dart';
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
                    width: 215,
                    expandedWidth: 231,
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
            )
          ],
        ),
      ),
    );
  }
}