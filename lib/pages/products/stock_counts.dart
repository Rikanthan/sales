import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/add_inventory_count.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/bars/tab_bar.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

enum InventoryCountClick
{
  due,
  upcoming,
  completed,
  cancelled
}

class StockCount extends StatefulWidget {
  @override
  _StockCountState createState() => _StockCountState();
}

class _StockCountState extends State<StockCount> {
  InventoryCountClick _inventoryCountClick = InventoryCountClick.due;
  bool lessFilters = true;
  String showText = 'due';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ProductDrawer(productsClicked: ProductsClicked.stockControl ),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader( 
                        backgroundColor: kHomeBackgroundColor,
                        isDarkMode: false, 
                        text: 'Inventory Counts'
                        ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 20),
                child: Row(
                  children: [
                            TabBarItem(
                              darkMode: false,
                              width: 57, 
                              height: 48,
                              isClicked: _inventoryCountClick == InventoryCountClick.due,
                              onClicked: (){
                                          setState(() {
                                            _inventoryCountClick = InventoryCountClick.due;
                                           showText = 'due';
                                          });
                                        },
                              text: 'Due(0)'
                              ),
                              Padding(
                                   padding: const EdgeInsets.only(left:35.0,right: 35.0),
                                   child: TabBarItem(
                                     darkMode: false,
                              width: 105, 
                              height: 48,
                              isClicked: _inventoryCountClick == InventoryCountClick.upcoming,
                              onClicked: (){
                                          setState(() {
                                            _inventoryCountClick = InventoryCountClick.upcoming;
                                           showText = 'upcoming';
                                          });
                                        },
                              text: 'Upcoming(0)'
                                ),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.only(right:35.0),
                                   child: TabBarItem(
                                     darkMode: false,
                              width: 110, 
                              height: 48,
                              isClicked: _inventoryCountClick == InventoryCountClick.completed,
                              onClicked: (){
                                          setState(() {
                                            _inventoryCountClick = InventoryCountClick.completed;
                                           showText = 'completed';
                                          });
                                        },
                              text: 'Completed'
                              ),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child:TabBarItem(
                                     darkMode: false,
                              width: 80, 
                              height: 48,
                              isClicked: _inventoryCountClick == InventoryCountClick.cancelled,
                              onClicked: (){
                                          setState(() {
                                            _inventoryCountClick = InventoryCountClick.cancelled;
                                           showText = 'cancelled';
                                          });
                                        },
                              text: 'Cancelled'
                              ),
                          ),
                  ]
                ),
              ),
            
              MidButtonBar(
                text: 'Create,schedule and complete counts to keep track of your inventory',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: 'Add Inventory Count',
                  greenOnTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> 
                    AddInventoryCount()));
                  }
                  ),
              Padding(
                padding: const EdgeInsets.only(
                                    left:24.0,
                                    right: 24.0,
                                    top:24.0,
                                    bottom: 24.0
                                    ),
                child:
                 Container(
                   color: kWhite,
                   child:Padding(
                     padding: const EdgeInsets.all(36.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Image.asset(
                           'assets/images/scanner-v1.png',
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
                                            'Get the job done faster with our free iOS app,Scanner',
                                              style: kLargeHeaderStyle2
                                          ),
                                        ),
                                    Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: Text(
                                            'Perform on-the-go inventory counts using an iPhone, iPad or iPod touch - no additional hardware needed!\nScanner and Vend work seamlessly together to sync stock levels and product details, saving time and\nreducing manual mistakes.',
                                              style: kMediumHeightTextStyle
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              child:Text(
                                                'Find Out More',
                                              style: kMediumBlueTextStyle3
                                            ),
                                              onPressed: (){},
                                              ),
                                              SizedBox(width: 500,),
                                              TextButton(
                                              child:Text(
                                                'Got it thanks!',
                                              style: k15Underline
                                            ),
                                              onPressed: (){},
                                              )
                                          ],
                                        )
                             ],
                           )
                       ],
                      ),
                   )
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Column(
                    children: [
                      Image.asset(
                             'assets/images/stocktake-emptylist-v1.png',
                             width: 168,
                             height: 96,
                             ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'You have no $showText inventory counts',
                          style:k15BlackNormal
                        ),
                      ),
                      GreenButton(
                        buttonText: 'Add Inventory Count',
                        onPress: (){},
                        topPadding: 0
                        ),
                         Padding(
                        padding: const EdgeInsets.only(top: 80.0,bottom: 40),
                        child: Text(
                          "If you're experiencing problems with your product data.resync data to load it again.",
                          style:k14Grey
                        ),
                      ),
                    ]
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