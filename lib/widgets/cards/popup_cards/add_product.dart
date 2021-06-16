import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class  AddProductPopup extends StatelessWidget {
  const  AddProductPopup({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:842,
      height: 542,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 782,
            height: 471.0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Choose an image for ',
                    style: TextStyle(
                      color: kAppBarColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato' 
                      )
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Text('The chosen image will apply to the variant. To add a different image, drag and drop anywhere, or',
                    style: kMediumTextNormalStyle
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('browse',style: k15BlackUnderline,),
                      Text(' to upload.',style: kMediumTextNormalStyle,)
                    ],
                  ),
                  Container(
                    width:782,
                    height: 265,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(
                        color:kInputBorderColor,
                        width: 2
                        )
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                  'assets/images/drag-and-upload-v2.png',
                                  fit: BoxFit.cover,
                                    width:94,
                                    height: 60.0,
                                    ),
                                    SizedBox(height: 15,),
                                  Text('Drag image here to upload',style: kMediumTextNormalStyle,),
                                    ]
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                  'assets/images/tap-to-select-v4.png',
                                  fit: BoxFit.cover,
                                    width:94,
                                    height: 60.0,
                                    ),
                                    SizedBox(height: 15,),
                                  Text('Tap images to select.',style: kMediumTextNormalStyle,),
                                    ]
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 69,
                    child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
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
                        SizedBox(width: 8,),
                      CustomButton(
                        buttonText: 'Cancel',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kDashboardIconColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        ),
                        Text('No image chose for this variant.',style: kMediumTextNormalStyle,)
                    ],
                  )
                  )
                ],
              ),
            ),
          ),
          EscButton(
            isDarkMode: false,
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