import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class GreenButton extends StatelessWidget {
  const GreenButton({
    @required this.buttonText,
    @required this.onPress,
    @required this.topPadding,
  });
  final String buttonText;
  final Function onPress;
  final double topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: EdgeInsets.only(top: topPadding),
                  child: Center(
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
                      backgroundColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor ),
                      padding:  MaterialStateProperty.resolveWith((states) => EdgeInsets.only(left:36,right:36,top:20,bottom:20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),                
                  )
              )
        )
    );
  }
}