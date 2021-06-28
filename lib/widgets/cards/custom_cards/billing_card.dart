import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/cards/custom_cards/lite_plan_card.dart';
import 'package:sales/widgets/divider/custom_divider.dart';

enum BillingType{
  annual,
  monthly
}

class BillingCard extends StatefulWidget {
   BillingCard({@required this.planType });
  final PlanType planType;
  
  @override
  _BillingCardState createState() => _BillingCardState();
}

class _BillingCardState extends State<BillingCard> {
  BillingType billingType = BillingType.annual;
  String total = 'Annualy';
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'How do your want to be billed?',
            style: TextStyle(
              color: kAppBarColor,
              fontFamily: 'Lato',
              fontSize: 18,
              fontWeight: FontWeight.w400
              ),
            ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    billingType = BillingType.annual;
                    total = 'Annualy';
                  });
                },
                child: Container(
                  width: 348,
                  height: 189,
                  decoration: BoxDecoration(
                    color: kWhite,
                    border: Border.all(
                      color:  billingType == BillingType.annual ? 
                                                  kSignInButtonColor : 
                                                  kTableBorderColor,
                      width: 2
                      ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)
                      )
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                                              top:12.0,
                                              bottom: 12.0,
                                              left: 20, 
                                              right: 20
                                              ),
                    child: Column(
                      children: [
                        billingType == BillingType.annual ?
                        Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check,
                            size: 18,
                            color:kSignInButtonColor
                            ),
                          Text(
                            '  Annual Billing',
                            style: kSubHeaderTextStyle,
                          ),
                        ],
                      ) :
                        Center(
                          child: Text(
                            'Annual Billing',
                            style: kSubHeaderTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                          child: Divider(
                            thickness: 1,
                            color: kTableBorderColor,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              PlanType.lite == widget.planType ?
                              'Get your bill once a\nyear and save \$240\neach year':
                                          'Get your bill once a\nyear and save \$360\neach year',
                                          style: k15BlackNormal,
                                          ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height:3),
                                          Text('\$',style: k15BlackDark,),
                                        ],
                                      ),
                                      Text( 
                                        PlanType.lite == widget.planType ? 
                                                            '99':'129',
                                      style: TextStyle(
                                        fontFamily:'Lato',
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: kAppBarColor,
                                        textBaseline: TextBaseline.alphabetic
                                          ),
                                        ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(height:1),
                                          Text(' / mo',style: k15BlackNormal,),
                                        ],
                                      )
                                    ],
                                  ),
                                  Text(
                                    PlanType.lite == widget.planType ? 
                                        'USD Billed Annually\nTotal bill:\$ 1188\nannually' : 
                                          'USD Billed Annually\nTotal bill:\$ 1548\nannually'
                                    ,style: k15BlackNormal,)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  setState(() {
                    billingType = BillingType.monthly;
                    total = 'Monthly';
                  });
                },
                child: Container(
                  width: 350,
                  height: 189,
                  decoration: BoxDecoration(
                    color: kWhite,
                    border: Border.all(
                      color: billingType == BillingType.monthly ? 
                                          kSignInButtonColor : 
                                          kTableBorderColor,
                      width: 2
                      ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5)
                      )
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                                                top:12.0,
                                                bottom: 12.0,
                                                left: 20, 
                                                right: 20
                                                ),
                    child: Column(
                      children: [
                        billingType == BillingType.monthly ?
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check,
                              size: 18,
                              color:kSignInButtonColor
                              ),
                            Text(
                              '  Monthly Billing',
                              style: kSubHeaderTextStyle,
                            ),
                          ],
                        ):
                        Center(
                          child: Text(
                                '  Monthly Billing',
                                style: kSubHeaderTextStyle,
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                          child: Divider(
                            thickness: 1,
                            color: kTableBorderColor,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                'Get your bill once a\nmonth',
                                style: k15BlackNormal,
                                ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height:3),
                                          Text(
                                              '\$',
                                              style: k15BlackDark,
                                              ),
                                        ],
                                      ),
                                      Text( 
                                        PlanType.lite == widget.planType ? 
                                                    '119' : '159',
                                      style: TextStyle(
                                        fontFamily:'Lato',
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: kAppBarColor,
                                        textBaseline: TextBaseline.alphabetic
                                          ),
                                        ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(height:1),
                                          Text(
                                              ' / mo',
                                              style: k15BlackNormal,
                                              ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                      'USD Billed Monthly',
                                      style: k15BlackNormal,
                                      )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
           Container(
                width: 696,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(
                    color: kTableBorderColor,
                    width: 1
                    ),
                  ),
              )
            ),
            SizedBox(
              height: 20,
            ),
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Bill',style: kSubHeaderTextStyle,),
              SizedBox(
                width: 500,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height:10),
                            Text('\$',style: kSubHeaderTextStyle,),
                          ],
                        ),
                        Text(
                         billingType == BillingType.monthly && 
                                widget.planType == PlanType.pro ? '159'
                          : billingType == BillingType.annual && 
                                  widget.planType == PlanType.pro ? '1548'
                          : billingType == BillingType.monthly && 
                                  widget.planType == PlanType.lite ? '119'
                          : '1188'
                          ,style: TextStyle(
                          fontFamily:'Lato',
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                          color: kAppBarColor,
                          textBaseline: TextBaseline.alphabetic
                            ),
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('USD Billed $total',style: k15BlackNormal,)
                ],
              )
            ],
          ),
          CustomDivider(
            topPadding: 20, 
            width: 696, 
            bottomPadding: 20,
             color: kTableBorderColor,
             thickness: 1,
            ),
            Row(
              crossAxisAlignment: _isSelected ? 
                                      CrossAxisAlignment.start : 
                                          CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                      activeColor: MaterialStateColor.
                                            resolveWith(
                                                      (states) => 
                                                          kSignInButtonColor
                                                          ),
                      focusColor: MaterialStateColor
                                              .resolveWith(
                                                        (states) => 
                                                        kSignInButtonColor
                                                        ),
                      value: _isSelected,
                       onChanged: (newValue){
                         setState(() {
                           _isSelected = newValue;
                         });
                       }
                      ),
                SizedBox(
                  width:12
                ),
                !_isSelected ?
                Text(
                  'I have a referral or coupon code',
                      style: TextStyle(
                          fontFamily:'Lato',
                          fontSize: 18,
                          color: kAppBarColor,
                            ),
                        ) 
                :
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                  'I have a referral or coupon code',
                      style: TextStyle(
                          fontFamily:'Lato',
                          fontSize: 18,
                          color: kAppBarColor,
                            ),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0,bottom: 20.0),
                      child: Text(
                          'If you were referred by a friend, enter the referral code given'
                          '- you will both get a one time credit to\nyour subscriptions.'
                          , style: k15BlackNormal,
                          ),
                    ),
                    Text(
                      'Referral or coupon code',
                    style: k15BlackDark,
                    ),
                    TextInput(
                  darkMode: false,
                  validate: (val) => val.length == 0 ? 'Enter the coupon code' : null,
                onChange: (val) {
                          },
                    paddingTop: 5, 
                    hideText: false, 
                    height: 46,
                    width:400,
                    hintText: 'Enter referral or coupon code',
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
            CustomDivider(
            topPadding: 20, 
            width: 696, 
            bottomPadding: 20,
            thickness: 1,
            color: kTableBorderColor,
            ),
        ],
      ),
    );
  }
}