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

class Suppliers extends StatefulWidget {
  @override
  _SuppliersState createState() => _SuppliersState();
}

class _SuppliersState extends State<Suppliers> {
  bool _name = false;
  bool _number = true;
  bool _description = true;
  bool _markup = true;
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
        scrollDirection: Axis.horizontal,
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor, text: 'Suppliers'),
              SizedBox(
                width: 1024,
                child: MidButtonBar(
                  text: 'View and manage your suppliers.',
                   addBlueButton: false, 
                   blueButtonText: '',
                    blueOnTap: (){},
                   greenButtonText: 'Add Supplier',
                    greenOnTap: (){}
                    ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top:24.0,bottom:24.0,right:48.0,left: 48.0),
                child: Container(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        ProductSubHeader(
                            text: 'Name',
                            width: 155,
                            expandedWidth: 210, 
                            isOtherClicked: _name,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                                _name = false;
                                _number = true;
                                _description = true;
                                _markup = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),
                       ProductSubHeader(
                            text: 'Description',
                            width: 160,
                            expandedWidth: 180, 
                            isOtherClicked: _description,
                            isThisAscending: _isThisAscending,
                            isThisNumber: false, 
                            onPress:(){
                              setState(() {
                                _name = true;
                                _number = true;
                                _description = false;
                                _markup = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),

                       ProductSubHeader(
                            text: 'Default Markup',
                            width: 190,
                            expandedWidth: 200, 
                            isOtherClicked: _markup,
                            isThisAscending: _isThisAscending,
                            isThisNumber: true, 
                            onPress:(){
                              setState(() {
                                _name = true;
                                _number = true;
                                _markup = false;
                                _description = true;
                                _isThisAscending?_isThisAscending = false:_isThisAscending = true;
                              });
                            },
                            isThisProduct: false, 
                            isSelected: false
                            ),

                        ProductSubHeader(
                            text: 'Number of Products',
                            width: 230,
                            expandedWidth: 240, 
                            isOtherClicked: _number,
                            isThisAscending: _isThisAscending,
                            isThisNumber: true, 
                            onPress:(){
                              setState(() {
                               _number = false;
                               _name = true;
                              _description = true;
                              _markup = true;
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
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,top:4.0,bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0,right: 40.0),
                              child: Container(
                                width: 515,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: (){},
                                      child: Text(
                                        'Flo & Frankie',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontFamily: 'Lato',
                                          fontSize: 15,
                                          color: kAppBarColor
                                          ),
                                        )
                                      ),
                                      Text(
                                        '0%',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 15,
                                          color: kAppBarColor
                                          ),
                                        )                      
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:40.0),
                              child: Container(
                                width:190,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                            '14',
                                            style:TextStyle(
                                              fontFamily: 'Lato',
                                                fontSize: 15,
                                                color: kAppBarColor
                                            )
                                      ),
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
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                            color: kAppBarColor
                                            ),
                                          )
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.edit,
                                            size: 15,
                                            color: kDropDownColor,
                                            ),
                                           onPressed: (){}
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