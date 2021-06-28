import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class DeleteIconButton extends StatelessWidget {
  const DeleteIconButton({
    @required this.buttonText,
    @required this.onPress,
  });
  final String buttonText;
  final Function onPress;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color:kDashboardMidBarColor
        ),
       child: Padding(
         padding: const EdgeInsets.only(
                              left:10.0,
                              right:10.0,
                              top: 6.0,
                              bottom: 6.0
                              ),
         child: Row(
           children: [
             Text(
                buttonText,
                style:TextStyle(
                  color: kHelpTextColor,
                  fontFamily: 'Lato',
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                )
              ),
              SizedBox(width: 6,),
              Icon(
            Icons.delete,
            color:kWhite,
            size: 15,
            ),
           ],
         ),
       ),                   
      ),
    );

  }
}