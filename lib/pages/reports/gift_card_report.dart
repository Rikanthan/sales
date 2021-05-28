import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/gredient_text_header.dart';
import 'package:sales/widgets/TextInput/register_table_cell.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/customer_drawer.dart';
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
      drawer: CustomerDrawer(),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
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
                            buttonColor: kDashboardMidBarColor, 
                            topPadding: 12,
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
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top:20,bottom: 20,right: 40),
                        child: Text(
                          'Total Value Sold',style: kMediumTextStyle,
                          ),
                      )
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
