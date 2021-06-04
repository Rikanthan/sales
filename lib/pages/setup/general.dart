import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/setting_input_text.dart';
import 'package:sales/widgets/TextInput/settings_cell.dart';
import 'package:sales/widgets/TextInput/settings_drop_down.dart';
import 'package:sales/widgets/TextInput/settings_gredient.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/settings_button.dart';
import 'package:sales/widgets/cards/address_information.dart';
import 'package:sales/widgets/cards/basic_information.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

enum Answer{
  yes,no
}

class General extends StatefulWidget {
 
  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  
  @override
  Widget build(BuildContext context) {
    String currency = 'Indian Rupees';
    String timeZone = '(GMT+05:30)';
    String tax = 'Tax exclusive';
    String printer = 'Continuous feed';
    String sku = 'Generate by Sequence Number';
    String sellScreen = 'Only allow SKUs';
    String userSwitching = '';
    Answer _answer = Answer.yes;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked:SetupClicked.general ),
      body:SingleChildScrollView(
        child: Container(
          color:Colors.white,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(top:20.0,bottom: 20.0,left:30.0 ,right: 30.0),
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
                              color:Color(0xFF0066CC),
                              decoration: TextDecoration.none,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Color(0xFF0066CC)
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
                              color:Color(0xFF999999),
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            'General',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color:Color(0xFF999999),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Text(
                        'General Setup',
                        style: TextStyle(
                          fontSize: 23.52,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SettingsGredientHeader(text: 'Store Settings',),
                    Row(
                      children: [
                        Container(
                          width:480,
                          height:400,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid
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
                                   SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Store name',),
                                    SettingTextInput(
                                      height: 26,
                                       width: 245,
                                      value: 'shop'
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Private URL',),
                                        Text(
                                            'shop23.vendhq.com',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color:Color(0xFF333333),
                                              fontFamily: 'Lato',
                                              ),
                                            ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Default currency',),
                                    SettingDropDown(
                                        width: 200,
                                        height: 28,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          currency = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: currency,
                                        dropdownList: ['Indian Rupees','Srilankan Rupees'],
                                        )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Time zone',),
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
                                        dropdownList: ['(GMT+05:30)','(GMT+05:00)'],
                                        ),
                                        
                                  ],
                                ),
                                 SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Display prices',),
                                    SettingDropDown(
                                        width: 200,
                                        height: 28,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          tax = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: tax,
                                        dropdownList: ['Tax exclusive','Tax inclusive'],
                                        ),                                        
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:479,
                          height:400,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid
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
                                        SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Label printer format'),
                                        SettingDropDown(
                                        width: 245,
                                        height: 22,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          printer = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: printer,
                                        dropdownList: ['Continuous feed','Continuous feed (wide)','Continuous dual (2x1)','Avery Sheet of 3 X 11','Avery Sheet of 5 X 13','US Letter of 3 X 10','Sheet of 4 X 14'],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height:10),
                                   Row(
                                      children: [
                                        SettingsCell(height: 24, width: 150 , textSpan: false, text: 'SKU generation'),
                                        SettingDropDown(
                                        width: 245,
                                        height: 22,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          sku = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: sku,
                                        dropdownList: ['Generate by Sequence Number','Generate by Name'],
                                        ),
                                      ],
                                    ),
                                     SizedBox(height:10),
                                   Row(
                                      children: [
                                        SettingsCell(height: 38, width: 150 , textSpan: true, text: 'Current sequence\nnumber'),
                                        SettingTextInput(height: 26, width: 245, value: '10000')
                                      ],
                                    ),
                                  SizedBox(height:10),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SettingsCell(height: 38, width: 150 , textSpan: true, text: 'Sell screen\nbarcodes'),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SettingDropDown(
                                            width: 245,
                                            height: 22,
                                            paddingAll: 1,
                                            onPressed: (String newValue) 
                                                            {
                                                              setState(() {
                                                              sellScreen = newValue;
                                                              }
                                                            );
                                                          },
                                            dropdownValue: sellScreen,
                                            dropdownList: ['','Only allow SKUs','Allow barcodes with\nembedded price','Allow barcodes with\nembedded weight'],
                                            ),
                                            TextButton(
                                              onPressed: (){},
                                               child: Text(
                                                 'How do I embed prices or weights?',
                                                 style: TextStyle(
                                                   fontSize: 14,
                                                   color:Color(0xFF0066CC),
                                                   fontFamily: 'Lato'
                                                   ),
                                                 )
                                               )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height:10),
                                   Row(
                                      children: [
                                        SettingsCell(height: 38, width: 150 , textSpan: true, text: 'User switching\nsecurity'),
                                        SettingDropDown(
                                        width: 245,
                                        height: 22,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          userSwitching = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: userSwitching,
                                        dropdownList: ['','Never require a password\nwhen switching between users','Require a password\nwhen switching to a user\nwith greater privileges',"Don't require a password to\nswitch users when switching\nwith a barcode",'Always require a password\nwhen switching between users'],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height:10),
                                    Row(
                                      children: [
                                        SettingsCell(height: 56, width: 150 , textSpan: true, text: 'Automatically add\ncustomers from\nreceipts'),
                                        Radio(
                                          value: Answer.yes,
                                          groupValue: _answer,
                                          onChanged: (Answer value)
                                          {
                                            setState(() {
                                              _answer = value;
                                            });
                                          }
                                        ),
                                        Text('Yes',style: TextStyle(fontFamily: 'Lato',fontSize: 14, color: kAppBarColor),),
                                        SizedBox(width:20),
                                        Radio(
                                          value: Answer.no,
                                          groupValue: _answer,
                                          onChanged: (Answer value)
                                          {
                                            setState(() {
                                              _answer = value;
                                            });
                                          }
                                        ),
                                        Text('No',style: TextStyle(fontFamily: 'Lato',fontSize: 14, color: kAppBarColor),),
                                      ],
                                    ),
                                    Text("Get more complete records of who's buying what. When you email a\n receipt to a customer. we'll automatically add them to the sale or \ncreate a new customer.",style: TextStyle(fontFamily: 'Lato',fontSize: 14, color: kAppBarColor),)
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
                          SettingsButton(
                          buttonText: 'Save',
                          onPress: (){},
                          topPadding: 9,
                          leftPadding: 24
                          ),
                      ],
                    ),
                    SizedBox(height:10),
                    BasicInformation(),
                    SizedBox(height:10),
                    AddressInformation()
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
