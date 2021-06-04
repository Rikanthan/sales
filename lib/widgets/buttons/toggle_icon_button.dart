import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class ToggleIconButton extends StatelessWidget {
  const ToggleIconButton({ @required this.isToggle });
  final bool isToggle;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      height: 46,
      width: 68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: isToggle ? kSignInButtonColor : kHelpTextColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.check_circle, color: kSignInButtonColor,size: 35.0,),
            Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  top:3.0,
                  curve: Curves.easeIn,
                  left: isToggle ? 60.0 : 0.0, 
                  right: isToggle ? 0.0 : 60.0,
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 1000),
                    transitionBuilder: (Widget child, Animation<double> animation){
                      return RotationTransition(turns: animation , child:child);
                    },
                    child: isToggle ? Icon(Icons.check_circle, color: kSignInButtonColor,size: 35.0,
                    key: UniqueKey()) : Icon(Icons.remove_circle_outline, color: kDashboardIconColor,size: 35.0,
                    key: UniqueKey()),
                    ),
                  )
              ],
            ),
            Icon(Icons.close, color: kDashboardIconColor,size: 35.0,),
          ],
        )
      
    );
  }
}