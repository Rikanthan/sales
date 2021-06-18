import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';

class CheckBoxText extends StatefulWidget {
  const CheckBoxText({@required this.header }) ;
  final String header;

  @override
  _CheckBoxTextState createState() => _CheckBoxTextState();
}

class _CheckBoxTextState extends State<CheckBoxText> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width:176.203,
          height: 56,
          child: Padding(
            padding: const EdgeInsets.only(top:16.0,bottom: 16.0, left: 24.0,right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Checkbox(
                            activeColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor),
                            focusColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor),
                            value: _isSelected,
                             onChanged: (newValue){
                               setState(() {
                                 _isSelected = newValue;
                               });
                             }
                            ),
                             SizedBox(
                            width: 12,
                          ),
                          Text(
                             widget.header,
                            style: k14Black,
                              ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}