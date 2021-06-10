import 'package:flutter/material.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/drawer/main_drawer.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:170,
      color:Colors.transparent,
      child: Row(
        children: [
          MainDrawer(isDarkMode: false, mainDrawerClick: MainDrawerClick.home),
          EscButton(isDarkMode: false, positionedRight: 0.0,positionedTop: 10.0, width: 70.0)
        ],
      ),
    );
  }
}