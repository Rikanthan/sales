import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/home_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/cards/app_card.dart';
import 'package:sales/widgets/drawer/report_drawer.dart';

class App extends StatefulWidget {
 
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  
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
              Container(
                color: kInputBorderColor,
                child: Padding(
                  padding: const EdgeInsets.only(left:48.0,right: 48.0,top: 48,bottom: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HomeHeaderText(
                        topPadding: 0,
                        leftPadding: 0,
                        headerText: 'Extend the power of Vend with the best-in-class Apps',
                        subHeaderText: 'Connect with a world of apps to help you grow and streamline your business'
                        ),
                      SizedBox(height:24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppCard(
                            header: 'Xero',
                            subHeader: 'Automate painful tasks\nand get total insights into\nyour business with\nXero accounting.', 
                            imgUrl: 'assets/images/logo-xero-badge-v1.png',
                            isFind: false,
                            height: 307,
                             ),
                            AppCard(
                            header: 'BigCommerce',
                            subHeader: 'Discover a better way to\nsell online, in-store, and\nacross your favorite\nocial&nbsp;channels.        ', 
                            imgUrl: 'assets/images/logo-bigcommerce-badge-v1.jpg',
                            isFind: false,
                            height: 307,
                             ),
                            AppCard(
                            header: 'WooCommerce',
                            subHeader: 'Sell more flexibly and\nprofitably in-store and\nonline, with the world’s\n#1 ecommerce platform.', 
                            imgUrl: 'assets/images/logo-woocommerce-badge-v2.jpg',
                            isFind: false,
                            height: 307,
                             ),
                            AppCard(
                            header: 'Shopify',
                            subHeader: 'Get the best of both\nworlds. Sell more across\nyour stores and\nonline,seamlessly.', 
                            imgUrl: 'assets/images/logo-shopify-badge-v1.png',
                            isFind: false,
                            height: 307,
                             ),
                        ],
                      ),
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppCard(
                            header: 'Deputy',
                            subHeader: 'Easily track staff sales\nperformance,schedule\nrosters, and set tasks\nin Vend', 
                            imgUrl: 'assets/images/logo-deputy-badge-v2.png',
                            isFind: true,
                            height: 327,
                             ),
                            AppCard(
                            header: 'Timely',
                            subHeader: 'Schedule client\nappointments and\noversee staff, while\nmanaging retail in Vend. ', 
                            imgUrl: 'assets/images/logo-timely-badge-v1.png',
                            isFind: true,
                            height: 327,
                             ),
                            AppCard(
                            header: 'Advanced Loyalty &\nCampaigns (powered by\n Marsello)',
                            subHeader: 'Grow sales with smart,\ntargeted loyalty\nmarketing automation\nthat gets results.', 
                            imgUrl: 'assets/images/logo-marsello-v2.png',
                            isFind: true,
                            height: 327,
                             ),
                            AppCard(
                            header: 'Mailchimp',
                            subHeader: 'All-in-one marketing\nplatform for email, ads\nand customer campaigns\nto drive sales.', 
                            imgUrl: 'assets/images/logo-mailchimp-badge-v2.png',
                            isFind: false,
                            height: 327,
                            ),
                        ],
                      ),
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppCard(
                            header: 'MYOB AR Live by\nAmaka',
                            subHeader: 'Save time and reduce\nmanual accounting work\nby sending your sales,\norders and liabilities\nautomatically to MYOB.', 
                            imgUrl: 'assets/images/myob-logo-v2.png',
                            isFind: false,
                            height: 345,
                             ),
                            AppCard(
                            header: 'Homebase',
                            subHeader: 'Make work easier with\nfree tools to track time\nand manage your team.', 
                            imgUrl: 'assets/images/logo-homebase-v2.png',
                            isFind: false,
                            height: 345,
                             ),
                        ],
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
