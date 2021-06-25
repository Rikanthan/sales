import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({ 
    @required this.topPadding,
  @required this.width ,
  @required this.bottomPadding,
  @required this.thickness,
  @required this.color
  });
  final double topPadding;
  final double width;
  final double bottomPadding;
  final double thickness;
  final Color color;
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
                      color: color,
                      width: thickness
                      ),
                    ),
                )
              ),
    );
  }
}