import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/buttons/custom_button.dart';

class MidButtonBar extends StatelessWidget {
  const MidButtonBar({
    Key key,
   @required this.text,
   @required this.addBlueButton,
    @required this.blueButtonText,
    @required this.blueOnTap,
    @required this.greenButtonText,
    @required this.greenOnTap,
  }) : super(key: key);

  final String text;
  final String blueButtonText;
  final Function blueOnTap;
  final String greenButtonText;
  final Function greenOnTap;
  final bool addBlueButton;
  @override
  Widget build(BuildContext context) {
    return Container(
                color:kInputBorderColor,
                child: Padding(
                  padding: EdgeInsets.only(top:16,bottom:16,left:48.0,right: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                        text,
                        style:TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            color: kSignInTextColor
                          )
                      ),
                      if(addBlueButton)
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: blueButtonText,
                          onPress: blueOnTap,
                          buttonColor: kDashboardMidBarColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      ),
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