import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/home_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/custom_cards/gift_card.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';

class Loyalty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child: Column(
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,top:24),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 28,),
                      HomeHeaderText(
                          topPadding: 20, 
                          leftPadding: 20,
                           headerText: 'Enable Loyalty to Grow Repeat Business',
                            subHeaderText: 'Reward customers and keep them coming back with your own loyalty program'
                            ),                          
                            CustomButton(
                              buttonText: 'Enable Loyalty',
                              onPress: (){},
                              buttonColor: kSignInButtonColor,
                              topPadding: 24,
                              leftPadding: 32
                              ),
                             SizedBox(
                               height: 48.0,
                             )
                    ],
                  ),      
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(48.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GiftCard(
                      header: 'Customize Your Rewards',
                      subHeader: 'Offer your customers one simple reward\nrate or apply custom rates for\nspecial products.    ', 
                      imgUrl: 'assets/images/customise-the-reward-v1.png',
                      imgWidth: 127
                      ),
                       GiftCard(
                      header: 'Know Your Top Customers',
                      subHeader: 'Understand who your most loyal customers\nare and how they spend with you.    ', 
                      imgUrl: 'assets/images/bonus-loyalty-v1.png',
                      imgWidth: 57
                      ),
                     GiftCard(
                      header: 'Add Customers Quickly',
                      subHeader: 'New customers can automatically be added\nto your loyalty program or they can follow a\nlink on their receipt to&nbsp;join.    ', 
                      imgUrl: 'assets/images/loyalty-redemption-v1.png',
                      imgWidth: 109
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}