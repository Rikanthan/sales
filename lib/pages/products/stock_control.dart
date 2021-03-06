import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/order_stock.dart';
import 'package:sales/pages/products/receive_stock.dart';
import 'package:sales/pages/products/return_stock.dart';
import 'package:sales/pages/products/transfer_stock.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

class StockControl extends StatefulWidget {
  @override
  _StockControlState createState() => _StockControlState();
}

class _StockControlState extends State<StockControl> {
  String orders ='Open orders';
  String outlet = 'Main Outlet';
  String supplier = 'Flo & Frankie';
  bool lessFilters = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ProductDrawer(productsClicked: ProductsClicked.stockControl),
      body:SingleChildScrollView(
        child: Container(
          color:kInputBorderColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(backgroundColor:kWhite,isDarkMode: false,text: 'Stock Control'),
              Container(
                color:kInputBorderColor,
                child: Padding(
                  padding: EdgeInsets.only(top:16,bottom:16,left:48.0,right: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                        'A list of all of your consignments.',
                        style:TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            color: kSignInTextColor
                          )
                      ),
                      Expanded(child: Text(''),),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: 'Order Stock',
                          onPress: (){
                            Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (_)=> OrderStock()
                                        )
                                    );
                          },
                          buttonColor: kDashboardMidBarColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      ),
                     Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: 'Receive Stock',
                          onPress: (){
                             Navigator.push(
                                        context, 
                                        MaterialPageRoute(
                                          builder: (_)=> ReceiveStock()
                                          )
                                      );
                          },
                          buttonColor: kDashboardMidBarColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: 'Return Stock',
                          onPress: (){
                             Navigator.push(
                                        context, 
                                        MaterialPageRoute(
                                          builder: (_)=> ReturnStock()
                                          )
                                      );
                          },
                          buttonColor: kDashboardMidBarColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: 'Transfer Stock',
                          onPress: (){
                            Navigator.push(
                                        context, 
                                        MaterialPageRoute(
                                          builder: (_)=> NewStockTransfer()
                                          )
                                      );
                          },
                          buttonColor: kDashboardMidBarColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      ),
                    ]
                  ),
                ),
              ),
              Container(
                color:kWhite,
                child:
                   Padding(
                      padding: const EdgeInsets.only(
                                                left: 48,
                                                right: 48,
                                                top:24,
                                                bottom:12
                                                ),
                     child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Text(
                                  'Show',
                                  style: k15BlackDark,
                                  ),
                              ),
                                 DropDownInput(
                                  isDarkMode: false,
                                  width: 296,
                                  height: 30,
                                  paddingAll: 4,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    orders = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: orders,
                                  dropdownList: [
                                                'All orders',
                                                'Open orders',
                                                'Sent orders',
                                                'Dispatched orders',
                                                'Sent returns',
                                                'Received orders',
                                                'Overdue orders',
                                                'Cancelled orders',
                                                'Failed orders'
                                                ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom:4.0),
                                  child: Text(
                                    'Name/Number/Product/Supplier Invoice',
                                    style: k15BlackDark,
                                    ),
                                ),
                                TextInput(
                                  darkMode: false,
                                  validate:(value){},
                                  onChange: (value){},
                                  paddingTop: 4,
                                  hideText: false,
                                  height: 30,
                                  width:284,
                                  hintText: '',
                                  )  
                                ],
                              ),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom:4.0),
                                  child: Text(
                                    'Outlet',
                                    style: k15BlackDark,
                                    ),
                                ),
                                   DropDownInput(
                                    isDarkMode: false,
                                    width: 293.33,
                                    height: 30,
                                    paddingAll: 4,
                                    onPressed: (String newValue) 
                                                    {
                                                      setState(() {
                                                      outlet = newValue;
                                                      }
                                                    );
                                                  },
                                    dropdownValue: outlet,
                                    dropdownList: ['Main Outlet','Main Outlet1'],
                                  )
                                ],
                              ),
                          ]
                        ),
                        if(!lessFilters)
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:4.0),
                                child: Text(
                                  'Date from',
                                  style: k15BlackDark,
                                  ),
                              ),
                              TextInput(
                                 darkMode: false,
                                validate:(value){},
                                onChange: (value){},
                                paddingTop: 4,
                                hideText: false,
                                height: 30,
                                width:205,
                                hintText: '',
                                )  
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:4.0),
                                child: Text(
                                  'Date to',
                                  style: k15BlackDark,
                                  ),
                              ),
                              TextInput(
                                darkMode: false,
                                validate:(value){},
                                onChange: (value){},
                                paddingTop: 4,
                                hideText: false,
                                height: 30,
                                width:205,
                                hintText: '',
                                )  
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:4.0),
                                child: Text(
                                  'Due date from',
                                  style: k15BlackDark,
                                  ),
                              ),
                              TextInput(
                                darkMode: false,
                                validate:(value){},
                                onChange: (value){},
                                paddingTop: 4,
                                hideText: false,
                                height: 30,
                                width:205,
                                hintText: '',
                                )  
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:4.0),
                                child: Text(
                                  'Due date to',
                                  style: k15BlackDark,
                                  ),
                              ),
                              TextInput(
                                darkMode: false,
                                validate:(value){},
                                onChange: (value){},
                                paddingTop: 4,
                                hideText: false,
                                height: 30,
                                width:205,
                                hintText: '',
                                )  
                              ],
                            ),
                          
                            ],
                          ),
                        ),
                        if(!lessFilters)
                        Padding(
                          padding: const EdgeInsets.only(bottom:8.0),
                          child: Row(
                            children: [
                               Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:4.0),
                                    child: Text(
                                      'Supplier',
                                      style: k15BlackDark,
                                      ),
                                  ),
                                     DropDownInput(
                                isDarkMode: false,
                                      width: 188,
                                      height: 30,
                                      paddingAll: 4,
                                      onPressed: (String newValue) 
                                                      {
                                                        setState(() {
                                                        supplier = newValue;
                                                        }
                                                      );
                                                    },
                                      dropdownValue: supplier,
                                      dropdownList: ['','Flo & Frankie'],
                                    )
                                  ],
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              TextButton(
                            onPressed: (){
                              setState(() {
                                lessFilters ? lessFilters = false : 
                                lessFilters = true;
                              });
                            },
                             child: Text(
                               lessFilters ?  'More filters Options':
                                        'Less filters Options',
                                style: kMediumBlueTextStyle
                               )
                             ),
                              CustomButton(
                                buttonText: 'Update',
                                onPress: (){},
                                buttonColor: kDashboardMidBarColor, 
                                topPadding: 24, 
                                leftPadding: 30
                                )
                            ]
                          ),
                        )
                      ],
                    ),
                   ),                
                ),
               Padding(
                 padding: const EdgeInsets.only(top:24.0,bottom: 48.0),
                 child: Container(
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top:92.0,bottom:44 ),
                         child: Image.asset(
                           'assets/images/boxes.png',
                           width:170,
                           height:135
                           ),
                       ),
                       Text(
                         'No results found.Try a different search or filer.',
                         style: k15BlackNormal
                         )
                     ],
                   ),
                 ),
               ) 
            ],
          )
        ),
      )
    );
  }
}