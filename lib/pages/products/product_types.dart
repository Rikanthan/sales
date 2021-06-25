import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/product_sub_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/cards/popup_cards/add_common.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

class PriceTypes extends StatefulWidget {
  @override
  _PriceTypesState createState() => _PriceTypesState();
}

class _PriceTypesState extends State<PriceTypes> {
  bool _name = false;
  bool _number = true;
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
      drawer: ProductDrawer(productsClicked: ProductsClicked.productTypes,),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,isDarkMode: false, text: 'Price Types'),
              MidButtonBar(
                text: 'A list of all your price types.',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: 'Add Type',
                  greenOnTap: (){
                    showDialog(
                          context: context, 
                          builder: (_)=> AddCommon(
                              header: 'Add Type', item: '', subHeader: 'Type') );
                  }
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
                          thickness: 4,
                          color: kInputBorderColor
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,top:4.0,bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0,right: 40.0),
                              child: Container(
                                width: 645,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: (){},
                                      child: Text("Fashion",
                                        style: k15Underline
                                        )
                                      ),
                                      Text("14",
                                        style: kMediumTextNormalStyle
                                        )                      
                                  ],
                                ),
                              ),
                            ),  
                            Padding(
                              padding: const EdgeInsets.only(top:20,bottom: 20,left: 40.0),
                              child: Container(
                                width: 195,
                                child:Row(
                                  children: [
                                    TextButton(
                                        onPressed: (){},
                                        child: Text("View Products",
                                          style: k15Underline
                                          )
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.edit,
                                            size: 15,
                                            color: kDropDownColor,
                                            ),
                                           onPressed: (){
                                             showDialog(
                                                context: context, 
                                                builder: (_)=> AddCommon(
                                                    header: 'Edit Type', item: 'Fashion', subHeader: 'Type') );
                                           }
                                           ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.delete_outline,
                                            size: 15,
                                            color: kDropDownColor
                                            ),
                                           onPressed: (){}
                                           )
                                  ],
                                )
                              ),
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