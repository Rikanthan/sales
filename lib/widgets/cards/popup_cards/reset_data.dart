import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class  ResetDataPopup extends StatelessWidget {
  const  ResetDataPopup({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:660,
      height: 380,
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
            height: 380,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Are you sure you want to reset data?',
                    style: TextStyle(
                      color: kHelpTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Lato' 
                      )
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:32.0, bottom: 5),
                    child: Text('Resetting your data deletes:',
                    style: k15White
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("•  The sale you're currently working on",
                    style: k15White
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("•  Any completed sales that haven't yet been saved to our servers",
                    style: k15White
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("•  The copy of your Web Register data saved in your browser (we'll re-sync\nthis with the latest version)",
                    style: k15White
                    ),
                  ),
                     Padding(
                       padding: const EdgeInsets.only( top:20.0,bottom: 32),
                       child: Text('Before resetting your data,check your sales history to make sure your most\nrecent sales have been saved. Do not reset data if they do not appear.'
                       ,style: k15WhiteHeightDark,),
                     ),  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       CustomButton(
                        buttonText: 'Cancel',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kDashboardIconColor, 
                        topPadding: 22, 
                        leftPadding: 30
                        ),
                      SizedBox(width: 8,),
                      CustomButton(
                        buttonText: 'Reset Data',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor:  Color(0xFFE6643C), 
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