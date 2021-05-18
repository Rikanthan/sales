import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class DashboardMidBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Container(
                  height: 66,
                  width: 1024,
                  color:kDashboardMidBarColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.warning_rounded,
                        size: 15.0,
                        color: kHelpTextColor,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left:8.0,right: 24),
                        child: Text(
                          'You have 13 days left on your trial.',
                          style:TextStyle(
                            color: kHelpTextColor,
                            fontFamily: 'Lato',
                            fontSize: 15
                            )
                          ),
                      ),
                        Text(
                        'Activate your account now.',
                        style:TextStyle(
                          color: kHelpTextColor,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          decoration:
                             TextDecoration.underline
                          )
                        )
                    ],
                  ),
                )
              ],
            );
  }
}