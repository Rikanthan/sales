import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key key,
   @required this.text,
   @required this.backgroundColor
  }) : super(key: key);

  final String text;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return  Container(
                color:backgroundColor,
                child:Padding(
                  padding:  EdgeInsets.only(top:24,bottom:24,left:48,right:48),
                  child: Row(
                    children: [
                      Text(
                        text,
                        style:TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 32,
                          color: kSignInTextColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                    ],
                  ),
                )
              );
  }
}