import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class  AddProductPopup extends StatelessWidget {
  const  AddProductPopup({ @required this.text, @required this.isVarient });
  final String text;
  final bool isVarient;
  @override
  Widget build(BuildContext context) {
    String productType = isVarient ? 'variant' : 'product';
    String addImage = isVarient ? 'a different image': 'more images';
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:844,
      height: 542,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: kWhite,
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(4),
                      topRight: Radius.circular(4)
                      )
                  ),
                width: 784,
                height: 542.0 - 69.0,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Choose an image for "$text"',
                        style: TextStyle(
                          color: kAppBarColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lato' 
                          )
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Text('The chosen image will apply to the $productType "$text". To add $addImage, drag and drop anywhere, or',
                        style: k15BlackNormal
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('browse',style: k15BlackUnderline,),
                          Text(' to upload.',style: k15BlackNormal,)
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width:784,
                        height: 281,
                        decoration: BoxDecoration(
                          color: kWhite,
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
                                      Text('Drag image here to upload',style: k15BlackNormal,),
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
                                      Text('Tap images to select.',style: k15BlackNormal,),
                                        ]
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Container(
                        height: 69,
                        width: 784,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4)
                            ),
                            color: kInputBorderColor
                          ),
                        child:Padding(
                          padding: const EdgeInsets.only(left:32.0,right: 32.0),
                          child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('No image chose for this $productType.',style: k15BlackNormal,),
                            Spacer(),
                            CustomButton(
                              buttonText: 'Cancel',
                              onPress: (){
                                Navigator.pop(context);
                              },
                              buttonColor: kDashboardIconColor, 
                              topPadding: 20, 
                              leftPadding: 30
                              ),
                              SizedBox(width: 8,),
                            CustomButton(
                              buttonText: 'Apply',
                              onPress: (){
                                Navigator.pop(context);
                              },
                              buttonColor: kSignInButtonColor, 
                              topPadding: 20, 
                              leftPadding: 30
                              ),
                              
                            ],
                          ),
                        )
                      )
            ],
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