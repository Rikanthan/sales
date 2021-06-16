import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';

class EnterprisePlan extends StatelessWidget {
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
                              'ENTERPRISE',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                color:kHelpTextColor,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2,
                                ),
                              ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('A solution tailored to expanding\n  retailers or franchises',style: kMediumTextDarkNormalStyle,)
                          ],
                        ),
                      ),
                    ),
                    Container(
                        color: Colors.white,
                        width: 232,
                        height: 254,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('6+ Outlets',style:kSubHeaderTextStyle),
                              Padding(
                                padding: const EdgeInsets.only(top:40.0,bottom: 10.0),
                                child: Image.asset(
                                  'assets/images/enterprise-plan-v1.png',
                                  width: 140,
                                  height: 70.3,
                                  )
                              ),
                              Divider(
                                thickness: 1,
                                color: kPlanCardBottomColor,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Text(
                                  ' All Feature in the Pro Plan\nDedicated Account Manager\n   Customized Onboarding',
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
                      height: 139,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:12.0,bottom: 20.0),
                              child: Text(
                                'Get a Custom Quote',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: kAppBarColor,
                                  fontSize: 18,
                                  fontFamily: 'Lato'
                                  ),
                                ),
                            ),
                            CustomButton(
                              buttonText: 'Talk to Us', 
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