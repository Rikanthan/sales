import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class TransparentTextInput extends StatelessWidget {
  const TransparentTextInput({
    Key key,
    @required this.validate,
    @required this.onChange,
    @required this.hintText,
    @required this.paddingTop,
    @required this.hideText,
    @required this.height,
    @required this.width
  }) : super(key: key);
  final Function validate;
  final Function onChange;
  final String hintText;
  final double paddingTop;
  final bool hideText;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
                height: height,
                width: width,
                child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left:2,right: 12.0,top:paddingTop),
                  child: TextFormField(
                    validator: validate,
                    onChanged: onChange,
                    obscureText: hideText,
                    decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  borderSide: BorderSide(
                    color: Colors.transparent,
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
                    color: Colors.transparent,
                    width: 2.0,
                  ),
                ),
                    hintText:hintText,
                   hintStyle: TextStyle(
                     fontFamily: 'Lato',
                  color:kDashboardMidBarColor,
                  fontSize: 15,
                        ),
                     ),
                  ),
                ),
                ),
              );
  }
}