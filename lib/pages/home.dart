import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/home_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/cards/home_bottom_card.dart';
import 'package:sales/widgets/cards/home_top_card.dart';
import 'package:sales/widgets/drawer/dashboard_drawer.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DashboardDrawer(),
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child: Column(
            children: [
              DashboardMidBar(),
              HomeTopCard(),
              HomeHeaderText(
                        topPadding: 48,
                        leftPadding: 48, 
                        headerText: 'Every part of your business, in sync.', 
                        subHeaderText: 'Here are some of the ways to automate the heavy lifting of running your business so you can \n                                                                                  focus on success'
                        ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          HomeBottomCard(
                            image: 'assets/images/make-a-sale-v1.png',
                            headerText: 'Sell in-store and online.',
                            subHeaderText: ' Add a new product to your catalogue and \nsell it anywhere instantly. Manage your in-\nstore and online inventory, customers and \nsales all in one place.',
                            buttonText: 'Explore our Ecommerce Apps',
                            onPress: (){},
                            ),
                          HomeBottomCard(
                            image: 'assets/images/explore-xero-v3.png',
                            headerText: 'See your performance in \nreal-time.', 
                            subHeaderText: 'See your cashflow in real-time with Xero, \nthe most popular integrated online \naccounting software. Post daily sales \nreports, generate invoices and \nsync customers.', 
                            buttonText: 'Learn more about Xero',
                            onPress: (){}
                            )
                        ]
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          HomeBottomCard(
                            image: 'assets/images/stock-v1.png',
                            headerText: 'Always have stock on \nhand.',
                            subHeaderText: 'Don’t waste time figuring how much of what\nto order.Instantly add products that are \nrunning low to your stock orders,so you \nalways have what your customers want.',
                            buttonText: 'Make a stock order',
                            onPress: (){},
                            ),
                          HomeBottomCard(
                            image: 'assets/images/user-permissions-v1.png',
                            headerText: 'Know what your staff are \nup to', 
                            subHeaderText: 'Whether it’s tracking sales performance,or \nmaking sure they can do only what they \nneed to conduct their role,gain full control \nover your staff.', 
                            buttonText: 'Check out user permissions',
                            onPress: (){}
                            )
                        ]
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}