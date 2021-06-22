import 'package:flutter/material.dart';
class SaveButton extends StatelessWidget {
  const SaveButton({
    @required this.buttonText,
    @required this.onPress,
    @required this.topPadding,
    @required this.leftPadding,
    @required this.width
  });
  final double width;
  final String buttonText;
  final Function onPress;
  final double topPadding;
  final double leftPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
       width:width,
       height: 35,
       decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFF004cba), width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.all(
                                 Radius.circular(5),
                                ),
                              
        gradient: LinearGradient(
                        colors: [Color(0xFF50a9fc) , Color(0xFF0075de) ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
       ),
    child:TextButton(
     child: Text(
        buttonText,
        style:TextStyle(
          color: Colors.white,
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