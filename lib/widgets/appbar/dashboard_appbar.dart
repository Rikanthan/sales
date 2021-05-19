import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class DashboardAppBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      color: kAppBarTextColor,
                      fontSize: 16.0
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Help',
                  style: TextStyle(
                    color: kAppBarTextColor,
                    fontFamily: 'Lato',
                    fontSize: 14.0
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Icon(
                    Icons.notifications,
                    size:14.0,
                    ),
                )
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Nifras Ismail',
                  style: TextStyle(
                    color: kAppBarTextColor,
                    fontFamily: 'Lato',
                    fontSize: 14.0
                  ),
                ),
              ],
            ),
            
          ],
        );
  }
}