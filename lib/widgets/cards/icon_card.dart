import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class IconCard extends StatelessWidget {
   const IconCard({
    Key key,
   @required this.iconData,
    @required this.iconText,
    @required this.onTapEventHandler,
    @required this.width
  }) : super(key: key);

  final IconData iconData;
  final String iconText;
  final Function onTapEventHandler;
  final double width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
     child: Container(
       width:width,
       height:62,
       child: Padding(
         padding: EdgeInsets.only(left:21,right:21,top:13,bottom:13),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
               Icon(
                  iconData,
                  color: kDashboardIconColor,
                  size: 15
                  ),
                  SizedBox(width:5),
                   Text(
                    iconText, style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 15,
                    color: kDashboardIconColor,
                    fontWeight: FontWeight.w700
                    ),
                    )
          ],
         ),
       ),
     ),
     onTap: onTapEventHandler,
    );
  }
}