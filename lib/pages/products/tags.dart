import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/price_sub_header.dart';
import 'package:sales/widgets/TextInput/product_sub_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/bars/product_bar.dart';
import 'package:sales/widgets/drawer/customer_drawer.dart';

class Tags extends StatefulWidget {
  @override
  _TagsState createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  bool _name = false;
  bool _number = true;
  bool _isThisAscending = true;
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
                backgroundColor:kHomeBackgroundColor, text: 'Product Tags'),
              MidButtonBar(
                text: 'A list of all your Tags.',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: 'Add Tag',
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
                            width: 480,
                            expandedWidth: 495, 
                            isOtherClicked: _name,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                                _name = false;
                                _number = true;
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
                        text: 'dress', 
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
                        text: 'shirt', 
                        number: '1', width: 600, 
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
                        text: 'sunglasses', 
                        number: '1', width: 600, 
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
                        text: 'watch', 
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