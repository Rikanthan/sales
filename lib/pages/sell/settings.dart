import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/sell/add_layout.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/button_text.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/buttons/toggle_button.dart';
import 'package:sales/widgets/cards/popup_cards/enable_training_mode.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';

class SellSettings extends StatefulWidget {
 
  @override
  _SellSettingsState createState() => _SellSettingsState();
}

class _SellSettingsState extends State<SellSettings> {
  
 bool enableToggle = true;
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.settings,),
      body:SingleChildScrollView(
        child: Container(
          color:kDashboardColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kDashboardColor,
                 text: 'Settings',
                 isDarkMode: true,
                 ),
              Container(
                color: kAppBarColor,
                height: 77,
               child: Padding(
                 padding: const EdgeInsets.only(left:48.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Manage your register settings',
                        style: kMediumTextDarkStyle
                        ),
                    ],
                  ),
               )
              ),
             Container(
                color: kDashboardColor,
                child:Padding(
                  padding: const EdgeInsets.only(top:44,bottom:24,left:48.0,right: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text(
                        'Training Mode',
                        style:k18WhiteDark
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            'Enable Training Mode if\nyou’re new to Vend and want\nto learn the ropes. You’ll be\nselling like a pro in no time.',
                            style: k15WhiteHeightNormal
                            ),
                            SizedBox(
                              width:40,
                            ),
                            GreenButton(
                              buttonText: 'Enable Training Mode',
                              onPress: (){
                                 showDialog(
                                  context: context,
                                  builder: (BuildContext context) => EnableTrainingMode(),
                                );
                              },
                              topPadding: 0
                              )
                          ],
                        ),
                    ]
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                child: Divider(
                  thickness: 1,
                  color: Color(0xFFfafbfb)
                ),
              ),
               Container(
                color: kDashboardColor,
                child:Padding(
                  padding: const EdgeInsets.only(top:24,bottom:24,left:48.0,right: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text(
                        'Quick Keys',
                        style: k18WhiteDark
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            'Assign products as\nQuick Keys to help process\nsales faster. Rename,\nreposition and recolor keys,\nor organize your buttons into\nfolders and pages.',
                             style:k15WhiteHeight
                            ),
                            SizedBox(
                              width:40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ToggleButton(
                                      isSwitch: enableToggle,
                                      height: 36,
                                      width:68,
                                      onToggle: (val) {
                                                  setState(() {
                                                    enableToggle = val;
                                                  });
                                                },
                                      ),
                                      SizedBox(width:8),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom:4.0),
                                            child: Text(
                                              'Enable Quick Keys for this register.',style: kMediumTextDarkStyle,
                                              ),
                                          ),
                                          Text(
                                            'Toggle the switch to enable your Quick Keys for your register. You can turn this back on at anytime\nwithout losing your settings.',
                                            style:k14WhiteHeight
                                            )
                                        ],
                                      ),
                                  ],
                                ),
                                SizedBox(height:40),
                                GreenButton(
                                  buttonText: 'Add Layout',
                                  onPress: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> NewLayout() ));
                                  },
                                  topPadding: 0
                                  ),
                                Padding(
                                  padding: const EdgeInsets.only(top:24.0,bottom: 24.0),
                                  child: Container(
                                    height: 96,
                                    width: 696,
                                    decoration: BoxDecoration(
                                      color: kDashboardSearchBarFillColor,
                                      border: Border.all(
                                          width:2.0,
                                          color: Color(0xFF858585),
                                        ),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:20.0,right: 20.0,top:24,bottom: 24),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Default Quick keys',
                                            style: kMediumTextDarkStyle,
                                            ),
                                            Expanded(
                                              child: Text(''),
                                              ),
                                            ButtonText(
                                              buttonText: 'CURRENT LAYOUT',
                                              onPress: (){},
                                              buttonColor: kAppBarColor,
                                              topPadding: 4,
                                              leftPadding: 16,
                                              fontSize: 14,
                                              buttonTextColor: kDashboardIconColor,
                                            ),
                                            SizedBox(width:20),
                                            IconButton(
                                              icon: Icon(
                                                Icons.edit_outlined,
                                                size:15,
                                                color: kDashboardIconColor,
                                                ),
                                              onPressed: (){}
                                              ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.copy_outlined,
                                                size:15,
                                                color: kDashboardIconColor,
                                                ),
                                              onPressed: (){}
                                              ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.delete,
                                                size:15,
                                                color: kDashboardIconColor,
                                                ),
                                              onPressed: (){}
                                              ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 48.0),
                                  child: Container(
                                    height: 96,
                                    width: 696,
                                    decoration: BoxDecoration(
                                      color: kDashboardSearchBarFillColor,
                                      border: Border.all(
                                          width:2.0,
                                          color: Color(0xFF858585),
                                        ),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:20.0,right: 20.0,top:24,bottom: 24),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'New Layout',
                                            style: kMediumTextDarkStyle,
                                            ),
                                            Expanded(
                                              child: Text(''),
                                              ),
                                            CustomButton(
                                              buttonText: 'Set as Current Layout',
                                              onPress: (){},
                                              buttonColor: kDashboardIconColor,
                                              topPadding: 20,
                                              leftPadding: 24,
                                            ),
                                            SizedBox(width:20),
                                            IconButton(
                                              icon: Icon(
                                                Icons.edit_outlined,
                                                size:15,
                                                color: kDashboardIconColor,
                                                ),
                                              onPressed: (){}
                                              ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.copy_outlined,
                                                size:15,
                                                color: kDashboardIconColor,
                                                ),
                                              onPressed: (){}
                                              ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.delete,
                                                size:15,
                                                color: kDashboardIconColor,
                                                ),
                                              onPressed: (){}
                                              ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                    ]
                  ),
                )
              ),
            ],
          )
        ),
      )
    );
  }
}



