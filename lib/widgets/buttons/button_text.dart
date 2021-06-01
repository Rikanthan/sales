import 'package:flutter/material.dart';
class ButtonText extends StatelessWidget {
  const ButtonText({
    @required this.buttonText,
    @required this.onPress,
    @required this.buttonColor,
    @required this.topPadding,
    @required this.leftPadding,
    @required this.buttonTextColor,
    @required this.fontSize
  });
  final String buttonText;
  final Function onPress;
  final Color buttonColor;
  final double topPadding;
  final double leftPadding;
  final Color buttonTextColor;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Center(
    child:TextButton(
     child: Text(
        buttonText,
        style:TextStyle(
          color: buttonTextColor,
          fontFamily: 'Lato',
          fontSize: fontSize,
          fontWeight: FontWeight.bold
        )
      ),
      onPressed: onPress,
     style:ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => buttonColor ),
        padding:  MaterialStateProperty.resolveWith((states) => EdgeInsets.only(
                                                                                left:leftPadding,
                                                                                right:leftPadding,
                                                                                top:topPadding,
                                                                                bottom:topPadding
                                                                                )
                                                                              ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),                
    )
              )
        );
  }
}