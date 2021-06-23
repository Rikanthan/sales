import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/promotions.dart';
import 'package:sales/widgets/buttons/toggle_button.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/choose_date_button.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

enum ChooseCountType
{
 partial,
 full
}
class AddInventoryCount extends StatefulWidget {
  @override
  _AddInventoryCountState createState() => _AddInventoryCountState();
}

class _AddInventoryCountState extends State<AddInventoryCount> {
  String outlet = 'Main Outlet';
  bool isSwitch = true;
  String count = 'including';
  bool isSelected = false;
  ChooseCountType _chooseCountType = ChooseCountType.partial;
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
                        color: isSelected ? kSignInButtonColor: kFooterColor,
                        ), 
                      onTap: (){
                        setState(() {
                          isSwitch = false;
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Promotions()));
                      }
                    ),
                    Text('Add Inventory Count',style: k32Black,)
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
                      Text('Schedule a full or partial inventory count to maintain accurate inventory levels.',style: kMediumTextNormalStyle,),
                        Spacer(),
                      CustomButton(
                        buttonText: 'Save & Exit', 
                        onPress: (){},
                        buttonColor: kDashboardMidBarColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
                      SizedBox(
                        width: 16,
                        ),
                      CustomButton(
                        buttonText: 'Start Count', 
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
                        'Start an inventory count now or\nschedule one for the future.',
                        style: kMediumTextNormalStyle,
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Start Date',style: kMediumTextStyle,),
                        SizedBox(height:5 ,),
                        ChooseDate(width: 318),
                        SizedBox(height: 20,),
                        Text('Outlet',style: kMediumTextStyle,),   
                        DropDownInput(
                          isDarkMode: false,
                          width: 338,
                          height: 46,
                          paddingAll: 12,
                          onPressed: (String value){
                            setState(() {
                              outlet = value;
                            });
                          },
                          dropdownValue: outlet,
                          dropdownList: ['Main Outlet','Select an Outlet'],
                        ),
                      ],
                    ),
                    
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Start Time',style: kMediumTextStyle,),
                         TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'9:00 AM',
                                paddingTop: 5,
                                height: 46,
                                width: 338,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Count Name',style: kMediumTextStyle,),
                               TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Main Outlet - 23 Jun 2021 9:00 AM',
                                paddingTop: 5,
                                height: 46,
                                width: 318,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
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
                    Text('Choose Products to Count',style: k18Black,)
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
                      width: 272,
                      child: Text(
                        'You can include inactive products,\nwhich are not available for sale but\nmay still be in stock.',
                        style: kMediumTextNormalStyle,
                        ),
                      ), 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _chooseCountType = ChooseCountType.partial;
                                  });
                                },
                                child: Container(
                                  width: 328,
                                  height: 131,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                     border: Border.all(
                                       color: _chooseCountType == ChooseCountType.partial ?  kSignInButtonColor : kInputBorderColor,
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
                                        Text('Partial Count',style: k18Black,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                                          child: Divider(
                                            height: 1,
                                            color: kAppBarColor,
                                            ),
                                        ),
                                        Text('Specify the products to include in this',style: kMediumTextNormalStyle,),
                                        Text('inventory count.',style: kMediumTextNormalStyle,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                               GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _chooseCountType = ChooseCountType.full;
                                  });
                                },
                                child: Container(
                                  width: 330,
                                  height: 131,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color:  _chooseCountType == ChooseCountType.full ?  kSignInButtonColor : kInputBorderColor,
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
                                        Text('Full Count',style: k18Black,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                                          child: Divider(
                                            height: 1,
                                            color: kAppBarColor,
                                            ),
                                        ),
                                        Text('Include all the products in this',style: kMediumTextNormalStyle,),
                                        Text('inventory count.',style: kMediumTextNormalStyle,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                           Padding(
                                padding: const EdgeInsets.only(top:40.0,bottom: 16.0),
                                child: Row(
                                  children: [
                                    Text('0 products will be counted, $count inactive products.',style: k18Black,),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ToggleButton(
                                        height: 35,
                                        width: 63,
                                        isSwitch: isSwitch,
                                        onToggle: (val) {
                                              setState(() {
                                                isSwitch = val;
                                                isSwitch ? count = 'including' : count = 'excluding'; 
                                              });
                                            },
                                        ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text('Include inactive products',style: kMediumTextNormalStyle,),
                                ],
                              ),
                               if( _chooseCountType != ChooseCountType.partial) 
                                TextInput(
                                  darkMode: false,
                                  hideText: false,
                                  hintText:'Search for suppliers,brands,types,tags, or SKUs.',
                                  paddingTop: 20,
                                  height: 42,
                                  width: 652,
                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                    onChange: (val) { 
                                    },
                                  ),
                                  if( _chooseCountType != ChooseCountType.partial) 
                                  Container(
                                    color: Colors.transparent,
                                    width: 652,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:24.0,bottom: 20.0),
                                          child: Image.asset(
                                            'assets/images/new-inventory-count.png',
                                            width: 150,
                                            height: 127.08,
                                            ),
                                        ),
                                        Text('Use filters to include products in this count',style: k15Blue2,),
                                        SizedBox(
                                          height:68
                                        )
                                      ],
                                    )
                                  )
                                ],
                              ),
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

          
  