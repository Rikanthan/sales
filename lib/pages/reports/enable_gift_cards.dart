import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/home_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/custom_cards/gift_card.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';

class EnableGiftCard extends StatelessWidget {
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
                           headerText: 'Enable Gift Cards to Boost Revenue',
                            subHeaderText: 'Bring in new customers and increase revenue with flexible and brandable gift cards.'
                            ),                          
                            CustomButton(
                              buttonText: 'Enable Gift Cards',
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
                      header: 'Sell and Track Cards',
                      subHeader: 'Sell gift cards to attract and engage new\ncustomers. Gift card reports let you track\nredemption and open balances. ', 
                      imgUrl: 'assets/images/gift-cards-v1.png',
                      imgWidth: 109
                      ),
                       GiftCard(
                      header: 'Boost Your Revenue',
                      subHeader: 'Customers using gift cards tend to spend\nmore, and are more likely to buy products\nat regular price, increasing your\nbottom line.', 
                      imgUrl: 'assets/images/boost-revenue-v1.png',
                      imgWidth: 77
                      ),
                     GiftCard(
                      header: 'Customise Your Cards',
                      subHeader: 'Gift cards are hassle free. Create your own\ngift cards by hand, design and print new\nones from our preferred partner, or use\nyour own vendor', 
                      imgUrl: 'assets/images/customise-gift-cards-v1.png',
                      imgWidth: 146
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