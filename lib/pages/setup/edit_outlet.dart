import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/setting_input_text.dart';
import 'package:sales/widgets/TextInput/settings_cell.dart';
import 'package:sales/widgets/TextInput/settings_drop_down.dart';
import 'package:sales/widgets/TextInput/settings_gredient.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/save_button.dart';
import 'package:sales/widgets/buttons/settings_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

enum Answer{
  yes,no
}

class EditOutlet extends StatefulWidget {
 
  @override
  _EditOutletState createState() => _EditOutletState();
}

class _EditOutletState extends State<EditOutlet> {
  
  @override
  Widget build(BuildContext context) {
    String country = 'Select a country';
    String timeZone = '(GMT+05:30)';
    bool negativeInventory = false;
    bool addCustomer  = false;
    String tax = 'No Tax (0%)';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked:SetupClicked.outlets ),
      body:SingleChildScrollView(
        child: Container(
          color:kWhite,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(
                                        top:20.0,
                                        bottom: 20.0,
                                        left:30.0 ,
                                        right: 30.0
                                        ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:15.0,bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Setup',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color:kLightBlue,
                              decoration: TextDecoration.none,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: kLightBlue
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            '>',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color:kLightGrey,
                              ),
                          ),
                          Text(
                            'Outlets and Registers',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color:kLightBlue,
                              decoration: TextDecoration.none,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: kLightBlue
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            'Edit Outlet',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color:kLightGrey,
                              ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Text(
                        'Edit Outlet',
                        style: TextStyle(
                          fontSize: 23.52,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SettingsGredientHeader(
                      cellType: CellType.both ,
                      width: 964 ,
                      text: 'Details',
                      ),
                    Row(
                      children: [
                        Container(
                          width:480,
                          height:252,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:kCustomWhite, width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                )
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SettingsCell(
                                     height: 24,
                                      width: 150 , 
                                      textSpan: false, 
                                      text: 'Outlet name',
                                      ),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: 'Main Outlet'
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SettingsCell(
                                      height: 24, 
                                      width: 150 , 
                                      textSpan: false, 
                                      text: 'Default sales tax',
                                      ),
                                     SettingDropDown(
                                        width: 190,
                                        height: 28,
                                        paddingAll: 4,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          tax = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: tax,
                                        dropdownList: [
                                                     'No Tax (0%)',
                                                     'Select Sales Tax',
                                                     'Add Sales Tax'
                                                     ],
                                        ),
                                      SizedBox(width:5),
                                      Text(
                                        'Add sales tax',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: kLightBlue
                                            ),
                                          )  
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0, left: 150,bottom: 5),
                                  child: Text(
                                          'The default sales tax will be applied to\nproducts sold at this outlet. You can override\nthe default sales tax when editing a product.',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF666666)
                                              ),
                                            ),
                                ),
                                SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     SettingsCell(
                                                height: 24, 
                                                width: 150 ,
                                                 textSpan: false, 
                                                 text: 'Order number prefix',),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: 'MAI'
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     SettingsCell(
                                                height: 24,
                                                 width: 150 , 
                                                 textSpan: false, 
                                                 text: 'Order number',
                                                 ),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: '31'
                                    )
                                  ],
                                ),
                                 SizedBox(height: 10,),
                                 
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:479,
                          height:252,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:kCustomWhite, width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SettingsCell(
                                                height: 40, 
                                                width: 150 , 
                                                textSpan: true, 
                                                text: 'Supplier return\nprefix'
                                                ),
                                        SettingTextInput(
                                            height: 28,
                                            width: 247,
                                            value: 'MAI'
                                          )
                                      ],
                                    ),
                                    SizedBox(height:10),
                                   Row(
                                      children: [
                                        SettingsCell(
                                          height: 40, 
                                          width: 150 , 
                                          textSpan: true, 
                                          text: 'Supplier return\nnumber'
                                          ),
                                         SettingTextInput(
                                            height: 28,
                                            width: 247,
                                            value: '1'
                                          )
                                      ],
                                    ),
                                     SizedBox(height:10),                            
                                ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SettingsGredientHeader(
                              cellType: CellType.both ,
                              width: 964 ,
                              text: 'Sell Screen Prompts',
                              ),
                    Container(
                       width:962,
                        height:130,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:kCustomWhite, width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                )
                              ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                                         top: 20,
                                                         left: 20.0,
                                                          right: 20.0 ,
                                                          bottom: 10.0),
                                child: Row(
                                  children: [
                                     SettingsCell(
                                              height: 24,
                                              width: 150 , 
                                              textSpan: false, 
                                              text: 'Negative inventory'
                                              ),
                                     Checkbox(
                                        value: negativeInventory,
                                        onChanged: (bool value){
                                          setState(() {
                                            negativeInventory = value;
                                            print(negativeInventory);
                                          });
                                        },
                                      ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Warn sell screen users when they are about to sell more inventory than is\navailable',
                                      style: TextStyle(
                                        color: kBlackOpacity,
                                        fontFamily: 'Roboto',
                                        fontSize: 14
                                        ),
                                    )
                                  ],
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(left: 20.0, right: 20.0 ,bottom: 10.0),
                                child: Row(
                                  children: [
                                     SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Add customer'),
                                     Checkbox(
                                       activeColor: MaterialStateColor
                                                              .resolveWith(
                                                                        (states) => addCustomer ? kWhite : 
                                                                                    kAppBarColor
                                                                                    ),
                                        hoverColor: MaterialStateColor
                                                                .resolveWith(
                                                                        (states) => addCustomer ? kSignInButtonColor :
                                                                                     kAppBarColor
                                                                                     ),
                                    overlayColor: MaterialStateColor
                                                                .resolveWith(
                                                                        (states) => addCustomer ? kSignInButtonColor : 
                                                                                      kAppBarColor
                                                                                      ),
                                    fillColor: MaterialStateColor
                                                                .resolveWith(
                                                                        (states) => addCustomer? kSignInButtonColor : 
                                                                                      kDashboardSearchBarFillColor
                                                                                      ),
                                        value: addCustomer,
                                        onChanged: (bool newValue){
                                          setState(() {
                                            addCustomer = newValue;
                                          });
                                        },
                                        autofocus: false,
                                        visualDensity: VisualDensity.standard,
                                      ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Warn sell screen users when they haven\'t added a customer to the\n sale.',
                                      style: TextStyle(
                                        color: kBlackOpacity,
                                        fontFamily: 'Roboto',
                                        fontSize: 14
                                        ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                    ),
                     SizedBox(
                        height: 20,
                        ),
                    SettingsGredientHeader(
                                        cellType: CellType.both ,
                                        width: 964 ,
                                        text: 'Physical Address and Contact Details',
                                        ),
                    Row(
                      children: [
                        Container(
                          width:480,
                          height:355,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:kCustomWhite, width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                )
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SettingsCell(
                                            height: 24, 
                                            width: 150 , 
                                            textSpan: false, 
                                            text: 'Street',
                                            ),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: ''
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SettingsCell(
                                            height: 24, 
                                            width: 150 , 
                                            textSpan: false, 
                                            text: 'Street',
                                            ),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: ''
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SettingsCell(
                                            height: 24,
                                             width: 150 , 
                                             textSpan: false, 
                                             text: 'Suburb',
                                             ),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: ''
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SettingsCell(
                                          height: 24, 
                                          width: 150 , 
                                          textSpan: false,
                                          text: 'City',
                                          ),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: ''
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SettingsCell(
                                          height: 24, 
                                          width: 150 , 
                                          textSpan: false, 
                                          text: 'Postcode',
                                          ),
                                    SettingTextInput(
                                      height: 28,
                                       width: 75,
                                      value: ''
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SettingsCell(
                                            height: 24, 
                                            width: 150 , 
                                            textSpan: false, 
                                            text: 'State',
                                            ),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: ''
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SettingsCell(
                                            height: 24, 
                                            width: 150 , 
                                            textSpan: false, 
                                            text: 'Country',
                                            ),
                                     SettingDropDown(
                                        width: 200,
                                        height: 28,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          country = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: country,
                                        dropdownList: ['Select a country','Sri Lanka','India','UK'],
                                        ),
                                  ],
                                ), 
                                SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SettingsCell(
                                            height: 24, 
                                            width: 150 , 
                                            textSpan: false, 
                                            text: 'Time zone',
                                            ),
                                     SettingDropDown(
                                        width: 200,
                                        height: 28,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          timeZone = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: timeZone,
                                        dropdownList: [
                                                '(GMT+05:30)',
                                                '(GMT+05:00)',
                                                '(GMT+04:00)',
                                                '(GMT+04:30)'
                                                ],
                                        ),     
                                  ],
                                ), 
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:479,
                          height:355,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:kCustomWhite, width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SettingsCell(
                                              height: 24, 
                                              width: 150 , 
                                              textSpan: true, 
                                              text: 'Email'
                                              ),
                                        SettingTextInput(
                                            height: 28,
                                            width: 247,
                                            value: 'name@domain.com'
                                          )
                                      ],
                                    ),
                                    SizedBox(height:10),
                                   Row(
                                      children: [
                                        SettingsCell(
                                              height: 24, 
                                              width: 150 , 
                                              textSpan: true, 
                                              text: 'Phone'
                                              ),
                                         SettingTextInput(
                                            height: 28,
                                            width: 247,
                                            value: ''
                                          )
                                      ],
                                    ),
                                     SizedBox(height:10), 
                                    Row(
                                      children: [
                                        SettingsCell(
                                            height: 24, 
                                            width: 150 , 
                                            textSpan: true, 
                                            text: 'Twitter'
                                            ),
                                         SettingTextInput(
                                            height: 28,
                                            width: 247,
                                            value: ''
                                          )
                                      ],
                                    ),                           
                                ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Divider(
                        thickness: 1,
                        color: kInputBorderColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SettingsButton(
                          buttonText: 'Cancel',
                          onPress: (){},
                          topPadding: 9,
                          leftPadding: 24
                          ),
                          SizedBox(width:10),
                          SaveButton(
                          buttonText: 'Save Outlet',
                          onPress: (){},
                          topPadding: 9,
                          leftPadding: 24,
                           width: 127.03,
                          ),
                      ],
                    ),
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
