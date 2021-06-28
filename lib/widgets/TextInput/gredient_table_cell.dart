import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class GredientTableCell extends StatelessWidget {
  GredientTableCell({
    @required this.text,
    @required this.isTextButton,
    @required this.width,
    @required this.isLeftborder,
    @required this.isBottomRightRadius,
    @required this.isBottomLeftRadius,
    @required this.alignment,
    @required this.onPressed,
  });
  final String text;
  final bool isTextButton;
  final double width;
  final bool isLeftborder;
  final bool isBottomLeftRadius;
  final bool isBottomRightRadius;
  final MainAxisAlignment alignment;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return 
          isBottomLeftRadius || isBottomRightRadius?
          Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft:isBottomLeftRadius? Radius.circular(0): Radius.circular(0),
                      bottomRight:isBottomRightRadius ? Radius.circular(0) : Radius.circular(0)
                      ),
                    color: kWhite,
                    border: Border.all(
                      color: Color(0xFFd8d8d8),width:1
                    )
                  ),
                  height: 26,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left:9,top:4.0,bottom: 4),
                    child: 
                       Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: onPressed,
                              child: Text(
                                text,
                                style:TextStyle(
                                  color: isTextButton ? kLightBlue : kWhite,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  shadows: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.4),
                                        spreadRadius: -1,
                                        blurRadius: 0,
                                      )
                                    ]
                                  )
                                ),
                            ),
                          ],
                        )
                  ),
                )
           : Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Color(0xFFd8d8d8),width: isLeftborder? 1: 0),
                      right:BorderSide(color: Color(0xFFd8d8d8),width:1),
                      top:BorderSide(color: Color(0xFFd8d8d8),width:1),
                      bottom:BorderSide(color: Color(0xFFd8d8d8),width:1),
                      ),
                      color: kWhite
                  ),
                  height: 26,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left:9,top:4.0,bottom: 4),
                    child: Row(
                      mainAxisAlignment: alignment,
                      children: [
                        TextButton(
                          onPressed: onPressed,
                          child: Text(
                            text,
                            style:TextStyle(
                              color: isTextButton ? kLightBlue : kBlackOpacity,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              )
                            ),
                        ),
                      ],
                    ),
                  ),
                );
  }
}