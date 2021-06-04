import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class SettingDropDown extends StatelessWidget {
  const SettingDropDown({
    Key key,
   @required this.onPressed,
    @required this.dropdownValue,
    @required this.dropdownList,
    @required this.width,
    @required this.height,
    @required this.paddingAll,
  }) : super(key: key);

  final double width;
  final Function onPressed;
  final String dropdownValue;
  final List<String> dropdownList;
  final double paddingAll;
  final double height;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
              child: Container(
                width:width,
                height:height,
                child: Padding(
                  padding:  EdgeInsets.all(paddingAll),
                  child: DropdownButton<String>(
            value: dropdownValue,
            // icon: Icon(Icons.keyboard_arrow_down),
            // iconSize: 14,
            style: TextStyle(
              fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                  color: kSignInTextColor,
              ),
            focusColor: Colors.orange,
            onChanged: onPressed,
            items: dropdownList
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
            }).toList(),   
          ),
        ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.0, 
              style: BorderStyle.solid,
              color: Color(0xFF767676)
              ),
             borderRadius: BorderRadius.all(Radius.circular(1.0)),
            ),
          ),
        ),   
    );
  }
}