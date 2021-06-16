import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';

class ImageUpload extends StatelessWidget {
  const ImageUpload({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 692,
          height: 229,
          decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.7,
                          color: kInputBorderColor,
                                ),
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(5)
                              ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              Text('Drag images',style: kMediumTextNormalStyle,),
                              Text('here to',style: kMediumTextNormalStyle,),
                              Text('upload',style: kMediumTextNormalStyle,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                              'assets/images/drag-and-drop-v2.png',
                              fit: BoxFit.cover,
                                width:94,
                                height: 60.0,
                                ),
                              Text('Drag and drop',style: kMediumTextNormalStyle,),
                              Text('to reorder',style: kMediumTextNormalStyle,),                           
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                              'assets/images/drag-and-delete-v2.png',
                              fit: BoxFit.cover,
                                width:94,
                                height: 60.0,
                                ),
                              Text('Drag outside',style: kMediumTextNormalStyle,),
                              Text('to delete',style: kMediumTextNormalStyle,),               
                            ],
                          )
                        ],
                      ),
        ),
        Container(
          height: 61,
          color: Color(0xFFE5EAED),
          child: Padding(
            padding: const EdgeInsets.only(left:20.0,right:20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Drag images here or ',style: kMediumTextNormalStyle,),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'browse',
                    style: k15Underline,
                    )
                  ),
                Text(' to upload ',style: kMediumTextNormalStyle,),
                Spacer(),
                 CustomButton(
                        buttonText: 'Choose Images', 
                        onPress: (){},
                        buttonColor: kSignInButtonColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
              ],
            ),
          ),
        )
      ],
    );
  }
}