import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/reports/Tax_report.dart';
import 'package:sales/pages/reports/gift_card_report.dart';
import 'package:sales/pages/reports/inventory_report.dart';
import 'package:sales/pages/reports/payments_report.dart';
import 'package:sales/pages/reports/register_closures.dart';
import 'package:sales/pages/reports/retail_dashboard.dart';
import 'package:sales/pages/reports/sales_report.dart';
import 'package:sales/pages/reports/store_credit_report.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/cards/custom_cards/drawer_menu_item.dart';
import 'package:sales/widgets/drawer/main_drawer.dart';

enum ReportsClicked {
  dashboard,
  salesReports,
  inventoryReports,
  paymentReports,
  registerClosure,
  giftcardReports,
  storeCreditReports,
  taxReports
}
Color _clickColor(ReportsClicked reportsClicked,ReportsClicked itemClick)
{
 Color clickedColor;
    reportsClicked == itemClick  ? clickedColor =  kDashboardMidBarColor :
    clickedColor = kAppBarColor;
    return clickedColor;
}
class ReportDrawer extends StatelessWidget {
 ReportDrawer({
   @required this.reportsClicked
 });
 final ReportsClicked reportsClicked;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      color:Colors.transparent,
      child: Row(
        children: [
          MainDrawer(isDarkMode: false, mainDrawerClick: MainDrawerClick.reports),
          Container(
            width:145,
            color: kWhite,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerMenuItem(
                        buttonText: 'Retail Dashboard',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> RetailDashboard()));
                      }, 
                      textColor: _clickColor(reportsClicked, ReportsClicked.dashboard)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Sales Reports',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> SalesReport()));
                      }, 
                      textColor: _clickColor(reportsClicked, ReportsClicked.salesReports)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Inventory Reports',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> InventoryReport()));
                      }, 
                      textColor: _clickColor(reportsClicked, ReportsClicked.inventoryReports)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Payment Reports',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> PaymentsReport()));
                      }, 
                      textColor: _clickColor(reportsClicked, ReportsClicked.paymentReports)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Register Closures',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> RegisterClosure()));
                      }, 
                      textColor: _clickColor(reportsClicked, ReportsClicked.registerClosure)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Gift Card Reports',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> GiftCardReport()));
                      }, 
                      textColor: _clickColor(reportsClicked, ReportsClicked.giftcardReports)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Store Credit Reports',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> StoreCreditReport()));
                      }, 
                      textColor: _clickColor(reportsClicked, ReportsClicked.storeCreditReports)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Tax Reports',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> TaxReport()));
                      }, 
                      textColor: _clickColor(reportsClicked, ReportsClicked.taxReports)
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         EscButton(
           isDarkMode: false, 
           positionedRight: 0.0,
           positionedTop: 10.0,
            width: 70
            )
        ],
      ),
    );
  }
}