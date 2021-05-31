import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/product_sub_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/bars/product_bar.dart';
import 'package:sales/widgets/drawer/customer_drawer.dart';

class Brands extends StatefulWidget {
  @override
  _BrandsState createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  bool _name = false;
  bool _number = true;
  bool _description = true;
  bool _isThisAscending = true;
  String showText = 'due';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: CustomerDrawer(),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                isDarkMode: false,
                 text: 'Brands'
                 ),
              MidButtonBar(
                text: 'A list of all your brands.',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: 'Add Brand',
                  greenOnTap: (){}
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
                            text: 'Name',
                            width: 220,
                            expandedWidth: 295, 
                            isOtherClicked: _name,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                                _name = false;
                                _number = true;
                                _description = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                            ProductSubHeader(
                            text: 'Description',
                            width: 180,
                            expandedWidth: 200, 
                            isOtherClicked: _description,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                                _description = false;
                                _number = true;
                                _name = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                            ProductSubHeader(
                            text: 'Number of Products',
                            width: 136,
                            expandedWidth: 153, 
                            isOtherClicked: _number,
                            isThisAscending: _isThisAscending,
                            isThisNumber: true, 
                            onPress:(){
                              setState(() {
                               _number = false;
                               _name = true;
                               _description = true;
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
                          thickness: 2,
                          color: kAppBarColor
                        ),
                      ),                     
                     ProductBar(
                        text: 'Nude Lacy', 
                        number: '6', width: 600, 
                        textClick: (){},
                        viewClick: (){},
                        editClick: (){},
                        deleteClick: (){}
                        ),
                      Divider(
                        thickness: 2,
                        color:kInputBorderColor
                      ),
                      ProductBar(
                        text: 'Lilya', 
                        number: '4', width: 600, 
                        textClick: (){},
                        viewClick: (){},
                        editClick: (){},
                        deleteClick: (){}
                        ),
                        Divider(
                        thickness: 2,
                        color:kInputBorderColor
                      ),
                        ProductBar(
                        text: 'Cluse', 
                        number: '3', width: 600, 
                        textClick: (){},
                        viewClick: (){},
                        editClick: (){},
                        deleteClick: (){}
                        ),

                        Divider(
                        thickness: 2,
                        color:kInputBorderColor
                      ),
                        ProductBar(
                        text: 'Quay', 
                        number: '1', width: 600, 
                        textClick: (){},
                        viewClick: (){},
                        editClick: (){},
                        deleteClick: (){}
                        ),
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