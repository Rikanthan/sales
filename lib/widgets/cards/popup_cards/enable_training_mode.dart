import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class  EnableTrainingMode extends StatelessWidget {
  const  EnableTrainingMode({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:660,
      height: 245,
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
            height: 245,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "You're now in training mode",
                    style: TextStyle(
                      color: kHelpTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Lato' 
                      )
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:32.0, bottom: 32),
                    child: Text('Sales and payments you make in training mode will not be recorded.Fell free to\ntry out all the features.',
                    style: k15WhiteHeightNormal
                    ),
                  ),
                   
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       CustomButton(
                        buttonText: 'Got it',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 22, 
                        leftPadding: 30
                        ),       
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