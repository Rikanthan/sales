import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class  EditValueNamesPopup extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
   
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:660,
      height: 603,
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
                    borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )
                  ),
                width: 600,
                height: 603,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Rename Values for this Product',
                        style: TextStyle(
                          color: kAppBarColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lato' 
                          )
                        ),
                      SizedBox(height: 32,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          UserHeader(
                                text: 'Attribute',
                                padding: 0,
                                width: 255,
                                alignment: MainAxisAlignment.start,
                                height: 51.5
                              ),
                          UserHeader(
                            text: 'Values',
                            padding: 0,
                            width: 281,
                            alignment: MainAxisAlignment.start,
                            height: 51.5
                          ),
                        ],
                      ),
                      Divider(
                        height: 1,
                        color: kAppBarColor,
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                               width: 255,
                               height: 46,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text('Size',style:k15BlackNormal),
                                 ],
                               ),
                             ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextInput(
                                        darkMode: false,
                                        hideText: false,
                                        hintText:'8',
                                        paddingTop: 0,
                                        height: 46,
                                        width: 281,
                                        validate: (String val) => val.isEmpty? 'This field is required' : null,
                                          onChange: (val) { 
                                          },
                                        ),
                                    TextInput(
                                    darkMode: false,
                                    hideText: false,
                                    hintText:'10',
                                    paddingTop: 8,
                                    height: 46,
                                    width: 281,
                                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                                      onChange: (val) { 
                                      },
                                    ),
                              TextInput(
                                    darkMode: false,
                                    hideText: false,
                                    hintText:'12',
                                    paddingTop: 8,
                                    height: 46,
                                    width: 281,
                                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                                      onChange: (val) { 
                                      },
                                    ),
                                ],
                              ),     
                           ],
                         ),
                       ), 
                       Divider(
                        height: 1,
                        color: kAppBarColor,
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                               width: 255,
                               height: 46,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text('Colour',style:k15BlackNormal),
                                 ],
                               ),
                             ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextInput(
                                        darkMode: false,
                                        hideText: false,
                                        hintText:'Blush',
                                        paddingTop: 0,
                                        height: 46,
                                        width: 281,
                                        validate: (String val) => val.isEmpty? 'This field is required' : null,
                                          onChange: (val) { 
                                          },
                                        ),
                                    TextInput(
                                    darkMode: false,
                                    hideText: false,
                                    hintText:'Black and White Stripe',
                                    paddingTop: 8,
                                    height: 46,
                                    width: 281,
                                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                                      onChange: (val) { 
                                      },
                                    ),
                                ],
                              ),     
                           ],
                         ),
                       ), 
                       Divider(
                        height: 1,
                        color: kAppBarColor,
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                               width: 255,
                               height: 46,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text('Material',style:k15BlackNormal),
                                 ],
                               ),
                             ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextInput(
                                        darkMode: false,
                                        hideText: false,
                                        hintText:'product',
                                        paddingTop: 0,
                                        height: 46,
                                        width: 281,
                                        validate: (String val) => val.isEmpty? 'This field is required' : null,
                                          onChange: (val) { 
                                          },
                                        ),
                                ],
                              ),     
                           ],
                         ),
                       ),
                       Padding(
                          padding: const EdgeInsets.only(top:32.0),
                          child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [ 
                            CustomButton(
                              buttonText: 'Apply Changes',
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
                    ],
                  ),
                ),
              ),        
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