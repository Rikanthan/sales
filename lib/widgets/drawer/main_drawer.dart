import 'package:flutter/material.dart';
import 'package:sales/pages/customer/customer.dart';
import 'package:sales/pages/home.dart';
import 'package:sales/pages/products/products.dart';
import 'package:sales/pages/reports/online_gift_card.dart';
import 'package:sales/pages/sell/dashboard.dart';
import 'package:sales/pages/setup/general.dart';
import 'package:sales/widgets/cards/custom_cards/drawer_item.dart';
import '../../constants/colors.dart';

enum MainDrawerClick {
 home,
 sell,
 reports,
 products,
 customer,
 setup
}

class MainDrawer extends StatelessWidget {
 MainDrawer({
   @required this.isDarkMode,
   @required this.mainDrawerClick
 });
 final MainDrawerClick mainDrawerClick;
 final bool isDarkMode;

  Color _selectedColor( MainDrawerClick itemClick)
  {
    Color clickedColor;
    mainDrawerClick == itemClick && isDarkMode ? clickedColor =kDrawerBackgroundColor :
    mainDrawerClick != itemClick && isDarkMode ? clickedColor = kSignInTextColor  :
    mainDrawerClick == itemClick && !isDarkMode ? clickedColor = kWhite : 
    clickedColor = kInputBorderColor;
    return clickedColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 85,
            color: isDarkMode ? kSignInTextColor : kInputBorderColor,
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
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> Home()));
                        },
                        iconColor: Colors.purple,
                        backgroundColor: _selectedColor(MainDrawerClick.home),
                        darkMode: isDarkMode,
                      ),   
                      DrawerItem(
                        buttonText: 'Sell',
                        iconData: Icons.satellite_sharp,
                        onPress: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> Dashboard()));
                        },
                        iconColor: Colors.green,
                        backgroundColor:  _selectedColor(MainDrawerClick.sell),
                        darkMode: isDarkMode,
                      ),
                      DrawerItem(
                        buttonText: 'Reporting',
                        iconData: Icons.bar_chart,
                        onPress: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> OnlineGiftCard()));
                        },
                        iconColor: Colors.yellow,
                        backgroundColor:  _selectedColor(MainDrawerClick.reports),
                        darkMode: isDarkMode,
                      ),
                      DrawerItem(
                        buttonText: 'Products',
                        iconData: Icons.local_offer_rounded,
                        onPress: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> Products()));
                        },
                        iconColor: Colors.orange,
                        backgroundColor:  _selectedColor(MainDrawerClick.products),
                        darkMode: isDarkMode,
                      ),
                      DrawerItem(
                        buttonText: 'Customers',
                        iconData: Icons.person_search_outlined,
                        onPress: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> Customer()));
                        },
                        iconColor: Colors.purple,
                        backgroundColor:  _selectedColor(MainDrawerClick.customer),
                        darkMode: isDarkMode,
                      ),
                      DrawerItem(
                        buttonText: 'Setup',
                        iconData: Icons.settings,
                        onPress: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> General()));
                        },
                        iconColor: Colors.blueGrey,
                        backgroundColor:  _selectedColor(MainDrawerClick.setup),
                        darkMode: isDarkMode,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}