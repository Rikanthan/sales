import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class IconCard extends StatelessWidget {
   const IconCard({
    Key key,
   @required this.iconData,
    @required this.iconText,
    @required this.onTapEventHandler,
  }) : super(key: key);

  final IconData iconData;
  final String iconText;
  final Function onTapEventHandler;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: kDashboardColor
      ),
      child: Padding(
        padding: EdgeInsets.only(left:20,right:20,top:12,bottom:12),
        child:  ElevatedButton.icon(
          style: ButtonStyle(
             backgroundColor: MaterialStateProperty.resolveWith((states) => kDashboardColor)
          ),
          onPressed: onTapEventHandler, 
          icon: Icon(
            iconData,
            color: kDashboardIconColor,
            size: 15
            ),
            label: Text(
              iconText, style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 15,
              color: kDashboardIconColor
              ),
            )
          )
        ),
    );
  }
}