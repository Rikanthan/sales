import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/stock_control.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_maxlines.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/choose_date_button.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class ReceiveStock extends StatefulWidget {
  @override
  _ReceiveStockState createState() => _ReceiveStockState();
}

class _ReceiveStockState extends State<ReceiveStock> {
  String deliverTo = 'Main Outlet';
  String supplier = 'Choose a supplier';
  bool isSwitch = true;
  String tax = 'Default Tax for this Outlet';
  String size = 'Size';
  String color = 'Colour';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ProductDrawer(productsClicked: ProductsClicked.products),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(top:24.0,bottom: 24.0),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: isSwitch ? kInputBorderColor : kSignInButtonColor,
                        ), 
                      onTap: (){
                        setState(() {
                          isSwitch = false;
                        });
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> StockControl()));
                      }
                    ),
                    Text('Receive Stock',style: k32Black,)
                  ],
                ),
              ),
              Container(
                color: kInputBorderColor,
                height: 93,
                child: Padding(
                  padding: const EdgeInsets.only(left:48.0,right: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Count and receive products that have been delivered from your suppliers ',
                      style: k15BlackNormal,),
                      GestureDetector(
                        child: Text(
                          'Need help?',
                          style: k15BlackUnderline,
                          )
                        ),
                        Spacer(),
                      CustomButton(
                        buttonText: 'Cancel', 
                        onPress: (){},
                        buttonColor: kDashboardMidBarColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
                      SizedBox(
                        width: 16,
                        ),
                      CustomButton(
                        buttonText: 'Receive', 
                        onPress: (){
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),                   
                    ],
                  ),
                ),
              ),
             Column(
          children: [
           SizedBox(height:64),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Order Details',style: k18Black,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 232,
                      child: Text(
                        'Adding details for this order\nhelps you stay on top of all\nyour orders and means your\nstaff can easily identify\nincoming items.',
                        style: k15BlackNormal,
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Supplier',style: k15BlackDark,),
                        SizedBox(height:5 ,),
                        DropDownInput(
                                  isDarkMode: false,
                                  width: 338,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: (String value){
                                    setState(() {
                                      supplier = value;
                                    });
                                  },
                                  dropdownValue: supplier,
                                  dropdownList: ['Choose a supplier','Flo & Frankie'],
                                ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Supplier Invoice Number ',style: k15BlackDark,),
                            Text('(Optional)',style: k15BlackNormal,),
                          ],
                        ),
                        TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Enter a supplier invoice number',
                                paddingTop: 5,
                                height: 46,
                                width: 338,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Order Number  ',style: k15BlackDark,),
                            Text('This is to help you identify this order',style: k15BlackNormal,),
                          ],
                        ),
                        Text('and must be unique',style: k15BlackNormal,),
                        TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'MAI-8',
                                paddingTop: 5,
                                height: 46,
                                width: 338,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                        Text('20 characters max.',style: k15Blue2,),  
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Note ',style: k15BlackDark,),
                            Text('(Optional)',style: k15BlackNormal,),
                          ],
                        ),
                        TextInputMaxLines(
                                darkMode: false,
                                hideText: false,
                                hintText:'Enter a note for this order',
                                paddingTop: 5,
                                height: 85,
                                width: 338,
                                maxLines: 4,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                        Text('20 characters max.',style: k15Blue2,),        
                      ],
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 20,
                      height: 70,
                      child: Column(
                        children: [
                          SizedBox(height: 35,),
                          Icon(
                            Icons.arrow_forward,
                            size: 25,
                            color:kGrey.withOpacity(0.4)
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Deliver to',style: k15BlackDark,),
                        SizedBox(height: 5,),
                        DropDownInput(
                                  isDarkMode: false,
                                  width: 338,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: (String value){
                                    setState(() {
                                      deliverTo = value;
                                    });
                                  },
                                  dropdownValue: deliverTo,
                                  dropdownList: ['Main Outlet','Choose an outlet'],
                                ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Delivery Date ',style: k15BlackDark,),
                            Text('(Optional)',style: k15BlackNormal,),
                          ],
                        ),
                        SizedBox(height: 5,),
                        ChooseDate(width: 338),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:56),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                    child: Divider(
                      height: 1,
                      color: kAppBarColor,
                      ),
                  ), 
              SizedBox(height:32),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Products',style: k18Black,),
                    
                  ],
                ),
              ),
                 Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 232,
                      child: Text(
                        'Choose products to add to\nthis order, or choose a CSV\nfile of products to import.',
                        style: k15BlackNormal,
                        ),
                      ),
                      Column(
                   children: [
                     Padding(
                        padding: const EdgeInsets.only(right: 48.0),
                        child: Divider(
                          height: 1,
                          color: kAppBarColor,
                          ),
                        ),
                Padding(
                  padding: const EdgeInsets.only(right: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserHeader(
                              height: 63.5,
                              text: 'Product',
                              padding: 20, 
                              width: 186,
                              alignment: MainAxisAlignment.start
                              ),
                      UserHeader(
                              height: 63.5,
                              text: 'Current\nInventory\nMain Outlet',
                              padding: 4, 
                              width: 100,
                              alignment: MainAxisAlignment.end
                              ),
                      UserHeader(
                              height: 63.5,
                              text: 'Quantity',
                              padding: 4, 
                              width: 108,
                              alignment: MainAxisAlignment.end
                              ),
                      UserHeader(
                              height: 63.5,
                              text: 'Supply Price',
                              padding: 4, 
                              width: 108,
                              alignment: MainAxisAlignment.end
                              ),
                      UserHeader(
                              height: 63.5,
                              text: 'Total Cost',
                              padding: 4, 
                              width: 108,
                              alignment: MainAxisAlignment.end
                              ),
                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(right: 48),
                  child: Divider(
                    height: 1,
                    color: kAppBarColor,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 48),
                  child: Container(
                    color: kWhite,
                    width: 696,
                    height: 66,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DashboardSearchBar(
                                      iconData: Icons.search, 
                                      iconText: 'Search or scan to add a product',
                                      width: 676,
                                      padding: 0,
                                      darkMode: false,
                                      ),
                    ),
                   ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 48),
                   child: Container(
                     color: kInputBorderColor,
                     width: 696,
                    height: 69,
                    child: Padding(
                      padding: const EdgeInsets.only(top:12,bottom:12,left:20.0,right: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Add products to this order.',style: k15BlackNormal,),
                          CustomButton(
                          buttonText: 'Add Products from Reorder Points', 
                          onPress: (){},
                          buttonColor: kDashboardMidBarColor, 
                          topPadding: 20, 
                          leftPadding: 30
                          ),
                        ],
                      ),
                    ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:24.0,bottom:24.0),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('\u20B9 0.00',style: k15BlackDark,)
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 48),
                   child: Divider(
                    height: 1,
                    color: kAppBarColor,
                    ),
                 ),
                    SizedBox(
                      height: 72,
                    ),
                   ],
                 ) 
                    ] 
                  )
                ),
                ]
              )
            ]
          )
        )
      )
    );
  }
}