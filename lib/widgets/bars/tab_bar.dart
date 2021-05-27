import 'package:flutter/material.dart';
import '../../constants/colors.dart';
class TabBarItem extends StatelessWidget {
  TabBarItem({
    @required this.width,
    @required this.height,
    @required this.isClicked,
    @required this.onClicked,
    @required this.text
  });
  final bool isClicked;
  final double width;
  final double height;
  final Function onClicked;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
                    width:width,
                    height: height,
                    decoration:BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: isClicked ? kSignInButtonColor : kInputBorderColor,
                          width:isClicked ?5.0 : 0.0,
                          )
                      ),
                      
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          child:Text(
                            text,
                            style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: !isClicked ? kAppBarColor : kSignInButtonColor,
                                          ),
                            ),
                          onPressed: onClicked  
                          ),
                      ],
                    ),
                  );
  }
}