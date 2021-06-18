import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';

class CheckBoxContainer extends StatefulWidget {
  const CheckBoxContainer({@required this.header,
  @required this.description }) ;
  final String header;
  final String description;
  @override
  _CheckBoxContainerState createState() => _CheckBoxContainerState();
}

class _CheckBoxContainerState extends State<CheckBoxContainer> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width:328,
          height:70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                           widget.header,
                          style: k14Black,
                            ),
                        Padding(
                          padding: const EdgeInsets.only(top:12.0),
                          child: Text(
                            widget.description, style: k14Black,),
                        ),
                      ],
                    )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}