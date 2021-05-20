import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class CustomSubHeader extends StatelessWidget {
  const CustomSubHeader({
    Key key,
   @required this.text,
   @required this.width,
   @required this.leftPadding,
   @required this.align
  }) : super(key: key);

  final String text;
  final double width;
  final double leftPadding;
  final MainAxisAlignment align;
  @override
  Widget build(BuildContext context) {
    return  Container(
                width:width,
                height:70,
                child:Padding(
                  padding:  EdgeInsets.only(top:16,bottom:16,left:leftPadding,right:40),
                  child: Row(
                    mainAxisAlignment: align,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style:TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
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