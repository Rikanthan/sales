import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class TextInput extends StatelessWidget {
  const TextInput({
    Key key,
    @required this.validate,
    @required this.onChange,
    @required this.paddingTop,
    @required this.hideText,
    @required this.height,
    @required this.hintText,
    @required this.width,
    @required this.darkMode
  }) : super(key: key);
  final Function validate;
  final Function onChange;
  final double paddingTop;
  final bool hideText;
  final double height;
  final double width;
  final String hintText;
  final bool darkMode;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top:paddingTop),
      child: Container(
        color: darkMode ? kDashboardSearchBarFillColor : Colors.white,
        height: height,
        width: width,
        child: TextFormField(
                        validator: validate,
                        onChanged: onChange,
                        obscureText: hideText,
                        decoration: InputDecoration(
                        fillColor: darkMode ? kDashboardSearchBarFillColor : Colors.white,
                        filled: true,
                         hintText:hintText,
                            hintStyle: TextStyle(
                                  fontFamily: 'Lato',
                                  color: darkMode ? kDashboardMidBarColor : Colors.blue[700].withOpacity(0.7),
                                  fontSize: 15
                                  ),
                        enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      borderSide: BorderSide(
                        color: darkMode ? kDashboardMidBarColor : kInputBorderColor,
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
                         ),
                      ),
      ),
    );
  }
}