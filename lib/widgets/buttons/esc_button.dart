import 'package:flutter/material.dart';
import '../../constants/colors.dart';
class EscButton extends StatelessWidget {
  const EscButton({
    @required this.isDarkMode,
    @required this.positionedRight,
    @required this.width,
    @required this.positionedTop
    });
  final bool isDarkMode;
  final double positionedRight;
  final double width;
  final double positionedTop;
  @override
  Widget build(BuildContext context) {
    return Container(
            width: width,
            color: Colors.transparent,
            child: Stack(
            children: [
              Positioned(
              top:positionedTop,
              right: positionedRight,
              child: GestureDetector(
              onTap: (){
                  Navigator.of(context).pop();
              },
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                      radius: 25.0,
                      backgroundColor: isDarkMode ? kDrawerBackgroundColor : kWhite,
                      child: Icon(
                        Icons.close,
                        color: isDarkMode ? kSignInTextColor : kHomeDrawerCloseColor
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5.0),
                    child: Text(
                      'ESC',
                        style:TextStyle(
                        color:kHelpTextColor,
                        fontSize: 14,
                        fontFamily: 'Lato'            
                          ),
                      ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}