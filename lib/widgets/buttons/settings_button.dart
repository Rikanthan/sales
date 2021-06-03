import 'package:flutter/material.dart';
class SettingsButton extends StatelessWidget {
  const SettingsButton({
    @required this.buttonText,
    @required this.onPress,
    @required this.topPadding,
    @required this.leftPadding,
  });
  final String buttonText;
  final Function onPress;
  final double topPadding;
  final double leftPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
       width:100,
       height: 35,
       decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFb0b0b0), width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.all(
                                 Radius.circular(5),
                                ),
                              
        gradient: LinearGradient(
                        colors: [Color(0xFFF6F6F6) , Color(0xFFdddddd) ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
       ),
    child:TextButton(
     child: Text(
        buttonText,
        style:TextStyle(
          color: Color(0xFF686868),
          fontFamily: 'Lato',
          fontSize: 14,
          fontWeight: FontWeight.w700
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
                            borderRadius: BorderRadius.circular(4)
                            ),
      ),                
    )
              )
        );
  }
}