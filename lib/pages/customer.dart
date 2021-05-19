import 'package:flutter/material.dart';
import 'package:sales/widgets/TextInput/text_input.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class Customer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: HomeDrawer(),
      body:Container(
          child:Column(
            children: [
              DashboardMidBar(),
              Container(
                child:Padding(
                  padding:  EdgeInsets.only(top:24,bottom:24,left:48,right:48),
                  child: Row(
                    children: [
                      Text(
                        'Customers',
                        style:TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 32,
                          color: kSignInTextColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                    ],
                  ),
                )
              ),
              Container(
                color:kInputBorderColor,
                child: Padding(
                  padding: EdgeInsets.only(top:16,bottom:16,left:48.0,right: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                        'Manage your customers and their balances, or segment them by demographics and spending \nhabits.',
                        style:TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            color: kSignInTextColor
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: 'Import Customers',
                          onPress: (){},
                          buttonColor: kDashboardMidBarColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: 'Add Customer',
                          onPress: (){},
                          buttonColor: kSignInButtonColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      )
                    ]
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top:24.0,bottom:24,left: 48,right: 48),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children : [
                                Padding(
                                  padding: const EdgeInsets.only(bottom:4.0),
                                  child: Text(
                              'Search for Customers',
                              style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  color: kSignInTextColor,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                                ),
                            DashboardSearchBar(
                              iconData: Icons.search, 
                              iconText: 'Enter name, customer code, or contact details',
                              width: 560,
                              padding: 0,
                              darkMode: false,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children:[
                                       Text(
                                        'City',
                                         style:TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        color: kSignInTextColor,
                                        fontWeight: FontWeight.w700
                                          ),
                                       )
                                    ]
                                  ),
                                  Column(
                                    children:[
                                       Text(
                                        'Country',
                                         style:TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        color: kSignInTextColor,
                                        fontWeight: FontWeight.w700
                                          ),
                                       )
                                    ]
                                  )
                                ],
                              )
                        ]
                      ), 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Customer Group',
                              style:TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                color: kSignInTextColor,
                                fontWeight: FontWeight.w700
                              ),
                            ),    
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
      )
    );
  }
}