import 'package:flutter/material.dart';
import '../../constants/colors.dart';
class TabBarItem extends StatelessWidget {
  TabBarItem({
    @required this.width,
    @required this.height,
    @required this.isClicked,
    @required this.onClicked,
    @required this.text,
    @required this.darkMode
  });
  final bool isClicked;
  final double width;
  final double height;
  final Function onClicked;
  final String text;
  final bool darkMode;
  @override
  Widget build(BuildContext context) {
    return Container(
                    width:width,
                    height: height,
                    decoration:BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                           color: !isClicked && !darkMode ? 
                                    kAppBarColor : isClicked  ? 
                                    kSignInButtonColor : kDashboardColor,
                          width:isClicked ? 5.0 : 0.0,
                          )
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          child:Text(
                            text,
                            style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: !isClicked && !darkMode ?
                                                kAppBarColor : isClicked  ? 
                                                kSignInButtonColor :  kHelpTextColor,
                                          ),
                            ),
                          onPressed: onClicked  
                          ),
                      ],
                    ),
                  );
  }
}