import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/customer/customer.dart';
import 'package:sales/pages/customer/groups.dart';
import 'package:sales/widgets/cards/drawer_item.dart';
import 'package:sales/widgets/cards/drawer_menu_item.dart';

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
          Container(
            width: 85,
            color: kInputBorderColor,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerItem(
                        buttonText: 'Home',
                        iconData: Icons.home,
                        onPress: (){
                            Navigator.of(context).
                         pushNamed('/Home');
                        },
                        iconColor: Colors.purple,
                        backgroundColor: kInputBorderColor,
                        darkMode: false,
                      ),   
                      DrawerItem(
                        buttonText: 'Sell',
                        iconData: Icons.satellite_sharp,
                        onPress: (){
                          Navigator.of(context).
                         pushNamed('/Dashboard');
                        },
                        iconColor: Colors.green,
                        backgroundColor: kInputBorderColor,
                        darkMode: false,
                      ),
                      DrawerItem(
                        buttonText: 'Reporting',
                        iconData: Icons.bar_chart,
                        onPress: (){

                        },
                        iconColor: Colors.yellow,
                        backgroundColor: kInputBorderColor,
                        darkMode: false,
                      ),
                      DrawerItem(
                        buttonText: 'Products',
                        iconData: Icons.local_offer_rounded,
                        onPress: (){},
                        iconColor: Colors.orange,
                        backgroundColor: kInputBorderColor,
                        darkMode: false,
                      ),
                      DrawerItem(
                        buttonText: 'Customers',
                        iconData: Icons.person_search_outlined,
                        onPress: (){},
                        iconColor: Colors.purple,
                        backgroundColor: Colors.white,
                        darkMode: false,
                      ),
                      DrawerItem(
                        buttonText: 'Setup',
                        iconData: Icons.settings,
                        onPress: (){},
                        iconColor: Colors.blueGrey,
                        backgroundColor: kInputBorderColor,
                        darkMode: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width:145,
            color: Colors.white,
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
         Container(
            width: 70,
            color: Colors.transparent,
            child: Stack(
            children: [
              Positioned(
              top:10.0,
              right:0.0,
              child: GestureDetector(
              onTap: (){
                  Navigator.of(context).pop();
              },
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.close,
                        color: kHomeDrawerCloseColor
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5.0),
                    child: Text(
                      'ESC',
                        style:TextStyle(
                        color:kHelpTextColor,
                        fontSize: 14,
                        fontFamily: 'Lato'            
                          ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
          ),
            )
        ],
      ),
    );
  }
}