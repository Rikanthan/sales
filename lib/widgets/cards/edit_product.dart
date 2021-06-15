import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/transparent_text_input.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/delete_icon_button.dart';
import 'package:sales/widgets/buttons/toggle_button.dart';
import 'package:sales/widgets/cards/description.dart';
import 'package:sales/widgets/cards/image_upload.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

class EditProduct extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<EditProduct> {
  String productType = 'Fashion';
  bool isSwitch = true;
  bool isClicked = false;
  String brand = 'Nude Lacy';
  String supplier = 'Flo & Frankie';
  bool _isSelected = true;
  String tax = 'Default Tax for this Outlet';
  String size = 'Size';
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
                    Text('Edit Product',style: k32Black,)
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
                      Text('Add, view and edit your products all in one place.',style: kMediumTextNormalStyle,),
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
                        onPress: (){},
                        buttonColor: kSignInButtonColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
                      
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('General',style: k18Black,)
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
                        'Change general information\nfor this product.',
                        style: kMediumTextNormalStyle,
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Name',style: kMediumTextStyle,),
                        TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Audhild Tee',
                                paddingTop: 5,
                                height: 46,
                                width: 338,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Brand',style: kMediumTextStyle,),
                        DropDownInput(
                                  isDarkMode: false,
                                  width: 338,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    brand = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: brand,
                                  dropdownList: ['Cluse','Lilya','Nude Lacy','Quay'],
                                ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,top:20,right: 48.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      DescriptionCard(),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0,bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Tags',style: kMediumTextStyle,),
                            SizedBox(width: 8,),
                            Text('Describe the product using relevant keywords for easy filtering.',style: kMediumTextNormalStyle,)
                          ],
                        ),
                      ),
                      Container(
                        width: 696,
                        height: 46,
                        decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.7,
                          color: isSwitch ? kFilterTextColor : kBlackOpacity.withOpacity(0.2),
                                ),
                          color:Colors.white
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 4,),
                            DeleteIconButton(
                              buttonText: 'shirt', onPress: ()
                              {
                                setState(() {
                                      isClicked = true;
                                    });
                                    print(isClicked);
                              }
                            ),
                             TransparentTextInput(
                                hideText: false,
                                hintText:'Enter a tag name',
                                paddingTop: 5,
                                height: 46,
                                width: 608,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                    setState(() {
                                      isClicked = true;
                                    });
                                  }, 
                                ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top:20.0,bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Product Type',style: kMediumTextStyle,),
                            SizedBox(width: 8,),
                            Text('Categorise your products with types that can be used to filter sales and inventory reports.',style: kMediumTextNormalStyle,)
                          ],
                        ),
                      ),
                       DropDownInput(
                                  isDarkMode: false,
                                  width: 696,
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
                                  dropdownList: ['Choose a product type','Add new product type','Fashion'],
                                ),
                        SizedBox(
                          height: 20,
                        ),
                        ToggleButton(
                            isSwitch: isSwitch, 
                            height: 36, 
                            width: 68, 
                            onToggle: (value)
                              {
                                setState(() {
                                  isSwitch = value;
                                });
                              }
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top:12.0,bottom: 5),
                            child: Text(
                              'Sell on Point-of-Sale',
                              style:kMediumTextStyle
                              ),
                          ),
                          Text(
                            'Make this product active and available\nfor sale in-store',
                            style:kMediumTextNormalStyle
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,bottom: 5),
                            child: Text(
                              'Upload Images',
                              style:kMediumTextStyle
                              ),
                          ),
                          Text(
                            'Drag to rearrange. Drop an image outside of the upload area to delete.',
                            style:kMediumTextNormalStyle
                            ),
                          ImageUpload(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,top: 44,bottom: 44),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Inventory',style: k18Black,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 232,
                      child: Text(
                        'The type of product we\nchoose determines how we\nmanage inventory\nand reporting.',
                        style: kMediumHeightTextStyle,
                        )
                      ),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Supplier',style: kMediumTextStyle,),
                        DropDownInput(
                                  isDarkMode: false,
                                  width: 226.67,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    supplier = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: supplier,
                                  dropdownList: ['Flo & Frankie',''],
                                ),
                      ],
                    ),
                    SizedBox(width: 8,),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Supplier Code',style: kMediumTextStyle,),
                        TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Enter supplier code',
                                paddingTop: 5,
                                height: 46,
                                width: 226.67,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                      ],
                    ),
                     SizedBox(width: 8,),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Supply Price',style: kMediumTextStyle,),
                        TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Rs 18.00',
                                paddingTop: 5,
                                height: 46,
                                width: 226,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                      ],
                    ), 
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 40.0,top:5),
                child: Row(
                crossAxisAlignment: _isSelected ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                        activeColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor),
                        focusColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor),
                        value: _isSelected,
                         onChanged: (newValue){
                           setState(() {
                             _isSelected = newValue;
                           });
                         }
                        ),
                  SizedBox(
                    width:12
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height:5),
                      Text(
                        'Track Inventory for this product',
                            style: TextStyle(
                                fontFamily:'Lato',
                                fontSize: 18,
                                color: kAppBarColor,
                                  ),
                              ),
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Text('Manage orders, transfers and returns accurately, and get reports and insights on this product\'s performance.',
                         style: k14Black2,
                         ),
                      ),
                    ],
                  ),      
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,top: 44,bottom: 44),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
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
                        'Tax',
                        style: k18Black,
                        )
                      ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 237,
                          height: 51.5,
                          child: Padding(
                            padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                            child: Text('Outlet',style:kMediumTextStyle),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 237,
                          child: Padding(
                            padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                            child: Text('Tax',style:kMediumTextStyle),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0,bottom: 20),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 280,right:88),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Main Outlet',style: kMediumTextNormalStyle,),
                    DropDownInput(
                                  isDarkMode: false,
                                  width: 418.92,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    tax = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: tax,
                                  dropdownList: ['Default Tax for this Outlet','No Tax (0%)'],
                                ),
                       ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,bottom: 44,top:64),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
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
                        'Price',
                        style: k18Black,
                        )
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 4.0),
                          child: Text('Supply Price',style:kMediumTextStyle),
                        ),
                        SizedBox(width: 550,),
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 4.0),
                          child: Text('Rs 18.00',style:kMediumTextNormalStyle),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Markup',style:kMediumTextStyle),
                          TextInput(
                              darkMode: false,
                              hideText: false,
                              hintText:'177.22%',
                              paddingTop: 5,
                              height: 46,
                              width: 308,
                              validate: (String val) => val.isEmpty? 'This field is required' : null,
                                onChange: (val) { 
                                },
                              ),
                        ],
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0,bottom: 20,top:4),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Retail Price',style:kMediumTextStyle),
                               Text('Excluding Tax',style:kMediumTextNormalStyle),
                            ],
                          ),
                          TextInput(
                              darkMode: false,
                              hideText: false,
                              hintText:'Rs 49.90',
                              paddingTop: 5,
                              height: 46,
                              width: 308,
                              validate: (String val) => val.isEmpty? 'This field is required' : null,
                                onChange: (val) { 
                                },
                              ),
                        ],
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,bottom: 44,top:64),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Variants',style: k18Black,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose up to three variable\nattributes for this product to\ncreate and manage SKUs and\ntheir inventory levels.',
                      style: kMediumTextNormalStyle,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Attribute (e.g. Colour)',style: kMediumTextStyle,),
                        SizedBox(height: 5,),
                        DropDownInput(
                                  isDarkMode: false,
                                  width: 218,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    size = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: size,
                                  dropdownList: ['Size','Colour','Material'],
                                ),
                        Padding(
                          padding: const EdgeInsets.only(top:32.0,left: 20),
                          child: TextButton.icon(
                            onPressed: (){},
                             icon: Icon(
                               Icons.add,
                               size: 15,
                               color: kSignInButtonColor,
                               ),
                              label: Text(
                                  'Add Another Attributes',
                                  style: k15Green,
                                ) 
                              ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Value (e.g. Red,Blue,Green)',style: kMediumTextStyle,),
                         SizedBox(height: 5,),
                        Container(
                        width: 470,
                        height: 46,
                        decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.7,
                          color: isSwitch ? kFilterTextColor : kBlackOpacity.withOpacity(0.2),
                                ),
                          color:Colors.white
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 4,),
                            DeleteIconButton(
                              buttonText: '8', onPress: ()
                              {
                              }
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: DeleteIconButton(
                                buttonText: '10', onPress: ()
                                {
                                }
                              ),
                            ),
                            DeleteIconButton(
                              buttonText: '12', onPress: ()
                              {
                              }
                            ),
                             TransparentTextInput(
                                hideText: false,
                                hintText:'',
                                paddingTop: 5,
                                height: 46,
                                width: 265,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                    setState(() {
                                      isClicked = true;
                                    });
                                  }, 
                                ),   
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top:32.0,left: 20),
                          child: TextButton.icon(
                            onPressed: (){},
                             icon: Icon(
                               Icons.edit,
                               size: 15,
                               color: kDashboardIconColor,
                               ),
                              label: Text(
                                  'Edit Value Names',
                                  style: k15BlueDark,
                                ) 
                              ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ),
      )
    );
  }
}