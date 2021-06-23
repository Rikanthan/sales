import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/chec_box_text.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/popup_cards/retrieve_sale.dart';

class AddReportCheckboxPopup extends StatelessWidget {
  const AddReportCheckboxPopup({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width: 218.203,
      height: 340,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4)
                  )
              ),
            width: 218.203,
            height: 262,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  width:218.203,
                  height: 242,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CheckBoxText(width:176.203,header: 'All'),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0, bottom: 8.0),
                          child: Divider(
                            height: 1,
                          ),
                        ),
                        CheckBoxText(width:176.203,header: 'Supplier Code'),
                        CheckBoxText(width:176.203,header: 'Brand'),
                        CheckBoxText(width:176.203,header: 'Supplier'),
                        CheckBoxText(width:176.203,header: 'Type'),
                        CheckBoxText(width:176.203,header: 'Tag'),
                      ],
                    ),
                    ],
                  ),
                ),             
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kInputBorderColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4)
                  )
              ),
            width: 218.203,
            height: 63,
            child: Padding(
              padding: const EdgeInsets.only(top:4.0,bottom:4,left: 24,right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                        buttonText: 'Apply',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        ),
                ],
              ),
            ),
          ),
          RotatedBox(
                quarterTurns: 2,
                child: Align(
                alignment: Alignment(-0.8,0.0),
                  child: ClipPath(
                    clipper: ArrowClipper(),
                    child: Container(
                      height: 16.97/2,
                      width: 19.97,
                      decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      border:Border.all(
                          color: Colors.white,width: 1,
                        )
                      ),
                    ),
                ),
              ),
          ),
        ],
      ),
    ),
  );
  }
}