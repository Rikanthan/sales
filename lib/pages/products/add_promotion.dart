import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/promotions.dart';
import 'package:sales/widgets/cards/custom_cards/target_promotion.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_maxlines.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/choose_date_button.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/custom_cards/get_promotion_card.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

enum ChoosePromotionType
{
 basic,
 advanced
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
  String customer = 'Choose the condition';
  ChoosePromotionType _choosePromotionType = ChoosePromotionType.basic;
  bool _isSelected = false;
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
                        Text('Promotion name',style: k15BlackDark,),
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
                        Text('Short Description',style: k15BlackDark,),
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
                        Text('Date',style: k15BlackDark,),   
                        ChooseDate(width: 328),
                      ],
                    ),
                    
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Preview',style: k15BlackDark,),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.money,
                                      color:kAppBarColor,
                                      size: 15,
                                      ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only( bottom: 4.0),
                                          child: Text('Promotion Name',style: k15BlackDark,),
                                        ),
                                        Text('Provide a short description to explain this\npromotion.'
                                          ,style:kMediumHeightTextStyle2),
                                      ],
                                    ),
                                    
                                  ],
                                ),
                                
                               Padding(
                                 padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                 child: Divider(
                                   height: 1,
                                   color: kAppBarColor,
                                   ),
                               ),
                               Text('The name and description will be shown to both\ncashier and customers, to identify and explain\nthe promotion.'
                               ,style: k14Height2,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text('Outlets',style: k15BlackDark,),
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
                            _choosePromotionType = ChoosePromotionType.basic;
                          });
                        },
                        child: Container(
                          width: 348,
                          height: 123,
                          decoration: BoxDecoration(
                            color: Colors.white,
                             border: Border.all(
                               color: _choosePromotionType == ChoosePromotionType.basic ?  kSignInButtonColor : kInputBorderColor,
                               width: 2,
                             ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4)
                            ) 
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:12.0 ,bottom:12.0 ,left:20.0,right: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 4,
                                ),
                                Text('Basic',style: k18Black,),
                                Padding(
                                  padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
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
                            _choosePromotionType = ChoosePromotionType.advanced;
                          });
                        },
                        child: Container(
                          width: 348,
                          height: 123,
                          decoration: BoxDecoration(
                            color: Colors.white,
                             border: Border.all(
                               color:  _choosePromotionType == ChoosePromotionType.advanced ?  kSignInButtonColor : kInputBorderColor,
                               width: 2,
                             ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4)
                            ) 
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:12.0 ,bottom:12.0 ,left:20.0,right: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 4,
                                ),
                                Text('Advanced',style: k18Black,),
                                Padding(
                                  padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
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
                if( _choosePromotionType == ChoosePromotionType.basic)
                 Padding(
                   padding: const EdgeInsets.only(top:32.0,left:232),
                   child: GetPromotionCard(),
                 ),
                 if( _choosePromotionType != ChoosePromotionType.basic)
                Padding(
                  padding: const EdgeInsets.only(left: 280,top:32),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('When a customer',style: k18Black,),
                      SizedBox(width: 12,),
                      DropDownInput(
                                isDarkMode: false,
                                width: 338,
                                height: 46,
                                paddingAll: 12,
                                onPressed: (String value){
                                  setState(() {
                                    customer = value;
                                  });
                                },
                                dropdownValue: customer,
                                dropdownList: ['Choose the condition','Buys the following items','Spend the following money'],
                              ),
                          ],
                        ),
                      ),
                       if( _choosePromotionType != ChoosePromotionType.basic)
                     SizedBox(height:56),
                      if( _choosePromotionType != ChoosePromotionType.basic)
                  Padding(
                    padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                    child: Divider(
                      height: 1,
                      color: kAppBarColor,
                      ),
                  ), 
                   if( _choosePromotionType != ChoosePromotionType.basic)
                    SizedBox(height:32),
                     if( _choosePromotionType != ChoosePromotionType.basic)
                  Padding(
                    padding: const EdgeInsets.only(left:48.0,bottom: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Show Prompt on Sell',style: k18Black,)
                      ],
                    ),
                  ),
                   if( _choosePromotionType != ChoosePromotionType.basic)       
                  Padding(
                    padding: const EdgeInsets.only(left:48.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 232,
                          child: Text(
                            'Choose to see a prompt\nabout this promotion on the\nSell screen when one of the\nincluded products is added to\nthe basket.',
                            style: kMediumTextNormalStyle,
                            ),
                          ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Checkbox(
                                    activeColor: MaterialStateColor.resolveWith((states) => _isSelected ? Colors.white : kAppBarColor),
                                    hoverColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kAppBarColor),
                                    overlayColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kAppBarColor),
                                    fillColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kDashboardSearchBarFillColor),
                                    value: _isSelected,
                                    onChanged: (newValue){
                                      setState(() {
                                        _isSelected = newValue;
                                      });
                                    },
                                    autofocus: false,
                                    visualDensity: VisualDensity.standard,
                                  ),
                                ),
                                Text('Show a prompt about this promotion on the Sell screen',style:kMediumTextNormalStyle)
                            ],
                          )
                      ],
                    ),
                  ),
                 TargetPromotionCard(),
                ]
              )
            ]
          )
        )
      )
    );
  }
}

          
  