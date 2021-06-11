import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/report_drawer.dart';

class OnlineGiftCard extends StatefulWidget {
 
  @override
  _OnlineGiftCardState createState() => _OnlineGiftCardState();
}

class _OnlineGiftCardState extends State<OnlineGiftCard> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ReportDrawer(reportsClicked:ReportsClicked.giftcardReports ),
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
                color: kInputBorderColor,
                child: Padding(
                  padding: const EdgeInsets.only(left:48.0,right: 48.0,top: 24,bottom: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Looks like gift cards are not enabled for your store,click ',
                        style: kMediumTextNormalStyle
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Text(
                          ' here',
                          style: k15Blue
                          ),
                        ),
                       Text(
                        ' to enable it.',
                        style: kMediumTextNormalStyle
                      ), 
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      )
    );
  }
}
