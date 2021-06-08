import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/home_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/help_text_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/Enterprise_plan.dart';
import 'package:sales/widgets/cards/license_card.dart';
import 'package:sales/widgets/cards/lite_plan_card.dart';
import 'package:sales/widgets/cards/pro_plan_card.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class Billing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SetupDrawer(setupClicked:SetupClicked.billing ),
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      body: SingleChildScrollView(
        scrollDirection:  Axis.vertical,
        child: Container(
          color:kHomeBackgroundColor,
          child: Column(
            children: [
              DashboardMidBar(),
              HelpTextBar(height: 93, isDarkMode: false, text: 'Upgrade your plan to get the best out of Vend.'),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,top:24),
                child: Column(
                  children: [
                    Container(
                      width: 928,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 28,),
                          HomeHeaderText(
                              topPadding: 20, 
                              leftPadding: 20,
                               headerText: 'You have 6 days lefts on your free trial.',
                                subHeaderText: 'You may continue to explore the example store, or follow the steps below to set up your\n                                                                                 own store now'
                                ),                          
                          SizedBox(
                            height: 48.0,
                          )
                        ],
                      ),      
                    ),
                    SizedBox(
                      height:48
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Clear out data' ,style: kSubHeaderTextStyle,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("We've given you sample products to practise making sales with, and you may have tried adding products or\ncustomers as a test.It's important to clear them out before starting your own store.",style:kMediumTextNormalStyle),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 20),
                              child: Text('You can choose to clear out all Sales History, Products, and/or Customer data.',style: kMediumTextNormalStyle,),
                            ),
                            CustomButton(
                              buttonText: 'Select data to clear',
                              onPress: (){},
                              buttonColor: kDashboardMidBarColor, 
                              topPadding: 20,
                              leftPadding: 30
                              )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40,bottom:48.0),
                      child: Divider(
                        thickness: 1,
                        color:kPlanCardBottomColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 226,
                          child: Text('Select a plan',style: kSubHeaderTextStyle,),
                        ),
                        LitePlan(),
                        ProPlan(),
                        EnterprisePlan()
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:48,bottom:48.0),
                      child: Divider(
                        thickness: 1.2,
                        color:kPlanCardBottomColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Licenses',style: kSubHeaderTextStyle,)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Buy licenses for Outlets and\nRegisters to be able to set them up.\nListed prices are exclusive \nof tax. ',style: kMediumTextNormalStyle,),
                              Text(
                                'What are Outlets and',
                                    style: TextStyle(
                                      color: kFilterTextColor,
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                    ),
                                  ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                    'Registers?',
                                        style: TextStyle(
                                          color: kFilterTextColor,
                                          fontFamily: 'Lato',
                                          fontSize: 15,
                                        ),
                                      ),
                                    Icon(
                                      Icons.exit_to_app,
                                      color: kFilterTextColor,
                                      size: 15
                                      )
                                  ],
                                ),
                            ],
                          ),
                          LicenseCard()
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40,bottom:40.0),
                      child: Divider(
                        thickness: 1.2,
                        color:kPlanCardBottomColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Billing',style: kSubHeaderTextStyle,)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

