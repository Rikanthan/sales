import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/popup_cards/add_product.dart';

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
                          color:kWhite,
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
                              Text('Drag images',style: k15BlackNormal,),
                              Text('here to',style: k15BlackNormal,),
                              Text('upload',style: k15BlackNormal,),
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
                              Text('Drag and drop',style: k15BlackNormal,),
                              Text('to reorder',style: k15BlackNormal,),                           
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
                              Text('Drag outside',style: k15BlackNormal,),
                              Text('to delete',style: k15BlackNormal,),               
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
                Text('Drag images here or ',style: k15BlackNormal,),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'browse',
                    style: k15Underline,
                    )
                  ),
                Text(' to upload ',style: k15BlackNormal,),
                Spacer(),
                 CustomButton(
                        buttonText: 'Choose Images', 
                        onPress: (){
                           showDialog(
                              context: context,
                              builder: (_) 
                                        => 
                                        AddProductPopup(
                                              text: 'Audhild Tee',
                                              isVarient: false,
                                              ),
                            );
                        },
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