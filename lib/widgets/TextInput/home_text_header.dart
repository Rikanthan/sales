import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class HomeHeaderText extends StatelessWidget {
  const HomeHeaderText({
    @required this.topPadding,
    @required this.leftPadding,
    @required this.headerText,
    @required this.subHeaderText,
  });
  final String headerText;
  final String subHeaderText;
  final double topPadding;
  final double leftPadding;
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.only(
                      top:topPadding, 
                      bottom: topPadding,
                      left: leftPadding,
                      right: leftPadding
                      ),
        child: Column(
          children: [
            Text(
              headerText,
              style: TextStyle(
                fontSize:30,
                fontFamily: 'Lato',
                color: kSignInTextColor,
                fontWeight: FontWeight.w700
              ),
            ),
              Padding(
                padding:  EdgeInsets.only(top:20.0),
                child: Text(
                subHeaderText,
                style: TextStyle(
                  fontSize:18,
                  fontFamily: 'Lato',
                  color: kSignInTextColor,
                  fontWeight: FontWeight.w400
                ),
            ),
            ),
          ],
        ),
      );
  }
}