import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';

class CashManagement extends StatefulWidget {
 
  @override
  _CashManagementState createState() => _CashManagementState();
}

class _CashManagementState extends State<CashManagement> {
  
  @override
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.cashManagement,),
      body:SingleChildScrollView(
        child: Container(
          color:kDashboardColor,
          height: 718.0,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kDashboardColor,
                 text: 'Cash Management',
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
                        'Set opening cash drawer amount.',
                        style: TextStyle(
                          color: kHelpTextColor,
                          fontSize: 15,
                          fontFamily: 'Lato', 
                          fontWeight: FontWeight.w700
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Need help?',
                                style: kMediumTextDarkStyle
                                ),
                            ],
                          ),
                        )
                    ],
                  ),
               )
              ),
             Container(
                color: kDashboardSearchBarFillColor,
                child:Padding(
                  padding: const EdgeInsets.only(top:24,bottom:24,left:48.0,right: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text(
                        'Opening Float',
                        style:kMediumTextDarkStyle
                        ),
                      TextInput(
                        validate: (val) => val.length == 0 ? 'Enter the note' : null,
                        onChange: (val) {
                                                },
                        paddingTop: 5,
                        hideText: false,
                        height: 46, 
                        hintText: 'Rs 0.00',
                        width: 928, 
                        darkMode: true
                        ),
                        SizedBox(height: 24,),
                        Text(
                        'Notes Optional',
                        style:kMediumTextDarkStyle
                        ),
                      TextInput(
                        validate: (val) => val.length == 0 ? 'Enter the note' : 'Max characters: 255',
                        onChange: (val) {
                                                },
                        paddingTop: 5,
                        hideText: false,
                        height: 64, 
                        hintText: 'Enter a note',
                        width: 928, 
                        darkMode: true
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:3.0,bottom: 20.0),
                          child: Text(
                          'Max characters: 255',
                          style:TextStyle(
                            color: kDashboardIconColor,
                            fontSize: 14,
                            fontFamily:'Lato'
                            )
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GreenButton(
                              buttonText: 'Set Float',
                              onPress: (){},
                              topPadding: 0
                              ),
                          ],
                        )
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



