import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_maxlines.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/choose_date_button.dart';
import 'package:sales/widgets/buttons/choose_file_button.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/outlet_gredient_button.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

enum ProductClicked
{
  chooseProducts,
  importViaCSV
}
class OrderStock extends StatefulWidget {
  @override
  _OrderStockState createState() => _OrderStockState();
}

class _OrderStockState extends State<OrderStock> {
  String deliverTo = 'Main Outlet';
  String supplier = 'Choose a supplier';
  bool isSwitch = true;
  String tax = 'Default Tax for this Outlet';
  String size = 'Size';
  String color = 'Colour';
  ProductClicked _productClicked = ProductClicked.chooseProducts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
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
                        color: kInputBorderColor,
                        ), 
                      onTap: (){
                      }
                    ),
                    Text('New Purchase Order',style: k32Black,)
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
                      Text('Add, products to this purchase order to keep track of inbound inventory.',style: kMediumTextNormalStyle,),
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
                        buttonText: 'Save', 
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
                        style: kMediumTextNormalStyle,
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Supplier',style: kMediumTextStyle,),
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
                            Text('Supplier Invoice Number ',style: kMediumTextStyle,),
                            Text('(Optional)',style: kMediumTextNormalStyle,),
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
                            Text('Order Number  ',style: kMediumTextStyle,),
                            Text('This is to help you identify this order',style: kMediumTextNormalStyle,),
                          ],
                        ),
                        Text('and must be unique',style: kMediumTextNormalStyle,),
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
                            Text('Note ',style: kMediumTextStyle,),
                            Text('(Optional)',style: kMediumTextNormalStyle,),
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
                    //SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Deliver to',style: kMediumTextStyle,),
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
                            Text('Delivery Date ',style: kMediumTextStyle,),
                            Text('(Optional)',style: kMediumTextNormalStyle,),
                          ],
                        ),
                        SizedBox(height: 5,),
                        ChooseDate(width: 338),
                        SizedBox(height: 20,),
                        Text('Preview',style: kMediumTextStyle,),
                        SizedBox(height: 5,),
                        Container(
                          height: 216,
                          width:338,
                          color:Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.local_shipping,
                                      color:kAppBarColor,
                                      size: 15,
                                      ),
                                    Text('MAI-9\nLet us know when it\'s due so yur can see\nwhat\'s in-transit.'
                                    ,style:k14Height)
                                  ],
                                ),
                               Padding(
                                 padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                 child: Divider(
                                   height: 1,
                                   color: kAppBarColor,
                                   ),
                               ),
                               Text('This number and delivery date will be visible to\nyour cashiers and managers to help them\nidentify inbound inventory'
                               ,style: k14Height,
                                    )
                                  ],
                                ),
                              ),
                            )
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
                    Text('Products',style: k18Black,)
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
                        style: kMediumTextNormalStyle,
                        ),
                      ), 
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _productClicked = ProductClicked.chooseProducts;
                          });
                        },
                        child: Container(
                          width: 348,
                          height: 163,
                          decoration: BoxDecoration(
                            color: Colors.white,
                             border: Border.all(
                               color: _productClicked == ProductClicked.chooseProducts ?  kSignInButtonColor : kInputBorderColor,
                               width: 2,
                             ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4)
                            ) 
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 4,
                                ),
                                Text('Choose Products',style: k18Black,),
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                  child: Divider(
                                    height: 1,
                                    color: kAppBarColor,
                                    ),
                                ),
                                Text('Search,scan, or use reorder points to add',style: kMediumTextNormalStyle,),
                                Text('products',style: kMediumTextNormalStyle,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _productClicked = ProductClicked.importViaCSV;
                          });
                        },
                        child: Container(
                          width: 348,
                          height: 163,
                          decoration: BoxDecoration(
                            color: Colors.white,
                             border: Border.all(
                               color:  _productClicked == ProductClicked.importViaCSV ?  kSignInButtonColor : kInputBorderColor,
                               width: 2,
                             ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4)
                            ) 
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 4,
                                ),
                                Text('Import via CSV',style: k18Black,),
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                  child: Divider(
                                    height: 1,
                                    color: kAppBarColor,
                                    ),
                                ),
                                Text('Import products by uploading a CSV file.',style: kMediumTextNormalStyle,),
                              ],
                            ),
                          ),
                        ),
                      ),
                     
                    ] 
                  )
                ),
                 _productClicked == ProductClicked.chooseProducts ?
                 Column(
                   children: [
                     Padding(
                        padding: const EdgeInsets.only(left: 280,top:40.0,right: 48.0),
                        child: Divider(
                          height: 1,
                          color: kAppBarColor,
                          ),
                        ),
                Padding(
                  padding: const EdgeInsets.only(left:280.0,right: 48),
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
                  padding: const EdgeInsets.only(left:280.0,right: 48),
                  child: Divider(
                    height: 1,
                    color: kAppBarColor,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:280.0,right: 48),
                  child: Container(
                    color: Colors.white,
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
                   padding: const EdgeInsets.only(left:280.0,right: 48),
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
                          Text('Add products to this order.',style: kMediumTextNormalStyle,),
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
                   padding: const EdgeInsets.only(top:24.0,bottom:24.0,right:68.0,left: 280),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('\u20B9 0.00',style: kMediumTextStyle,)
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:280.0,right: 48),
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
                 :
                 Padding(
                   padding: const EdgeInsets.only(top:40.0,left: 280,bottom: 72),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       ChooseFile(
                          buttonText: 'Choose file',
                          onPress: (){}, 
                          topPadding: 3,
                          leftPadding: 10,
                          width: 86,
                          isButtonDisable: false,
                          ),
                        SizedBox(
                          width: 12,
                        ),
                        Text('No file chosen',style: kMediumTextNormalStyle,)
                     ],
                   ),
                 )
                ]
              )
            ]
          )
        )
      )
    );
  }
}

          
  