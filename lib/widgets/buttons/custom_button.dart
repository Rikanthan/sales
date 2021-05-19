import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    @required this.buttonText,
    @required this.onPress,
    @required this.buttonColor,
    @required this.topPadding,
    @required this.leftPadding,
  });
  final String buttonText;
  final Function onPress;
  final Color buttonColor;
  final double topPadding;
  final double leftPadding;
  @override
  Widget build(BuildContext context) {
    return Center(
    child:TextButton(
     child: Text(
        buttonText,
        style:TextStyle(
          color: Colors.white,
          fontFamily: 'Lato',
          fontSize: 15,
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