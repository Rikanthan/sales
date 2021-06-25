import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/home_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/custom_cards/gift_card.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';

class EnableStoreCredit extends StatelessWidget {
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
                           headerText: 'Enable Store Credit to Improve Cash Flow',
                            subHeaderText: 'Offer store credit instead of a cash refund, and keep customers coming back.'
                            ),                          
                            CustomButton(
                              buttonText: 'Enable Store Credit',
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
                      header: 'Incentivise Your\nCustomers',
                      subHeader: 'Refund with store credit instead of cash\n  when doing returns; delight loyal\ncustomers, or even angry ones, by offering\ngoodwill credit.', 
                      imgUrl: 'assets/images/bring-customers-back-v1.png',
                      imgWidth: 84
                      ),
                       GiftCard(
                      header: 'You Decide Who Can Issue',
                      subHeader: 'Only let those whom you trust issue store\ncredit. Decide which users get to do so —\ncashiers, managers, or admins only.    ', 
                      imgUrl: 'assets/images/one-click-setup-v4.png',
                      imgWidth: 141
                      ),
                     GiftCard(
                      header: 'Track With Reporting',
                      subHeader: 'Know the store credit balances of each\ncustomer, and keep track of total store\ncredit issued and redeemed over time.', 
                      imgUrl: 'assets/images/sales-reports-v1.png',
                      imgWidth: 130
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