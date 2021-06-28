import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class ReportTableSideCell extends StatelessWidget {
  ReportTableSideCell({
    @required this.width,
    @required this.paddingLeft,
    @required this.paddingRight,
    @required this.rightBorder,
    @required this.bottomBorder,
    @required this.text
  });
  final double width;
  final double paddingLeft;
  final double paddingRight;
  final bool rightBorder;
  final bool bottomBorder;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
                    width:width,
                    height:50,
                    decoration:BoxDecoration(
                      color: Color(0xFFfafafa),
                      border: Border(
                        right:BorderSide(
                           color: rightBorder ? 
                                kTableBorderColor:kWhite,
                           width: rightBorder? 1.0:0.0
                           ),
                        bottom:BorderSide(
                           color: bottomBorder?kTableBorderColor:kWhite,
                           width: bottomBorder? 1.0:0.0
                           ),
                        )
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(
                                    left: paddingLeft,
                                    top:1,
                                    bottom: 1,
                                    right:paddingRight
                                    ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              text,style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: kAppBarColor
                              ),
                              ),
                          ],
                        ),
                      ),
                    );
  }
}