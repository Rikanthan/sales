import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class TextInputField extends StatelessWidget {
  const TextInputField({
    Key key,
    @required this.validate,
    @required this.onChange,
    @required this.hintText,
    @required this.action,
    @required this.paddingTop,
    @required this.hideText
  }) : super(key: key);
  final Function validate;
  final Function onChange;
  final String hintText;
  final TextInputAction action;
  final double paddingTop;
  final bool hideText;
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 70,
                child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 34.0,right: 34.0,top:paddingTop),
                  child: TextFormField(
                    textInputAction: action,
                    validator: validate,
                    onChanged: onChange,
                    obscureText: hideText,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  borderSide: BorderSide(
                    color: kInputBorderColor,
                    width: 2.0,
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
                    color: Colors.blue[300],
                    width: 2.0,
                  ),
                ),
                    hintText:hintText,
                   hintStyle: TextStyle(
                  color:Colors.blue[700].withOpacity(0.7),
                  fontSize: 15,
                        ),
                     ),
                  ),
                ),
                ),
              );
  }
}