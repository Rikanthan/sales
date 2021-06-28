import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class OutletButton extends StatelessWidget {
  const OutletButton({
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
                              color:kCustomGrey,
                              width: 0.7, 
                              style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.all(
                                 Radius.circular(10),
                                ),
                              
        gradient: LinearGradient(
                        colors: isButtonDisable ?
                                [kCustomWhite3 ,
                                 kCustomWhite4 ] : 
                                [kCustomWhite3 , kCustomWhite5 ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
       ),
    child:TextButton(
     child: Text(
        buttonText,
        style:TextStyle(
          color: isButtonDisable ? 
                    kGrey.withOpacity(0.8) : 
                    kGrey,
          fontFamily: 'Lato',
          fontSize: 14,
          fontWeight: FontWeight.w700
        )
      ),
      onPressed: onPress,
     style:ButtonStyle(
        backgroundColor: MaterialStateColor
                                .resolveWith(
                                          (states) => Colors.transparent ),
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