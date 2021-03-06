import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class SettingTextInput extends StatelessWidget {
  const SettingTextInput({
    Key key,
    @required this.height,
    @required this.width,
    @required this.value
  }) : super(key: key);
  final double height;
  final double width;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
                height: height,
                width: width,
                child: TextFormField(
                  initialValue: value,
                  textAlignVertical: TextAlignVertical.top,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                  fillColor: kWhite,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
                borderSide: BorderSide(
                  color: kDarkGrey,
                  width: 1.0,
                ),
                ),
                errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
                ),
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
                borderSide: BorderSide(
                  color: Colors.orange,
                  width: 2.0,
                ),
            ),   
          ),
        ),
      );
  }
}