import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/setup/app.dart';
import 'package:sales/pages/setup/billing.dart';
import 'package:sales/pages/setup/general.dart';
import 'package:sales/pages/setup/loyalty.dart';
import 'package:sales/pages/setup/outlet_registers.dart';
import 'package:sales/pages/setup/payment_types.dart';
import 'package:sales/pages/setup/personal_tokens.dart';
import 'package:sales/pages/setup/sales_tax.dart';
import 'package:sales/pages/setup/store_credit.dart';
import 'package:sales/pages/setup/user.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/cards/custom_cards/drawer_menu_item.dart';
import 'package:sales/widgets/drawer/main_drawer.dart';

enum SetupClicked {
  general,
  billing,
  outlets,
  payment,
  sales,
  loyalty,
  users,
  apps,
  personal,
  store
}
Color _clickColor(SetupClicked setupClicked,SetupClicked itemClick)
{
 Color clickedColor;
    setupClicked == itemClick  ? clickedColor =  kDashboardMidBarColor :
    clickedColor = kAppBarColor;
    return clickedColor;
}
class SetupDrawer extends StatelessWidget {
 SetupDrawer({
   @required this.setupClicked
 });
 final SetupClicked setupClicked;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      color:Colors.transparent,
      child: Row(
        children: [
          MainDrawer(isDarkMode: false, mainDrawerClick: MainDrawerClick.setup),
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
                        buttonText: 'General',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> General()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.general)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Billing',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Billing()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.billing)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Outlets and Registers',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> OutletRegisters()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.outlets)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Payment Types',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> PaymentTypes()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.payment)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Sales Taxes',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> SalesTax()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.sales)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Loyalty',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Loyalty()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.loyalty)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Users',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Users()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.users)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Apps',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> App()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.apps)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Personal Tokens',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> PersonalTokens()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.personal)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Store Credit',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> StoreCredit()));
                      }, 
                      textColor: _clickColor(setupClicked, SetupClicked.store)
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