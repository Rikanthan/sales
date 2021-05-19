import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class AppBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Image.asset(
                'assets/images/logo-watermark.png',
                 fit: BoxFit.cover,
                 height: 50.0,
                  ),
            ),
            Expanded(
              flex:1,
              child: Row(
                children: [
                  Text(
                    'Sign in',
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
                    fontSize: 14.0
                  ),
                ),
              ],
            ),
          ],
        );
  }
}