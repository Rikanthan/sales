import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/cards/drawer_item.dart';

class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: Container(
      width:230,
      color:Colors.transparent,
      child: Row(
        children: [
          Container(
            width: 85,
            color: kDashboardAppBarColor,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerItem(
                        buttonText: 'Home',
                        iconData: Icons.home,
                        onPress: (){},
                        iconColor: Colors.purple,
                      ),
                      
                      DrawerItem(
                        buttonText: 'Sell',
                        iconData: Icons.satellite_sharp,
                        onPress: (){},
                        iconColor: Colors.green,
                      ),
                      DrawerItem(
                        buttonText: 'Reporting',
                        iconData: Icons.bar_chart,
                        onPress: (){},
                        iconColor: Colors.yellow,
                      ),
                      DrawerItem(
                        buttonText: 'Products',
                        iconData: Icons.local_offer_rounded,
                        onPress: (){},
                        iconColor: Colors.orange,
                      ),
                      DrawerItem(
                        buttonText: 'Customers',
                        iconData: Icons.person_search_outlined,
                        onPress: (){},
                        iconColor: Colors.purple,
                      ),
                      DrawerItem(
                        buttonText: 'Setup',
                        iconData: Icons.settings,
                        onPress: (){},
                        iconColor: Colors.blueGrey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width:145,
            color: kDashboardSearchBarFillColor,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      ListTile(
                        title: Text('Line 1'),
                      ),
                      ListTile(
                        title: Text('Line 2'),
                      ),
                      AboutListTile(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }
}