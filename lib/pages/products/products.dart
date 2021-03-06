import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/import_products.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/custom_cards/show_products.dart';
import 'package:sales/widgets/cards/popup_cards/add_products.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  String productType ='All Types';
  String supplies = 'All Suppliers';
  String brands = 'All Brands';
  String status = 'Active';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ProductDrawer(productsClicked: ProductsClicked.products,),
      body:SingleChildScrollView(
        child: Container(
          color:kInputBorderColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(backgroundColor:kWhite,isDarkMode: false,text: 'Products'),
              MidButtonBar(
                text: 'Add, view and edit your products all in one place.                                                                                                                                ', 
                addBlueButton: true,
                blueButtonText: 'Import',
                blueOnTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (_)=> ImportProducts()));
                }, 
                greenButtonText: 'Add Product',
                greenOnTap: (){
                  showDialog(context: context, builder: (_)=>AddProductsPopup());
                }
                ),
              Container(
                color:kWhite,
                child:
                   Padding(
                      padding: const EdgeInsets.only(left: 48,right: 48,top:24,bottom:12),
                     child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:4.0),
                                child: Text(
                                  'Search for Products',
                                  style: k15BlackDark,
                                  ),
                              ),
                                DashboardSearchBar(
                                  iconData: Icons.search, 
                                  iconText: 'Enter name,SKU,handle or supplier code',
                                  width: 452,
                                  padding: 0,
                                  darkMode: false
                                  )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Text(
                                  'Product Type',
                                  style: k15BlackDark,
                                  ),
                              ),
                                DropDownInput(
                                  isDarkMode: false,
                                  width: 214,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    productType = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: productType,
                                  dropdownList: ['All Types','Fashion'],
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
                                  'Tags',
                                  style: k15BlackDark,
                                  ),
                              ),
                              TextInput(
                                darkMode: false,
                                validate:(value){},
                                onChange: (value){},
                                paddingTop: 4,
                                hideText: false,
                                height: 42,
                                width:210,
                                hintText: 'Enter Tags',
                                )  
                              ],
                            )
                          ]
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:12.0),
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
                                    'Supplier',
                                    style: k15BlackDark,
                                    ),
                                ),
                                  DropDownInput(
                                    isDarkMode: false,
                                    width: 293.33,
                                    height: 46,
                                  paddingAll: 12,
                                    onPressed: (String newValue) 
                                                    {
                                                      setState(() {
                                                      supplies = newValue;
                                                      }
                                                    );
                                                  },
                                    dropdownValue: supplies,
                                    dropdownList: ['All Suppliers','Flo & Frankie'],
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
                                    'Brand',
                                    style: k15BlackDark,
                                    ),
                                ),
                                  DropDownInput(
                                    isDarkMode: false,
                                    width: 293.33,
                                    height: 46,
                                  paddingAll: 12,
                                    onPressed: (String newValue) 
                                                    {
                                                      setState(() {
                                                      brands = newValue;
                                                      }
                                                    );
                                                  },
                                    dropdownValue: brands,
                                    dropdownList: ['All Brands','Cluse','Lilya','Nude Lacy','Quay'],
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
                                    'Status',
                                    style: k15BlackDark,
                                    ),
                                ),
                                  DropDownInput(
                                    isDarkMode: false,
                                    width: 293.33,
                                    height: 46,
                                  paddingAll: 12,
                                    onPressed: (String newValue) 
                                                    {
                                                      setState(() {
                                                      status = newValue;
                                                      }
                                                    );
                                                  },
                                    dropdownValue: status,
                                    dropdownList: ['Active','Inactive','All Statuses'],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:[
                              CustomButton(
                                buttonText: 'Search',
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
                ShowProducts()
            ],
          )
        ),
      )
    );
  }
}