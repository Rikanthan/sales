import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class RegisterCell extends StatelessWidget {
  RegisterCell({
    @required this.width,
    @required this.text,
    @required this.isLeftBorder,
    @required this.isTextBlue,
    @required this.isTextBold,
    @required this.alignment
  });
  final double width;
  final bool isLeftBorder;
  final String text;
  final bool isTextBlue;
  final bool isTextBold;
  final MainAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
                width: width,
                height: 26,
                decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: Color(0xFFd8d8d8),width: isLeftBorder? 1 : 0),
                right:BorderSide(color: Color(0xFFd8d8d8),width: 1),
                bottom: BorderSide(color: Color(0xFFdcdcdc),width:1),
                  ),
                color:kWhite
                ),
                child:Padding(
                  padding: const EdgeInsets.only(top:5.0,bottom: 5,left: 9,right: 9),
                  child: Row(
                    mainAxisAlignment: alignment,
                    children: [
                      Text(
                        text,
                        style:TextStyle(
                          fontSize: 14,
                          fontFamily:'Roboto',
                          color: isTextBlue ? kLightBlue : kBlackOpacity,
                          fontWeight: isTextBold? FontWeight.w700 : FontWeight.normal
                          )
                      ),
                    ],
                  ),
                )
              );
  }
}