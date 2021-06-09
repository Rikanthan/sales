import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/cards/lite_plan_card.dart';

class LicenseCard extends StatelessWidget {
  const LicenseCard({
    Key key,
    @required this.planType
  }) : super(key: key);
  final PlanType planType;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 139.19,
                height: 35,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kTableBorderColor, width: 1,))
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:16.0),
                      child: Text('Item',style: kMediumTextStyle,),
                    ),
                  ],
                ),
              ),
              Container(
                width: 147.42,
                height: 35,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kTableBorderColor, width: 1,))
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8,bottom:16.0),
                      child: Text('Number of Licenses',style: kMediumTextStyle,),
                    ),
                  ],
                ),
              ),
              Container(
                width: 215.67,
                height: 35,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kTableBorderColor, width: 1,))
                  ),
              ),
              Container(
                width: 143.72,
                height: 35,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kTableBorderColor, width: 1,))
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:16.0),
                      child: Text('Total',style: kMediumTextStyle,),
                    ),
                  ],
                ),
              ),
              Container(
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kTableBorderColor, width: 1,))
                  ),
              ),
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 139.19,
                height: 79,
                child: Padding(
                  padding: const EdgeInsets.only(top:16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Outlets',style: kMediumTextNormalStyle,),
                    ],
                  ),
                ),
              ),
              Container(
                color:Colors.transparent,
                width: 111.42,
                child: TextInput(
                  darkMode: false,
                  validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                onChange: (val) {
                          },
                    paddingTop: 4, 
                    hideText: false, 
                    height: 46,
                    width:111.42,
                    hintText: '1',
                    )
              ),
              SizedBox(width: 36,),
              Container(
                width: 215.67,
                height: 34.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0,top: 16,),
                      child: Text(planType == PlanType.pro ? '1@\$129/mo (Pro Plan)' : '1@\$99/mo (Lite Plan)' ,style: kMediumTextNormalStyle,),
                    )
                  ],
                ),
              ),
              Container(
                width: 143.72,
                height: 34.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(height:3),
                        Text('\$',style: kSubHeaderTextStyle,),
                      ],
                    ),
                    Text(planType == PlanType.pro ? '129' :'99',style: TextStyle(
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
                        Text(' / mo',style: kSubHeaderTextStyle,),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 139.19,
                height: 79,
                child: Padding(
                  padding: const EdgeInsets.only(top:16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Registers',style: kMediumTextNormalStyle,),
                    ],
                  ),
                ),
              ),
              Container(
                color:Colors.transparent,
                width: 111.42,
                child: TextInput(
                  darkMode: false,
                  validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                onChange: (val) {
                          },
                    paddingTop: 4, 
                    hideText: false, 
                    height: 46,
                    width:111.42,
                    hintText: '1',
                    )
              ),
              SizedBox(width: 36,),
              Container(
                width: 215.67,
                height: 34.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0, top: 16),
                      child: Text('1 free Register',style: kMediumTextNormalStyle,),
                    )
                  ],
                ),
              ),
              Container(
                width: 143.72,
                height: 34.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(height:3),
                        Text('\$',style: kSubHeaderTextStyle,),
                      ],
                    ),
                    Text('0',style: TextStyle(
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
                        Text(' / mo',style: kSubHeaderTextStyle,),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}