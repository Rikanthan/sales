import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    @required this.buttonText,
    @required this.onPress,
    @required this.textColor
  });
  final String buttonText;
  final Function onPress;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
          child: Container(
            height: 57,
            child: Padding(
              padding: const EdgeInsets.only(
                                        top:20.0,
                                        bottom: 20.0,
                                        right: 10.0,
                                        left: 10.0
                                        ),
              child: Text(
                buttonText,
                style:TextStyle(
                color:textColor,
                fontSize: 15,
                fontFamily: 'Lato', 
                fontWeight: FontWeight.bold           
                  )
                ),
            ),
      ),
    );
  }
}