import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class  CloseRegisterPopup extends StatelessWidget {
  const  CloseRegisterPopup({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:660,
      height: 267,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kDashboardSearchBarFillColor,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 600,
            height: 267,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hold up! You currently have a sale in progress',
                    style: TextStyle(
                      color: kHelpTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato' 
                      )
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:32.0, bottom: 20.0),
                    child: Text('Before you can close your register, you have to complete the sale on the Sell\nscreen. You can choose to save that sale and continue to close your register, or\nreturn to that sale to complete it..',
                    style: k15WhiteHeight
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        buttonText: 'Save and Continue',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        ),
                        SizedBox(width: 8,),
                      CustomButton(
                        buttonText: 'Return to Sale in Progress',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kDashboardIconColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
          EscButton(
            isDarkMode: true,
            positionedRight: 0.0,
            positionedTop: 0.0, 
            width: 60
            )
        ],
      ),
    ),
  );
  }
}