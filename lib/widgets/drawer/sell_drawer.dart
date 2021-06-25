import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/sell/cash_management.dart';
import 'package:sales/pages/sell/close_register.dart';
import 'package:sales/pages/sell/dashboard.dart';
import 'package:sales/pages/sell/fulfillments.dart';
import 'package:sales/pages/sell/sales_history.dart';
import 'package:sales/pages/sell/settings.dart';
import 'package:sales/pages/sell/status.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/cards/custom_cards/drawer_menu_item.dart';
import 'package:sales/widgets/cards/popup_cards/switch.dart';
import 'package:sales/widgets/drawer/main_drawer.dart';

enum SalesClicked {
  sell,
  open,
  salesHistory,
  fulfillments,
  cashManagement,
  status,
  settings
}
Color _clickColor(SalesClicked salesClicked,SalesClicked itemClick)
{
 Color clickedColor;
    salesClicked == itemClick  ? clickedColor =  kDashboardMidBarColor :
    clickedColor = kHelpTextColor;
    return clickedColor;
}

class SellDrawer extends StatelessWidget {
SellDrawer({@required this.salesClicked});
final SalesClicked salesClicked;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:290,
      color:Colors.transparent,
      child: Row(
        children: [
         MainDrawer(isDarkMode: true, mainDrawerClick: MainDrawerClick.sell),
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
                                  onPressed: (){
                                    showDialog(
                                      context: context,
                                       builder: (_)=> SwitchMode());
                                  },
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
                      onPress: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> Dashboard()));
                      }, 
                      textColor: _clickColor(salesClicked, SalesClicked.sell)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Open/Close',
                      onPress: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> CloseRegister()));
                      }, 
                      textColor: _clickColor(salesClicked, SalesClicked.open)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Sales History',
                      onPress: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> SalesHistory()));
                      }, 
                      textColor: _clickColor(salesClicked, SalesClicked.salesHistory)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Fulfillments',
                      onPress: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> Fullfillments()));
                      }, 
                      textColor: _clickColor(salesClicked, SalesClicked.fulfillments)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Cash Management',
                      onPress: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> CashManagement()));
                      }, 
                      textColor: _clickColor(salesClicked, SalesClicked.cashManagement)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Status',
                      onPress: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> SellStatus()));
                      }, 
                      textColor: _clickColor(salesClicked, SalesClicked.status)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Settings',
                      onPress: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> SellSettings()));
                      }, 
                      textColor: _clickColor(salesClicked, SalesClicked.settings)
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          EscButton(
            isDarkMode: true, 
            positionedRight: -10.0, 
            positionedTop: 10.0,
            width: 50.0
            )
        ],
      ),
    );
  }
}