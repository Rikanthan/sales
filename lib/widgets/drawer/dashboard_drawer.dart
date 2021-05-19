import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/cards/drawer_item.dart';
import 'package:sales/widgets/cards/drawer_menu_item.dart';

class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:290,
      color:Colors.transparent,
      child: Row(
        children: [
          Container(
            width: 85,
            color: kSignInTextColor,
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
                        backgroundColor: kSignInTextColor,
                      ),   
                      DrawerItem(
                        buttonText: 'Sell',
                        iconData: Icons.satellite_sharp,
                        onPress: (){},
                        iconColor: Colors.green,
                        backgroundColor: kDrawerBackgroundColor,
                      ),
                      DrawerItem(
                        buttonText: 'Reporting',
                        iconData: Icons.bar_chart,
                        onPress: (){},
                        iconColor: Colors.yellow,
                        backgroundColor: kSignInTextColor,
                      ),
                      DrawerItem(
                        buttonText: 'Products',
                        iconData: Icons.local_offer_rounded,
                        onPress: (){},
                        iconColor: Colors.orange,
                        backgroundColor: kSignInTextColor,
                      ),
                      DrawerItem(
                        buttonText: 'Customers',
                        iconData: Icons.person_search_outlined,
                        onPress: (){},
                        iconColor: Colors.purple,
                        backgroundColor: kSignInTextColor,
                      ),
                      DrawerItem(
                        buttonText: 'Setup',
                        iconData: Icons.settings,
                        onPress: (){},
                        iconColor: Colors.blueGrey,
                        backgroundColor: kSignInTextColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width:145,
            color: kDrawerBackgroundColor,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      Container(
                        height:91,
                        decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: kHelpTextColor,
                                    width:1.0,
                                    )
                                )
                              ),
                        child:Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Main Register',
                                 style:TextStyle(
                                  color:kHelpTextColor,
                                  fontSize: 18,
                                  fontFamily: 'Lato', 
                                  fontWeight: FontWeight.bold           
                                    )
                                ),
                                Text(
                                'Main Outlet',
                                 style:TextStyle(
                                  color:kHelpTextColor,
                                  fontSize: 14,
                                  fontFamily: 'Lato',            
                                    )
                                ),
                                TextButton(
                                  onPressed: (){},
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Text(
                                         'Switch',
                                          style:TextStyle(
                                          color:kHelpTextColor,
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          decoration: TextDecoration.underline            
                                            ),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(top: 2),
                                           child: Icon(
                                            Icons.keyboard_arrow_down,
                                              size: 14,
                                             color: kHelpTextColor,
                                            ),
                                         ),
                                     ],
                                   )
                                ),
                            ],
                          ),
                        )
                      ),
                      DrawerMenuItem(
                        buttonText: 'Sell',
                      onPress: (){}, 
                      textColor: kDashboardIconColor
                      ),
                      DrawerMenuItem(
                        buttonText: 'Open/Close',
                      onPress: (){}, 
                      textColor: kHelpTextColor
                      ),
                      DrawerMenuItem(
                        buttonText: 'Sales History',
                      onPress: (){}, 
                      textColor: kHelpTextColor
                      ),
                      DrawerMenuItem(
                        buttonText: 'Fulfillments',
                      onPress: (){}, 
                      textColor: kHelpTextColor
                      ),
                      DrawerMenuItem(
                        buttonText: 'Cash Management',
                      onPress: (){}, 
                      textColor: kHelpTextColor
                      ),
                      DrawerMenuItem(
                        buttonText: 'Status',
                      onPress: (){}, 
                      textColor: kHelpTextColor
                      ),
                      DrawerMenuItem(
                        buttonText: 'Settings',
                      onPress: (){}, 
                      textColor: kHelpTextColor
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            color: Colors.transparent,
            child: Stack(
            children: [
              Positioned(
              top:10.0,
              right:-10.0,
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
                      backgroundColor: kDrawerBackgroundColor,
                      child: Icon(
                        Icons.close,
                        color: kSignInTextColor
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