import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/setup/billing.dart';
import 'package:sales/widgets/TextInput/text_input_maxlines.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/button_text.dart';
import 'package:sales/widgets/divider/custom_divider.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class BillPayment extends StatefulWidget {
  @override
  _BillPaymentState createState() => _BillPaymentState();
}

class _BillPaymentState extends State<BillPayment> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked: SetupClicked.billing),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(top:24.0,bottom: 24.0),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: !isSwitch ? kFooterColor : kSignInButtonColor,
                        ), 
                      onTap: (){
                        setState(() {
                          isSwitch = false;
                        });
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> Billing()));
                      }
                    ),
                    Text(' Bill Payment',style: k32Black,)
                  ],
                ),
              ),
              Container(
                color: kInputBorderColor,
                height: 93,
                child: Padding(
                  padding: const EdgeInsets.only(left:48.0,right: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Pay your first bill now by credit card or debit card to activate your account. ',
                        style: k15BlackNormal,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top:24.0, left:48.0, right: 48.0,bottom: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             SizedBox(height:32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Enter Credit Card Details',style: k24Black,)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 317.33,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'By clicking "Activate Your Account" you.',
                                        style: k15BlackNormal,
                                        ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'agree to Vend\'s',
                                            style: k15BlackNormal,
                                            ),
                                          GestureDetector(
                                            onTap:(){},
                                            child: Text(
                                              ' terms of use ',
                                              style: k15Blue,
                                              ),
                                          ),
                                          Text(
                                            'and confirm',
                                            style: k15BlackNormal,
                                            ),
                                        ],
                                      ),
                                      Text(
                                      'that you\'ve read and acknowledged Vend\'s',
                                      style: k15BlackNormal,
                                      ),
                                      GestureDetector(
                                        onTap:(){},
                                        child: Text(
                                        'privacy policy',
                                        style: k15Blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                  ), 
                                  Padding(
                                    padding: const EdgeInsets.only(left:12.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                      Text('Make Payment for Pro Plan',style: k15BlackDark,),
                                      SizedBox(
                                        height: 19.5,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 230,
                                            height: 36,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Pro Plan'
                                                  ,style: k15BlackNormal,
                                                  ),
                                                Text(
                                                  '\$129.00/mo'
                                                  ,style: k15BlackNormal,
                                                  ),
                                              ],
                                            )
                                          ),
                                          Text(
                                          '\$1548.00'
                                          ,style: k15BlackNormal,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 230,
                                            child: Text(
                                              'Today\'s Total (USD)',style: k15BlackDark,
                                              )
                                            ),
                                          Text(
                                          '\$1548.00'
                                          ,style: k15BlackDark,
                                          ),
                                        ],
                                      ),
                                      CustomDivider(
                                        topPadding: 20,
                                        width: 320, 
                                        bottomPadding: 20, 
                                        thickness: 2, 
                                        color: kInputBorderColor
                                        ),
                                      Text(
                                        'You are billed yearly,and will next be charged'
                                        ,style: k15BlackNormal,
                                        ),
                                      Text(
                                          '\$1,548.00 on 28 June 2022',
                                          style: k15BlackNormal,
                                        ),
                                      SizedBox(
                                        height: 40.0,
                                      ),
                                      Text(
                                          'Card Number'
                                          ,style: k15BlackDark,
                                          ),
                                      TextInputMaxLines(
                                        validate: (val) => val.length == 0 ? 'Enter card number' : null,
                                        onChange: (val) {
                                                },
                                        paddingTop: 5, 
                                        hideText: false, 
                                        height: 60,
                                        hintText:'Enter card number', 
                                        width: 590, 
                                        darkMode: false, 
                                        maxLines: 3
                                        ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      Text(
                                          'Expiry Date'
                                          ,style: k15BlackDark,
                                          ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextInputMaxLines(
                                              validate: (val) => val.length == 0 ? 'Enter card number' : null,
                                              onChange: (val) {
                                                      },
                                              paddingTop: 5, 
                                              hideText: false, 
                                              height: 60,
                                              hintText:'MM', 
                                              width: 288, 
                                              darkMode: false, 
                                              maxLines: 3
                                              ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          TextInputMaxLines(
                                              validate: (val) => val.length == 0 ? 'Enter card number' : null,
                                              onChange: (val) {
                                                      },
                                              paddingTop: 5, 
                                              hideText: false, 
                                              height: 60,
                                              hintText:'YYYY', 
                                              width: 288, 
                                              darkMode: false, 
                                              maxLines: 3
                                              )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      Text(
                                          'Security Code'
                                          ,style: k15BlackDark,
                                          ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          TextInputMaxLines(
                                              validate: (val) => val.length == 0 ? 'Enter card number' : null,
                                              onChange: (val) {
                                                      },
                                              paddingTop: 5, 
                                              hideText: false, 
                                              height: 60,
                                              hintText:'Enter security code', 
                                              width: 288, 
                                              darkMode: false, 
                                              maxLines: 3
                                              ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Image.asset(
                                              'assets/images/cvv-icon-v1.png',
                                                height:24.0,
                                                width: 42,
                                                ),                                         
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/payment-express-logo-v1.png',
                                              height:58.0,
                                              width: 165,
                                              ),
                                          SizedBox(
                                            width: 32,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'We use DPS Payment Express to process all',
                                                style: k14Black,
                                                ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'credit card payments. View their',
                                                    style: k14Black,
                                                    ),
                                                    GestureDetector(
                                                      child: Text(
                                                        ' privacy ',style: k14Blue,
                                                        ),
                                                    ),
                                                ],
                                              ),
                                              GestureDetector(
                                                child: Text(
                                                  'statement',style: k14Blue,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      ButtonText(
                                          buttonText: 'Activate Your Account', 
                                          onPress: (){},
                                          buttonColor: kSignInButtonColor, 
                                          topPadding: 30, 
                                          leftPadding: 40,
                                          buttonTextColor: kHelpTextColor, 
                                          fontSize: 18
                                        )
                                    ],
                                  ),
                                ),
                              ] 
                            )
                          ),                            
                        ],
                      ),
                  )
                ],
              )       
            ]
          )
        )
      )
    );
  }
}

          
  