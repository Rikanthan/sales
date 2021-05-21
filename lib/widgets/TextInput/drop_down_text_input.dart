import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class DropDownInput extends StatelessWidget {
  const DropDownInput({
    Key key,
   @required this.onPressed,
    @required this.dropdownValue,
    @required this.dropdownList,
    @required this.width
  }) : super(key: key);

  final double width;
  final Function onPressed;
  final String dropdownValue;
  final List<String> dropdownList;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
              child: Container(
                width:width,
                height:46,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 30,
            style: TextStyle(
              fontSize: 15,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                  color: kSignInTextColor
              ),
            focusColor: kDropDownColor,
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
            color:Colors.white,
            shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2.0, 
              style: BorderStyle.solid,
              color: kInputBorderColor
              ),
             borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          ),
        ),   
    );
  }
}