import 'package:flutter/material.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class PersonalTokens extends StatefulWidget {
  @override
  _PersonalTokensState createState() => _PersonalTokensState();
}

class _PersonalTokensState extends State<PersonalTokens> {
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked: SetupClicked.payment),
      body:Container(
        color:kInputBorderColor,
          child:Column(
            children: [
              DashboardMidBar(),
             CustomHeader(
               backgroundColor:kHomeBackgroundColor,
               text: 'Personal Tokens',
               isDarkMode: false,
               ),
             MidButtonBar(
               text: 'Add,edit,and view personal tokens.',
                addBlueButton: false,
                 blueButtonText: '', 
                 blueOnTap: (){},
                greenButtonText: 'Add Personal Tokens',
                 greenOnTap: (){}
                 ),
              Container(
                height: 476,
                color:kHomeBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.only(top:24.0,bottom:24,left: 48,right: 48),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 127.313,
                              child: Row(
                                children: [
                                  Text(
                                    'Name',style: kMediumTextStyle,),
                                ],
                              )
                            ),
                            SizedBox(width: 40,),
                            Container(
                              width: 506.91,
                              child: Text(
                                'Last 4 Characters of Personal Token',style: kMediumTextStyle,)
                                ),
                              Text(
                                'Expiry Date',style: kMediumTextStyle,
                                )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        color:kInputBorderColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      )
    );
  }
}