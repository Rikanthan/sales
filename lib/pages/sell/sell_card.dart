import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/button_text.dart';
import 'package:sales/widgets/cards/custom_cards/payment_received.dart';
import 'package:sales/widgets/cards/popup_cards/add_customer.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class SellCard extends StatefulWidget {
  @override
  _SellCardState createState() => _SellCardState();
}

class _SellCardState extends State<SellCard> {
  bool complete = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.sell,),
      body:Container(
        color:kDashboardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardMidBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:24,right: 40),
                      child: Container(
                        color: kDashboardColor,
                        width:394.66,
                        child:Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    size: 28,
                                    color:Color(0xFF637078)
                                  ),
                                  onPressed: (){

                                    }
                                  ),
                                Padding(
                                  padding: EdgeInsets.only(left:10,bottom: 4),
                                  child: Text(
                                    'Sale',
                                     style: kLargeHeaderStyle
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:16),
                              for(int i = 0 ; i < 2 ; i++)
                              Padding(
                                padding: const EdgeInsets.only(top:8.0 , bottom: 8.0, left: 48),
                                child: Container(
                                  height: 35,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 45,
                                        child: Text(
                                          '1',
                                          style: kMediumTextDarkStyle
                                          ),
                                      ),
                                      Text(
                                          'My Girl Sunglasses',
                                          style: kMediumTextDarkStyle
                                          ),
                                      Spacer(),
                                      Text(
                                          '69.90',
                                          style: kMediumTextDarkStyle
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:48.0, top:16.0),
                                child: Divider(
                                  color: kTableBorderColor,
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 93,top: 16.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                          'Sub-total',
                                          style: kMediumTextDarkNormalStyle
                                          ),
                                    Text(
                                          'Rs139.80',
                                          style: kMediumTextDarkNormalStyle
                                          ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 93,bottom: 16.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                          'Tax No Tax',
                                          style: kMediumTextDarkNormalStyle
                                          ),
                                    Text(
                                          'Rs0.00',
                                          style: kMediumTextDarkNormalStyle
                                          ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:48.0),
                                child: Divider(
                                  color: kTableBorderColor,
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 48,top: 16.0,bottom: 16.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                          'SALE TOTAL',
                                          style: kMediumLetterSpacingStyle
                                          ),
                                    Text(
                                    '2 items',
                                    style: kMediumTextStyle1
                                    ),
                                    Spacer(),
                                    Text(
                                          'Rs139.80',
                                          style: kMediumTextDarkNormalStyle
                                          ),
                                  ],
                                ),
                              ),
                              if(complete)
                              Container(
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                            Padding(
                                        padding: const EdgeInsets.only(left:48.0),
                                        child: Divider(
                                          color: kTableBorderColor,
                                          thickness: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 93,top: 16.0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                  'Cash',
                                                  style: kMediumTextDarkNormalStyle
                                                  ),
                                            Text(
                                                  'Rs139.80',
                                                  style: kMediumTextDarkNormalStyle
                                                  ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 93,bottom: 16.0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                                  'Fri, 11 Jun 21 10:26am',
                                                  style: kMediumTextDarkNormalStyle
                                                  ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:93.0),
                                        child: Divider(
                                          color: kTableBorderColor,
                                          thickness: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 93,top: 16.0,bottom: 16.0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                  'TO PAY',
                                                  style: kMediumLetterSpacingStyle
                                                  ),
                                            Text(
                                                  'Rs0.00',
                                                  style: kMediumTextDarkNormalStyle
                                                  ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:93.0),
                                        child: Divider(
                                          color: kTableBorderColor,
                                          thickness: 1,
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            ],
                         )
                        ),
                    ),
                  ],
                ),
                complete ?
                PaymentReceived()
                :Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:24,right:48),
                      child: Container(      
                        decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: kDashboardSearchBarFillColor,
                                  borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  topRight: Radius.circular(4)
                                                ),
                                  border: Border.all(
                                      color: kAppBarColor,width: 1,
                                    )
                                ),
                                height: 604,
                        //width:440,
                        child:Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 30.0, right: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 277.33,
                                    child: Text(
                                      'Amount to Pay',
                                      style: kLargeHeaderStyle
                                      ),
                                  ),
                                    
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextInput(
                                        darkMode: true,
                                        validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                                        onChange: (val) {
                                              },
                                        paddingTop: 4, 
                                        hideText: false, 
                                        height: 60,
                                        width:200,
                                        hintText: '139.80 %',
                                        ),
                                        Text(
                                        'Edit to make a partial payment.',
                                        style: kMediumTextStyle1,
                                        ),
                                    ],
                                  ),
                                ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top:24.0,bottom: 20.0),
                                 child: ButtonText(
                                   buttonText: 'Cash', 
                                   onPress: (){
                                     setState(() {
                                       complete = true;
                                     });
                                   },
                                   buttonColor: kSignInButtonColor,
                                   topPadding: 26,
                                   leftPadding: 64, 
                                   buttonTextColor: kHelpTextColor, 
                                   fontSize: 18
                                   ),
                               ),
                                DashboardSearchBar(
                                  iconData: Icons.person,
                                  iconText: 'Add a customer to pay with the following options:',
                                  width:477.33,
                                  padding:0,
                                  darkMode: true,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ButtonText(
                                        buttonText: 'Layby', 
                                        onPress: (){
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) => AddCustomer(),
                                            );
                                        },
                                        buttonColor: Color(0xFF474e52),
                                        topPadding: 35,
                                        leftPadding: 60, 
                                        buttonTextColor: Color(0xFF6e7579), 
                                        fontSize: 18
                                        ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ButtonText(
                                        buttonText: '    On\nAccount', 
                                        onPress: (){},
                                        buttonColor: Color(0xFF474e52),
                                        topPadding: 25,
                                        leftPadding: 50, 
                                        buttonTextColor: Color(0xFF6e7579), 
                                        fontSize: 18
                                        ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ),
            
            
          ],
        ),
      )
    );
  }
}

