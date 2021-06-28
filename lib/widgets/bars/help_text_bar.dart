import 'package:flutter/cupertino.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';

class HelpTextBar extends StatelessWidget {
  const HelpTextBar({ 
    @required this.height,
    @required this.isDarkMode,
    @required this.text
   }) ;

  final double height;
  final String text;
  final bool isDarkMode;
  @override
  Widget build(BuildContext context) {
    return Container(
                color: isDarkMode ? kAppBarColor 
                : kInputBorderColor,
                height: height,
               child: Padding(
                 padding: const EdgeInsets.only(left:48.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          color: !isDarkMode ? kAppBarColor : kHelpTextColor,
                          fontSize: 15,
                          fontFamily: 'Lato', 
                          fontWeight: !isDarkMode ? FontWeight.normal : FontWeight.w700
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Need help?',
                                style: isDarkMode ? kMediumTextDarkStyle 
                                : TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: kAppBarColor,
                                    fontSize: 15,
                                    fontFamily: 'Lato'
                                  )
                                ),
                            ],
                          ),
                        )
                    ],
                  ),
               )
              );
  }
}