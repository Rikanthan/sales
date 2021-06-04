import 'package:flutter/material.dart';
class SettingsCell extends StatelessWidget {
  const SettingsCell({
    Key key,
    @required this.text,
    @required this.height,
    @required this.width,
    @required this.textSpan
    }) : super(key: key);
  final String text;
  final double height;
  final double width;
  final bool textSpan;
  @override
  Widget build(BuildContext context) {
    return Container(
                    width: width,
                    height: height,
                    child: Row(
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                            fontSize: 14,
                            color:Color(0xFF333333),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            height: textSpan ? 1.2 : 1.0 
                            ),
                          ),
                      ],
                    ),
                  );
  }
}