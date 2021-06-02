import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class GiftCardReport extends StatefulWidget {
 
  @override
  _GiftCardReportState createState() => _GiftCardReportState();
}

class _GiftCardReportState extends State<GiftCardReport> {
   String filter = 'All Registers';
   bool lessFilters = false;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: HomeDrawer(),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                isDarkMode: false,
                 text: 'Gift Card Report'
                 ),
              Container(
                color:Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top:24,bottom: 24,left: 48,right: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children : [
                          Text('Gift card Number',style: kMediumTextStyle),
                          SizedBox(height: 5,),
                          DashboardSearchBar(
                            iconData: Icons.search,
                            iconText: 'Search for a gift card number',
                            width: 400,
                            padding: 12,
                            darkMode: false
                            )
                        ]
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children : [
                          CustomButton(
                            buttonText: 'Apply Filter',
                            onPress: (){}, 
                            buttonColor: kSignInButtonColor, 
                            topPadding: 18,
                            leftPadding: 20
                            )
                        ]
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width:147,
                          height:58,
                          child: Padding(
                            padding: const EdgeInsets.only(top:20,bottom: 20,right: 40),
                            child: Text(
                              'Total Value Sold',style: kMediumTextStyle,
                              ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:80.0),
                          child: Container(
                            width:190,
                            height:58,
                            child: Padding(
                              padding: const EdgeInsets.only(top:20,bottom: 20,right: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Value Redeemed',style: kMediumTextStyle,
                                    ),
                                ],
                              ),
                            )
                          ),
                        ),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width:181,
                          height:58,
                          child: Padding(
                            padding: const EdgeInsets.only(top:20,bottom: 20,right: 40),
                            child: Text(
                              'Outstanding Balance',style: kMediumTextStyle,
                              ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:80.0),
                          child: Container(
                            width:202,
                            height:58,
                            child: Padding(
                              padding: const EdgeInsets.only(top:20,bottom: 20,right: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gift Cards in Circulation',style: kMediumTextStyle,
                                    ),
                                ],
                              ),
                            )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left:48.0,right: 48.0,top:24.0,bottom: 24.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Showing 0 gift cards.',
                       style: TextStyle(
                         color:kDashboardMidBarColor,
                         fontSize: 14,
                         fontFamily: 'Lato'
                        ),
                       ),
                       Row(
                         children: [
                           Container(
                             color:Colors.white,
                             height: 52,
                             width:231,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text(
                                     'Gift card number',
                                     style: kMediumTextStyle,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:Colors.white,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Total sold',
                                     style: kMediumTextStyle,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:Colors.white,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Total redeemed',
                                     style: kMediumTextStyle,
                                     ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                              color:Colors.white,
                             height: 52,
                             width:232,
                             child: Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     'Balance',
                                     style: kMediumTextStyle,
                                     ),
                                 ],
                               ),
                             ),
                           )
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text(
                               'No gift card data available',
                               style: TextStyle(
                                 fontFamily: 'Lato',
                                 fontSize: 14,
                                 color:kAppBarColor
                                 ),
                                )
                          ],
                         ),
                       )
                   ],
                 ),
               )
            ],
          )
        ),
      )
    );
  }
}
