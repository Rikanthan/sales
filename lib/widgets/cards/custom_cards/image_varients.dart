import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/popup_cards/add_product.dart';

class ImageVarient extends StatelessWidget {
  const ImageVarient({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            color: kInputBorderColor,
            width: 220,
            height: 220,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                              'assets/images/drag-and-upload-v2.png',
                              fit: BoxFit.cover,
                                width:94,
                                height: 60.0,
                                ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) => AddProductPopup(),
                                        );
                                    },
                                    child: Text(
                                      'Choose',style: k15BlackUnderline,
                                      )
                                    ),
                                  Text(
                                    ' an image',style: kMediumTextNormalStyle,),
                                ],
                              ),
                              Text('for this variant',style: kMediumTextNormalStyle,),
                            ]
            )
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}


class ImageVarientButton extends StatelessWidget {
  const ImageVarientButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: kSignInButtonColor,
            width: 3
            )
          ),
        color: kInputBorderColor
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 8.0,right: 20.0),
            child: CustomButton(
              buttonText: 'Choose Variant Image',
              onPress: (){}, 
              buttonColor: kDashboardMidBarColor, 
              topPadding: 20, 
              leftPadding: 30
              ),
          ),
        ],
      ),
    );
  }
}