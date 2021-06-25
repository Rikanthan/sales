import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';

class ProductButton extends StatelessWidget {
  const ProductButton({ 
    Key key,
    @required this.text,
    @required this.width,
    @required this.onPressed,
    @required this.isPressed
     }) : super(key: key);
  final double width;
  final String text;
  final Function onPressed;
  final bool isPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: width,
          height: 120,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.transparent,
              border:  Border.all(
                color: isPressed ? kDashboardIconColor : kAppBarColor,
                width:1
                ),
              borderRadius: BorderRadius.all(Radius.circular(4))
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: k15WhiteNormal
              )
            ],
          ),
        ),
      ),
    );
  }
}