import 'package:flutter/material.dart';
import 'package:sales/widgets/buttons/toggle_icon_button.dart';
class Check extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       // body :Center(child: Text('Hello World'))
       body: Center(child: ToggleIconButton(isToggle: true,)),
    );
  }
}  