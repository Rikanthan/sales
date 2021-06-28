import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class TextInputMaxLines extends StatelessWidget {
  const TextInputMaxLines({
    Key key,
    @required this.validate,
    @required this.onChange,
    @required this.paddingTop,
    @required this.hideText,
    @required this.height,
    @required this.hintText,
    @required this.width,
    @required this.darkMode,
    @required this.maxLines
  }) : super(key: key);
  final Function validate;
  final Function onChange;
  final double paddingTop;
  final bool hideText;
  final double height;
  final double width;
  final String hintText;
  final bool darkMode;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top:paddingTop),
      child: Container(
        color: darkMode ? kDashboardSearchBarFillColor : kWhite,
        height: height,
        width: width,
        child: TextFormField(
                        validator: validate,
                        onChanged: onChange,
                        obscureText: hideText,
                        maxLines: maxLines,
                        decoration: InputDecoration(
                        fillColor: darkMode ? kDashboardSearchBarFillColor : kWhite,
                        filled: true,
                         hintText:hintText,
                            hintStyle: TextStyle(
                                  fontFamily: 'Lato',
                                  color: darkMode ? kDashboardIconColor : 
                                                    Colors.blue[700].withOpacity(0.7),
                                  fontSize: 15
                                  ),
                        enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      borderSide: BorderSide(
                        color: darkMode ? kDashboardIconColor : kInputBorderColor,
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