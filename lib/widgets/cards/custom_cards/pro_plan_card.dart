import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/custom_cards/lite_plan_card.dart';

class ProPlan extends StatelessWidget {
  ProPlan({
    @required this.planType
  });
  final PlanType planType;
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: planType== PlanType.pro ? BoxDecoration(
            border: Border.all(width: 3,color: kSignInButtonColor ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5)
              ),
              boxShadow: [
                BoxShadow(
                  color: kSignInButtonColor.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
               ]
            ):
            BoxDecoration(),
          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 232,
                      color:kSignInButtonColor,
                      child: Center(child: Text('Recommended',style: kMediumTextDarkNormalStyle,)),
                    ),
                    Container(
                      color: kAppBarColor,
                        width: 232,
                        height: 115,
                        child: Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 1,left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PRO',
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
                              Text('A complete platform for\nestablished single or multi-\n           store retailers',style: kMediumTextDarkNormalStyle,)
                            ],
                          ),
                        ),
                      ),
                      Container(
                          color: Colors.white,
                          width: 232,
                          height: 404,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('1+ Outlets',style:kSubHeaderTextStyle),
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0,bottom: 10.0),
                                  child: Text(
                                    'Start with 1 Register per\n                    Outlet\nAdd more as you grow',
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
                                    'Unlimited Turnover',
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
                                  padding: const EdgeInsets.only(top:10.0),
                                  child: Text(
                                      'Advanced Reporting',style: kMediumTextNormalStyle,
                                    ),
                                ),
                                SizedBox(height:3),
                                Text(
                                      'Advanced Promotions',style: kMediumTextNormalStyle,
                                    ),
                                SizedBox(height:3),
                                Text(
                                      'Gift Cards & Loyalty',style: kMediumTextNormalStyle,
                                    ),
                                SizedBox(height:3),
                                Text(
                                      'Customizable User',style: kMediumTextNormalStyle,
                                    ),
                                SizedBox(height:3),
                                Text(
                                      'Permissions',style: kMediumTextNormalStyle,
                                    ),
                                SizedBox(height:3),
                                Text(
                                      'All Add-ons',style: kMediumTextNormalStyle,
                                    ),
                                SizedBox(height:3),
                                Text(
                                      'Ecommerce Channels',style: kMediumTextNormalStyle,
                                    ),
                                SizedBox(height:3),
                                Text(
                                      'API Access',style: kMediumTextNormalStyle,
                                    ),
                                SizedBox(height:3),
                                Text(
                                      'Award Winning Support',style: kMediumTextNormalStyle,
                                    ),
                              ],
                            ),
                          ),
                        ),
                      Container(
                        color: PlanType.pro == planType ? kInputBorderColor : kPlanCardBottomColor,
                        width: 232,
                        height: 220,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
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
                                  Text('129',style: TextStyle(
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
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Text(
                                  'per Outlet',
                                  style: kMediumTextStyle
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
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
                              PlanType.lite != planType ?
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                   Icon(
                                     Icons.check,
                                     size: 18.0,
                                     color:kSignInButtonColor
                                     ),
                                     Text(
                                    ' Plan Selected',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: kSignInButtonColor,
                                      fontSize: 18,
                                      fontFamily: 'Lato'
                                      ),
                                    ), 
                                  ],
                                ),
                              ):
                              CustomButton(
                              buttonText: 'Select Plan', 
                              onPress: (){}, 
                              buttonColor: kSignInButtonColor, 
                              topPadding: 20,
                              leftPadding: 60
                              )
                            ],
                          ),
                        ),
                      )
                  ],
                ),
    );
  }
}