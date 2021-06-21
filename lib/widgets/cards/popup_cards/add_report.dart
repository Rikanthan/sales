import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/check_box_container.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class   AddReportPopup extends StatelessWidget {
  const   AddReportPopup({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:790,
      height: 670,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 730,
            height:720,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Choose other Measures to show.',
                    style: TextStyle(
                      color: kAppBarColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato' 
                      )
                    ),
                    SizedBox(height: 32,),
                  Container(
                    color: Colors.white,
                    height: 465,
                    width: 656,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SALES',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: kAppBarColor,
                            letterSpacing: 1.25
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kAppBarColor,
                                height: 1,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Revenue' ,
                                     description: 'Total value of items sold'
                                     ),
                                    CheckBoxContainer(
                                     header: 'Margin (%)' ,
                                     description: 'Percentage of revenue that you keep as\ngross profit.'
                                     ),
                                     CheckBoxContainer(
                                     header: 'Sale Count' ,
                                     description: 'Total number of sales and returns'
                                     ),
                                    CheckBoxContainer(
                                     header: 'Items Sold per Day' ,
                                     description: 'Average number of items sold per day.'
                                     ),
                                      CheckBoxContainer(
                                     header: 'Avg. Sale Value' ,
                                     description: 'Average transcation/sale value.'
                                     ),
                                 ],
                                ),
                                Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Gross Profit' ,
                                     description: 'Total value in the specified period less the\ntotal cost of products sold for that period.'
                                     ),
                                     CheckBoxContainer(
                                     header: 'Customer Count' ,
                                     description: 'Number of unique, registered customers served\nin the specified period'
                                     ),
                                     CheckBoxContainer(
                                     header: 'Items Sold' ,
                                     description: 'Total number of items sold'
                                     ),
                                    CheckBoxContainer(
                                     header: 'Avg. Items per Sale' ,
                                     description: 'Average number of items per sale.'
                                     ),
                                      CheckBoxContainer(
                                     header: 'Discounted (%)' ,
                                     description: 'Average discount given on total sale value\n(excl tax).'
                                     ),
                                 ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                            'PRODUCT PRICES & VALUE',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: kAppBarColor,
                            letterSpacing: 1.25
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kAppBarColor,
                                height: 1,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Avg. Cost' ,
                                     description: 'Average supply price of a single item.'
                                     ),
                                    CheckBoxContainer(
                                     header: 'Cost of Goods Sold' ,
                                     description: 'Total cost of products sold.'
                                     ),
                                 ],
                                ),
                                Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Inventory Cost' ,
                                     description: 'Total value in the inventory on hand,using\naverage cost.'
                                     ),
                                     CheckBoxContainer(
                                     header: 'Retail Value (Excl.Tax)' ,
                                     description: 'Total value in the inventory on hand,using\naverage cost.'
                                     ),
                                 ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                            'INVENTORY LEVELS',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: kAppBarColor,
                            letterSpacing: 1.25
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kAppBarColor,
                                height: 1,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Current Inventory' ,
                                     description: 'Amount of inventory as at today.'
                                     ),
                                    CheckBoxContainer(
                                     header: 'Reorder Poing' ,
                                     description: 'Threshold for inventory being low.'
                                     ),
                                 ],
                                ),
                                Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Start Date Inventory' ,
                                     description: 'Amount of inventory as of the start of\nchosen dates.'
                                     ),
                                     CheckBoxContainer(
                                     header: 'Reorder Amount' ,
                                     description: 'Default quantity ordered when added to a\nPurchase Order.'
                                     ),
                                 ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                            'INVENTORY PERFORMANCE',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: kAppBarColor,
                            letterSpacing: 1.25
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kAppBarColor,
                                height: 1,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Sell-through Rate' ,
                                     description: 'Percentage of sold items out of all items\n.'
                                     ),
                                    CheckBoxContainer(
                                     header: 'Return Count' ,
                                     description: 'Number of sold items returned by customers.'
                                     ),
                                 ],
                                ),
                                Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Days Cover' ,
                                     description: 'Estimated number of days current inventory\nwill last.'
                                     ),
                                     CheckBoxContainer(
                                     header: 'Return (%)' ,
                                     description: 'Percentage of sold items that have been\nreturned by customers.'
                                     ),
                                 ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                            'DATES',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: kAppBarColor,
                            letterSpacing: 1.25
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kAppBarColor,
                                height: 1,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'Created' ,
                                     description: 'Date this product was first added to your store.'
                                     ),
                                    CheckBoxContainer(
                                     header: 'Last Sale' ,
                                     description: 'Date of the last sale.'
                                     ),
                                 ],
                                ),
                                Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CheckBoxContainer(
                                     header: 'First Sale' ,
                                     description: 'Date of the first sale.'
                                     ),
                                 ],
                                )
                              ],
                            ),
                        ],
                      ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        buttonText: 'Cancel',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kDashboardIconColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        ),
                        SizedBox(width: 8,),
                      CustomButton(
                        buttonText: 'Update Report',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        ),
                    ],
                  )         
                ],
              ),
            ),
          ),
          EscButton(
            isDarkMode: false,
            positionedRight: 0.0,
            positionedTop: 0.0, 
            width: 60
            )
        ],
      ),
    ),
  );
  }
}