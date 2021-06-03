import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/home_text_header.dart';
import 'package:sales/widgets/TextInput/setting_input_text.dart';
import 'package:sales/widgets/TextInput/settings_drop_down.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/settings_button.dart';
import 'package:sales/widgets/drawer/report_drawer.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ReportDrawer(reportsClicked:ReportsClicked.giftcardReports ),
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
                    Container(
                      width:960,
                      height: 34,
                      decoration: BoxDecoration(
                    border: Border.all(
                      color:Color(0xFFCCCCCC), width: 1, style: BorderStyle.solid
                      ),
                    gradient: LinearGradient(
                        colors: [Color(0xFFF6F6F6) , Color(0xFFECECEC) ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
                    borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:12.0,top:7,bottom:7),
                        child: Text(
                          'Store Settings',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            color: Color(0xff535353)
                            ),
                          ),
                      ),
                    ),
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
                                    Container(
                                      width: 150,
                                      height: 24,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Store name',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color:Color(0xFF333333),
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w700
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
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
                                    Container(
                                      width: 150,
                                      height: 24,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Private URL',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color:Color(0xFF333333),
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w700
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
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
                                    Container(
                                      width: 150,
                                      height: 24,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Default currency',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color:Color(0xFF333333),
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w700
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
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
                                    Container(
                                      width: 150,
                                      height: 24,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Time zone',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color:Color(0xFF333333),
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w700
                                              ),
                                            ),
                                        ],
                                      ),
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
                                        dropdownList: ['(GMT+05:30)','(GMT+05:00)'],
                                        ),
                                        
                                  ],
                                ),
                                 SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 24,
                                      child: Row(
                                        children: [
                                          Text(
                                            'display prices',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color:Color(0xFF333333),
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w700
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
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
                              child: Column(
                                children: [
                                  SettingsButton(
                                    buttonText: 'Cancel',
                                     onPress: (){},
                                      topPadding: 9, 
                                    leftPadding: 24
                                    ),
                                  SettingsButton(
                                    buttonText: 'Save',
                                     onPress: (){},
                                      topPadding: 9, 
                                    leftPadding: 24
                                    )
                              ],
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
