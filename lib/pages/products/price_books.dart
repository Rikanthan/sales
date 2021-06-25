import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/new_price_book.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/price_sub_header.dart';
import 'package:sales/widgets/TextInput/product_sub_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

class PriceBooks extends StatefulWidget {
  @override
  _PriceBooksState createState() => _PriceBooksState();
}

class _PriceBooksState extends State<PriceBooks> {
  bool _price = false;
  bool _customer = true;
  bool _outlet = true;
  bool _validFrom = true;
  bool _validTo = true;
  bool _created = true;
  bool _isThisAscending = true;
  String showText = 'due';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ProductDrawer(productsClicked: ProductsClicked.priceBooks,),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,isDarkMode: false, text: 'Price Books'),
              MidButtonBar(
                text: 'A list of all your price books.',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: 'Add Price Book',
                  greenOnTap: (){
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_)=>AddNewPrice()));
                    }
                  ),
              Padding(
                padding: const EdgeInsets.only(left:24.0,right: 24.0,top:24.0,bottom: 24.0),
                child:
                 Container(
                   color: Colors.white,
                   child:Padding(
                     padding: const EdgeInsets.all(36.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Image.asset(
                           'assets/images/promotions-v1.png',
                           width: 168,
                           height: 96,
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: Text(
                                            "Introducing Vend's discounting tools",
                                              style: kLargeHeaderStyle2
                                          ),
                                        ),
                                    Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: Text(
                                            'Bring in new customers with no spreadsheets required. With Vend’s easy new discounting tools you can run\noffers by time or date range, target specific customers and outlets, and runindividual or blanket product\npromotions. Save time, enhance brand loyalty and boost revenue, now.',
                                              style: kMediumHeightTextStyle
                                          )
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              child:Text(
                                                'Try Promotons >',
                                              style: kMediumBlueTextStyle3
                                            ),
                                              onPressed: (){},
                                              ),
                                          ],
                                        )
                             ],
                           )
                       ],
                      ),
                   )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:24.0,bottom:24.0,right:48.0,left: 48.0),
                child: Container(
                  child:Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProductSubHeader(
                            text: 'Price Book Name',
                            width: 222,
                            expandedWidth: 231, 
                            isOtherClicked: _price,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                                _price = false;
                                 _customer = true;
                                 _outlet = true;
                                 _validFrom = true;
                                 _validTo = true;
                                 _created = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                            ProductSubHeader(
                            text: 'Customer Group',
                            width: 133,
                            expandedWidth: 151, 
                            isOtherClicked: _customer,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                               _price = true;
                                 _customer = false;
                                 _outlet = true;
                                 _validFrom = true;
                                 _validTo = true;
                                 _created = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                            ProductSubHeader(
                            text: 'Outlet',
                            width: 106,
                            expandedWidth: 124, 
                            isOtherClicked: _outlet,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                               _price = true;
                                 _customer = true;
                                 _outlet = false;
                                 _validFrom = true;
                                 _validTo = true;
                                 _created = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                            ProductSubHeader(
                            text: 'Valid From',
                            width: 118,
                            expandedWidth: 136, 
                            isOtherClicked: _validFrom,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                                _price = true;
                                 _customer = true;
                                 _outlet = true;
                                 _validFrom = false;
                                 _validTo = true;
                                 _created = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                            ProductSubHeader(
                            text: 'Valid To',
                            width: 110,
                            expandedWidth: 128, 
                            isOtherClicked: _validTo,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                               _price = true;
                                 _customer = true;
                                 _outlet = true;
                                 _validFrom = true;
                                 _validTo = false;
                                 _created = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                            ProductSubHeader(
                            text: 'Created At',
                            width: 118,
                            expandedWidth: 136, 
                            isOtherClicked: _created,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                                _price = true;
                                 _customer = true;
                                 _outlet = true;
                                 _validFrom = true;
                                 _validTo = true;
                                 _created = false;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(
                          thickness: 4,
                          color: kInputBorderColor
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:4.0,bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 231,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: (){},
                                      child: Text("General Price Book(All Products)",
                                        style: kMediumTextUnderline
                                        )
                                      ),     
                                  ],
                                ),
                              ),
                            ),
                            PriceSubHeader(
                                        text: 'All Customers',
                                         width: 133
                                         ),
                                      PriceSubHeader(
                                        text: 'All Outlets',
                                         width: 106
                                         ),
                                      PriceSubHeader(
                                        text: '-',
                                         width: 118
                                         ),
                                      PriceSubHeader(
                                        text: '-',
                                         width: 110
                                         ),
                                      PriceSubHeader(
                                        text: "17 May'21 9:03\nam",
                                         width: 118
                                         )
                          ],
                        ),
                      )
                    ],
                  )
                ),
              )
            ],
          )
        ),
      )
    );
  }
}