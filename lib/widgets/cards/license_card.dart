import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';

class LicenseCard extends StatelessWidget {
  const LicenseCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 139.19,
                height: 34.5,
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
                height: 34.5,
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
                height: 34.5,
              ),
              Container(
                width: 143.72,
                height: 34.5,
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
              )
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                width: 139.19,
                height: 79,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Outlets',style: kMediumTextNormalStyle,),
                  ],
                ),
              ),
              Container(
                color:Colors.transparent,
                width: 147.42,
                height: 79,
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
              Container(
                width: 215.67,
                height: 34.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1@\$129/mo (Pro Plan)',style: kMediumTextNormalStyle,),
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
                    Text('129',style: TextStyle(
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
            children: [
              Container(
                width: 139.19,
                height: 79,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Registers',style: kMediumTextNormalStyle,),
                  ],
                ),
              ),
              Container(
                color:Colors.transparent,
                width: 147.42,
                height: 79,
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
              Container(
                width: 215.67,
                height: 34.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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