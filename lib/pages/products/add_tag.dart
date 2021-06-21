import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/promotions.dart';
import 'package:sales/pages/products/stock_control.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_maxlines.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/choose_date_button.dart';
import 'package:sales/widgets/buttons/choose_file_button.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

enum ProductClicked
{
  chooseProducts,
  importViaCSV
}
class AddPromotion extends StatefulWidget {
  @override
  _AddPromotionState createState() => _AddPromotionState();
}

class _AddPromotionState extends State<AddPromotion> {
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
                        color: !isSwitch ? kSignInButtonColor: kInputBorderColor,
                        ), 
                      onTap: (){
                        setState(() {
                          isSwitch = false;
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Promotions()));
                      }
                    ),
                    Text('New Promotion',style: k32Black,)
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
                      Text('Set special offers and discounts for your customers.',style: kMediumTextNormalStyle,),
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
                        'Name the promotion and\nspecify the dates for when it\nwill apply.',
                        style: kMediumTextNormalStyle,
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Promotion name',style: kMediumTextStyle,),
                        SizedBox(height:5 ,),
                         TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Enter Promotion Name',
                                paddingTop: 5,
                                height: 46,
                                width: 338,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                        SizedBox(height: 8,),
                        Text('Max characters: 30',style: k15Blue2,), 
                        SizedBox(height: 20,),
                        Text('Short Description',style: kMediumTextStyle,),
                        TextInputMaxLines(
                                darkMode: false,
                                hideText: false,
                                hintText:'Provide a shore description to explain this\npromotion.',
                                paddingTop: 5,
                                height: 85,
                                width: 328,
                                maxLines: 4,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                        SizedBox(height: 8,),
                        Text('Max characters: 70',style: k15Blue2,), 
                        SizedBox(height: 20,),
                        Text('Date',style: kMediumTextStyle,),   
                        ChooseDate(width: 328),
                      ],
                    ),
                    
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Preview',style: kMediumTextStyle,),
                        SizedBox(height: 5,),
                        Container(
                          height: 202,
                          width:348,
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
                                      Icons.money,
                                      color:kAppBarColor,
                                      size: 15,
                                      ),
                                    Text('Promotion Name',style: kMediumTextStyle,),
                                    
                                  ],
                                ),
                                Text('Provide a short description to explain this\npromotion.'
                                    ,style:k14Height),
                               Padding(
                                 padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                 child: Divider(
                                   height: 1,
                                   color: kAppBarColor,
                                   ),
                               ),
                               Text('The name and description will be shown to both\ncashier and customers, to identify and explain\nthe promotion.'
                               ,style: k14Height,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text('Outlets',style: kMediumTextStyle,),
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
                                        dropdownList: ['Main Outlet','Select an Outlet'],
                                      ),
                            SizedBox(height: 20,),
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
                    Text('Type of Promotion',style: k18Black,)
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
                        'Set up the type of promotion\nyou would like to run.',
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
                          height: 117,
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
                                Text('Basic',style: k18Black,),
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                  child: Divider(
                                    height: 1,
                                    color: kAppBarColor,
                                    ),
                                ),
                                Text('Offer customers a discount',style: kMediumTextNormalStyle,),
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
                          height: 117,
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
                                Text('Advanced',style: k18Black,),
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                  child: Divider(
                                    height: 1,
                                    color: kAppBarColor,
                                    ),
                                ),
                                Text('Offer customers a discount or gift, based on',style: kMediumTextNormalStyle,),
                                Text('what they buy or how much they spend.',style: kMediumTextNormalStyle,),
                              ],
                            ),
                          ),
                        ),
                      ),
                     
                    ] 
                  )
                ),
                 //_productClicked == ProductClicked.chooseProducts 
                 
                ]
              )
            ]
          )
        )
      )
    );
  }
}

          
  