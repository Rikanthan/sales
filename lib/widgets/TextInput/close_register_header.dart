import 'package:flutter/material.dart';
import '../../constants/styles.dart';

class CloseRegisterHeader extends StatelessWidget {
  CloseRegisterHeader({
    @required this.alignment,
    @required this.height,
    @required this.width,
    @required this.text
  });
  final String text;
  final double width;
  final double height;
  final MainAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
                  height: height,
                  width:width,
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0,top:16.0,bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: alignment,
                      children: [
                        Text(text,style: kMediumTextDarkStyle,),
                      ],
                    ),
                  )
                );
  }
}