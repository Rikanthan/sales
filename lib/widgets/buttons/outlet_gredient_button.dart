import 'package:flutter/material.dart';
class OutletButton extends StatelessWidget {
  const OutletButton({
    @required this.buttonText,
    @required this.onPress,
    @required this.topPadding,
    @required this.leftPadding,
    @required this.width
  });
  final String buttonText;
  final Function onPress;
  final double topPadding;
  final double leftPadding;
  final double width;
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
                                 Radius.circular(10),
                                ),
                              
        gradient: LinearGradient(
                        colors: [Color(0xFFFAFAFA) , Color(0xFFCECECE) ],
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
                            borderRadius: BorderRadius.circular(30)
                            ),
      ),                
    )
              )
        );
  }
}