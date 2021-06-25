import 'package:flutter/material.dart';
import 'package:sales/constants/styles.dart';
class UserHeader extends StatelessWidget {
UserHeader({
@required this.text,
@required this.padding,
@required this.width,
@required this.alignment,
@required this.height
});
final String text;
final double padding;
final double width;
final MainAxisAlignment alignment;
final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: height,
                    width: width,
                    child:Padding(
                      padding:  EdgeInsets.only(left:padding, right: padding),
                      child: Row(
                        mainAxisAlignment: alignment,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(text,style: k15BlackDark,),
                        ],
                      ),
                    )
                  );
  }
}