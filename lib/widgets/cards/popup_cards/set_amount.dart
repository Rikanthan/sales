import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class   SetAmountPopup extends StatelessWidget {
  const   SetAmountPopup({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:660,
      height: 428,
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
            height: 428,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Set Opening Cash Drawer Amount',
                    style: TextStyle(
                      color: kHelpTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Lato' 
                      )
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:32.0, bottom: 5),
                    child: Text('Opening Float',
                    style: kMediumTextDarkStyle
                    ),
                  ),
                  TextInput(
                    darkMode: true,
                    validate:(value){},
                    onChange: (value){},
                    paddingTop: 0,
                    hideText: false,
                    height: 46,
                    width:536,
                    hintText: 'Rs 0.00',
                    ),
                    Padding(
                    padding: const EdgeInsets.only(top:32.0, bottom: 5),
                    child: Text('Notes Optional',
                    style: kMediumTextDarkStyle
                    ),
                  ),
                  TextInput(
                    darkMode: true,
                    validate:(value){},
                    onChange: (value){},
                    paddingTop: 0,
                    hideText: false,
                    height: 46,
                    width:536,
                    hintText: 'Enter a note',
                    ), 
                     Padding(
                       padding: const EdgeInsets.only( top:8.0,bottom: 52),
                       child: Text('Max characters: 255',style: k14Blue2,),
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
                        topPadding: 24, 
                        leftPadding: 30
                        ),
                      SizedBox(width: 8,),
                      CustomButton(
                        buttonText: 'Save Amount',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 24, 
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