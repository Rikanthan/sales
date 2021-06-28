import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class RetailTableHeader extends StatelessWidget {
  const RetailTableHeader({
    Key key,
   @required this.text,
   @required this.width,
   @required this.expandedWidth,
   @required this.isOtherClicked,
   @required this.isThisAscending,
   @required this.onPress,
   @required this.rightBorder,
  @required this.bottomBorder
  }) : super(key: key);

  final String text;
  final double width;
  final double expandedWidth;
  final bool isOtherClicked;
  final bool isThisAscending;
  final Function onPress;
  final bool rightBorder;
  final bool bottomBorder;
  @override
  Widget build(BuildContext context) {
    return  Container(
                width: isOtherClicked ? width : expandedWidth,
                 decoration: BoxDecoration(
                              border: Border(
                                bottom:BorderSide(
                                  color: rightBorder? kFooterColor : kWhite,
                                  width: rightBorder ? 1.0 :0.0 
                                  ),
                                right: BorderSide(
                                  color: rightBorder? kFooterColor : kWhite,
                                  width: rightBorder ? 1.0 :0.0 
                                  ),
                                ),
                            ),
                child:TextButton(
                  onPressed: onPress,
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                            Text(
                          !isOtherClicked ? text+'\u2193':text,
                          style:TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
                          color:  kSignInTextColor,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline
                          )
                        ),                
                          if(!isOtherClicked)
                          Text(
                            isThisAscending?
                              '1\n9' :
                            !isThisAscending?
                               '9\n1' :
                               ''  ,
                                    style:TextStyle(
                                  color: kSignInTextColor,
                                  fontFamily: 'Lato',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                      ],
                    ),
                  )  
                )
              );
  }
}
