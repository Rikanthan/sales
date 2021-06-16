import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class ParkSalePopup extends StatelessWidget {
  const ParkSalePopup({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:540,
      height: 373,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kDrawerBackgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 480,
            height: 373,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Add a note to the sale',
                    style: TextStyle(
                      color: kHelpTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato' 
                      )
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:32.0, bottom: 20.0),
                    child: Text('You are about to park this sale. Add a note so it can be identified\nby the next person who continues this sale.',style: kMediumTextDarkNormalStyle),
                  ),
                  TextInput(
                    darkMode: true,
                    validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                    onChange: (val) {
                          },
                    paddingTop: 4, 
                    hideText: false, 
                    height: 46,
                    width:416,
                    hintText: '',
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 32),
                    child: Text(
                      'Notes can be used to identify a sale in the future, and can contain\ninformation that can help complete the sale.',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          color: kDashboardIconColor, 
                          ),
                       ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        buttonText: 'Park Sale',
                        onPress: (){},
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