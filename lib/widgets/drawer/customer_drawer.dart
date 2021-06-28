import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/customer/customer.dart';
import 'package:sales/pages/customer/groups.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/cards/custom_cards/drawer_menu_item.dart';
import 'package:sales/widgets/drawer/main_drawer.dart';

enum Customers {
  group,
  customer
}
class CustomerDrawer extends StatelessWidget {
 CustomerDrawer({
   @required this.customerClicked
 });
 final Customers customerClicked;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      color:Colors.transparent,
      child: Row(
        children: [
          MainDrawer(isDarkMode: false, mainDrawerClick: MainDrawerClick.customer),
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
                        buttonText: 'Customers',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Customer()));
                      }, 
                      textColor: Customers.customer == customerClicked ? kDashboardMidBarColor : kAppBarColor
                      ),
                      DrawerMenuItem(
                        buttonText: 'Groups',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> CustomerGroups()));
                      }, 
                      textColor: Customers.group == customerClicked ? kDashboardMidBarColor : kAppBarColor
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
            width: 70,
            positionedTop: 10.0,
            )
        ],
      ),
    );
  }
}