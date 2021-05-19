import 'package:flutter/material.dart';
import 'package:sales/widgets/TextInput/home_text_header.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/constants/colors.dart';
class HomeTopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(top: 44,left: 48,right: 48),
                child: Container(
                  width: 902,
                  color: Colors.white,
                    child: Column(
                      children: [
                        HomeHeaderText(
                          topPadding: 48, 
                          leftPadding: 20,
                           headerText: 'Start your retail success with Vend.',
                            subHeaderText: 'Get to know the basics in three easy ways.'
                            ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,left: 28.0,right: 28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  children : [
                                    Image.asset(
                                      'assets/images/make-a-sale-v1.png',
                                        width: 153,
                                        height: 84.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                                          child: Text(
                                            'Make a Sale',
                                              style: TextStyle(
                                              fontSize:24,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                              fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                              'Explore the Sell screen, and learn \n       how to make your first sale \n                         in seconds.',
                                                style: TextStyle(
                                                fontSize:15,
                                                height: 1.5,
                                                fontFamily: 'Lato',
                                                color: kSignInTextColor,
                                              ),
                                            ),
                                        ),
                                          Padding(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child: Text(
                                            "You've made a sale",
                                              style: TextStyle(
                                              fontSize:15,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                            ),
                                          ),
                                        ),
                                  ]
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children : [
                                    Image.asset(
                                      'assets/images/add-a-product-v1.png',
                                        width: 153,
                                        height: 84.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                                          child: Text(
                                            'Add a Product',
                                              style: TextStyle(
                                              fontSize:24,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                              fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        Text(
                                            '   Manage your products easily,\n whether you want to add one or \n          import one thousand.',
                                              style: TextStyle(
                                              fontSize:15,
                                              height: 1.5,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                            ),
                                          ),
                                          GreenButton(
                                            buttonText: 'Add a Product', 
                                            onPress: (){}, 
                                            topPadding: 20
                                            ),
                                  ]
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children : [
                                    Image.asset(
                                      'assets/images/add-a-customer-v1.png',
                                        width: 153,
                                        height: 84.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                                          child: Text(
                                            'Add a Customer',
                                              style: TextStyle(
                                              fontSize:24,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                              fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        Text(
                                            'Start a customer base to grow repeat\n            business or simply upload \n                  existing customers.',
                                              style: TextStyle(
                                              fontSize:15,
                                              height: 1.5,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                            ),
                                          ),
                                           GreenButton(
                                            buttonText: 'Add a Customer', 
                                            onPress: (){}, 
                                            topPadding: 20
                                            ),
                                  ]
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:45.0,bottom:45),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'For help with setting up Vend, check out the ',
                                 style: TextStyle(
                                              fontSize:15,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                            ),
                              ),
                              TextButton(
                                onPressed: (){}, 
                                child:  Text(
                                      'Getting Started Guide',
                                      style: TextStyle(
                                              fontSize:15,
                                              fontFamily: 'Lato',
                                              color: Colors.blue,
                                            ),
                                  ),
                                )
                            ],
                          ),
                        )
                      ],
                    ),
                ),
              );
  }
}