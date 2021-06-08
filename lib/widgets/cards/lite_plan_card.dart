import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';

class LitePlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  SizedBox(height:60),
                  Container(
                    color: kAppBarColor,
                      width: 232,
                      height: 115,
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,bottom: 20,left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'LITE',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                color:kHelpTextColor,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2
                                ),
                              ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Intuitive POS and basic store\nmanagement for small retailers',style: kMediumTextDarkNormalStyle,)
                          ],
                        ),
                      ),
                    ),
                    Container(
                        color: Colors.white,
                        width: 232,
                        height: 288,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('1 Outlet',style:kSubHeaderTextStyle),
                              Padding(
                                padding: const EdgeInsets.only(top:20.0,bottom: 10.0),
                                child: Text(
                                  'Start with 1 Register\nAdd more as you grow',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kAppBarColor,
                                    fontSize: 15,
                                    fontFamily: 'Lato'
                                    ),
                                  ),
                              ),
                              Divider(
                                thickness: 1,
                                color: kPlanCardBottomColor,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                                child: Text(
                                  'Up to \$20k USD Monthly\n                 Turnover',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kAppBarColor,
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    height: 1.2
                                    ),
                                  ),
                              ),
                              Divider(
                                thickness: 1,
                                color: kPlanCardBottomColor,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Text(
                                  'Small Business Reporting\n        Basic Promotions\nXero Accounting Add-on\n  Award Winning Support',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kAppBarColor,
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    height: 1.25
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Container(
                      color: kPlanCardBottomColor,
                      width: 232,
                      height: 198,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height:8),
                                    Text('\$',style: kSubHeaderTextStyle,),
                                  ],
                                ),
                                Text('99',style: TextStyle(
                                  fontFamily:'Lato',
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700,
                                  color: kAppBarColor,
                                  textBaseline: TextBaseline.alphabetic
                                  ),
                                  ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(height:28),
                                    Text(' / mo',style: kSubHeaderTextStyle,),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:12.0,bottom: 20.0),
                              child: Text(
                                'USD Billed Annually',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: kAppBarColor,
                                  fontSize: 15,
                                  fontFamily: 'Lato'
                                  ),
                                ),
                            ),
                            CustomButton(
                              buttonText: 'Select Plan', 
                              onPress: (){}, 
                              buttonColor: kDashboardMidBarColor, 
                              topPadding: 20,
                              leftPadding: 60
                              )
                          ],
                        ),
                      ),
                    )
                ],
              );
  }
}