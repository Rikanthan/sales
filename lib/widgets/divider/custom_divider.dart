import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({ 
    @required this.topPadding,
  @required this.width ,
  @required this.bottomPadding
  });
  final double topPadding;
  final double width;
  final double bottomPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: Container(
                  width: width,
                height: topPadding,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(
                      color: kTableBorderColor,
                      width: 1
                      ),
                    ),
                )
              ),
    );
  }
}