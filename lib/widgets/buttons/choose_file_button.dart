import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class ChooseFile extends StatelessWidget {
  const ChooseFile({
    @required this.buttonText,
    @required this.onPress,
    @required this.topPadding,
    @required this.leftPadding,
    @required this.width,
    @required this.isButtonDisable
  });
  final String buttonText;
  final Function onPress;
  final double topPadding;
  final double leftPadding;
  final double width;
  final bool isButtonDisable;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 22,
        width: width,
       decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFb0b0b0), width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.all(
                                 Radius.circular(2),
                                ),
                              
        gradient: LinearGradient(
                        colors: isButtonDisable ? [Color(0xFFFAFAFA) , Color(0xFFdddddd) ] : [Color(0xFFFAFAFA) , Color(0xFFCECECE) ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
       ),
    child:TextButton(
     child: Text(
        buttonText,
        style:TextStyle(
          color: Colors.black,
          fontFamily: 'Lato',
          fontSize: 14,
          fontWeight: FontWeight.w400
        )
      ),
      onPressed: onPress,
     style:ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.transparent ),
        padding:  MaterialStateProperty
                    .resolveWith((states) 
                            => EdgeInsets.only(
                                              left:leftPadding,
                                              right:leftPadding,
                                              top:topPadding,
                                              bottom:topPadding
                                              )
                    ),
        shape: MaterialStateProperty
                        .all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)
                            ),
      ),                
    )
              )
        );
  }
}