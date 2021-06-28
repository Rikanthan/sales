import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
class ReportTableCell extends StatelessWidget {
  ReportTableCell({
    @required this.width,
    @required this.paddingLeft,
    @required this.paddingRight,
    @required this.rightBorder,
    @required this.text
  });
  final double width;
  final double paddingLeft;
  final double paddingRight;
  final bool rightBorder;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
                    width:width,
                    height:45,
                    decoration:BoxDecoration(
                      color: Color(0xFFf8f8f8),
                      border: Border(
                        right:BorderSide(
                           color: rightBorder?kTableBorderColor:kWhite,
                           width: rightBorder? 1.0:0.0
                           ),
                        bottom: BorderSide(color: kTableBorderColor)
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
                              text,style: k15BlackDark,
                              ),
                          ],
                        ),
                      ),
                    );
  }
}