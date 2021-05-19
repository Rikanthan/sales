import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class DrawerItem extends StatelessWidget {
 const DrawerItem({
    @required this.buttonText,
    @required this.onPress,
    @required this.iconData,
    @required this.iconColor
  });
  final String buttonText;
  final Function onPress;
  final IconData iconData;
  final Color iconColor;
  @override

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
                          height: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                iconData,
                                color: iconColor,
                                size:20,
                                ),
                              Text(
                                buttonText,
                              style:TextStyle(
                              color:kHelpTextColor,
                              fontSize: 14,
                              fontFamily: 'Lato',            
                                )
                              )
                            ],
                          ),
                        ),
    );
  }
}