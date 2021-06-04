import 'package:flutter/material.dart';

class SettingsGredientHeader extends StatelessWidget {
  const SettingsGredientHeader({
    @required this.text
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
                      width:960,
                      height: 34,
                      decoration: BoxDecoration(
                    border: Border.all(
                      color:Color(0xFFCCCCCC), width: 1, style: BorderStyle.solid
                      ),
                    gradient: LinearGradient(
                        colors: [Color(0xFFF6F6F6) , Color(0xFFECECEC) ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
                    borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:12.0,top:7,bottom:7),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            color: Color(0xff535353)
                            ),
                          ),
                      ),
                    );
  }
}