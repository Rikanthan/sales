import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';

class DarkMidButtonBar extends StatelessWidget {
  const DarkMidButtonBar({
    Key key,
   @required this.text,
    @required this.customButtonText,
    @required this.customButtonOnTap,
    @required this.greenButtonText,
    @required this.greenOnTap,
    @required this.customButtonColor
  }) : super(key: key);

  final String text;
  final String customButtonText;
  final Function customButtonOnTap;
  final String greenButtonText;
  final Function greenOnTap;
  final Color customButtonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
                color:kAppBarColor,
                child: Padding(
                  padding: EdgeInsets.only(
                    top:greenButtonText.isNotEmpty ? 16:36,
                    bottom:greenButtonText.isNotEmpty? 16:36,
                    left:48.0,
                    right: 48
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                        text,
                        style:k15White
                      ),
                      Spacer(),
                      if(customButtonText.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: customButtonText,
                          onPress: customButtonOnTap,
                          buttonColor: customButtonColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      ),
                      if(greenButtonText.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: greenButtonText,
                          onPress: greenOnTap,
                          buttonColor: kSignInButtonColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      )
                    ]
                  ),
                ),
              );
  }
}