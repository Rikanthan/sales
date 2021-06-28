import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/setting_input_text.dart';
import 'package:sales/widgets/TextInput/settings_cell.dart';
import 'package:sales/widgets/TextInput/settings_gredient.dart';
import 'package:sales/widgets/buttons/settings_button.dart';
class BasicInformation extends StatelessWidget {
  const BasicInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsGredientHeader(cellType: CellType.both ,width: 964 ,text: 'Basic Information',),
                    Row(
                      children: [
                        Container(
                          width:480,
                          height:190,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:kCustomWhite, 
                              width: 0.7, 
                              style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                )
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SettingsCell(
                                     height: 24, 
                                     width: 150 , 
                                     textSpan: false, 
                                     text: 'Contact name',
                                     ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 120,
                                      value: 'rikanthan'
                                    ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 120,
                                      value: 'sellathurai'
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SettingsCell(
                                      height: 24, 
                                      width: 150 , 
                                      textSpan: false, 
                                      text: 'Email',
                                      ),
                                     SettingTextInput(
                                      height: 26,
                                       width: 245,
                                      value: 'rikanthanricky@gmail.com'
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     Text(
                                       'To make sure you receive important updates about your account,',
                                       style: TextStyle(
                                         color: Color(0xFF666666),
                                         fontFamily: 'Lato',
                                         fontSize: 14
                                         ),
                                       )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Text(
                                       'please',
                                       style: TextStyle(
                                         color: Color(0xFF666666),
                                         fontFamily: 'Lato',
                                         fontSize: 14
                                         ),
                                       ),
                                       GestureDetector(
                                         onTap: (){},
                                         child: Text(
                                         ' update your contact email in your user profile',
                                         style: TextStyle(
                                           color: kLightBlue,
                                           fontFamily: 'Lato',
                                           fontSize: 14
                                           ),
                                         ),
                                       )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     SettingsCell(
                                       height: 24, 
                                       width: 150 , 
                                       textSpan: false, 
                                       text: 'Phone',
                                       ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 245,
                                      value: '0775727563'
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:479,
                          height:190,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:kCustomWhite, 
                              width: 0.7, 
                              style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SettingsCell(
                                                height: 24, 
                                                width: 150 , 
                                                textSpan: false, 
                                                text: 'Website'
                                                ),
                                        SettingTextInput(
                                                    height: 26, 
                                                    width: 245, 
                                                    value: ''
                                                    ),
                                      ],
                                    ),
                                    SizedBox(height:10),
                                    Row(
                                      children: [
                                        SettingsCell(
                                                  height: 24, 
                                                  width: 150 , 
                                                  textSpan: false, 
                                                  text: 'Twitter'
                                                  ),
                                        SettingTextInput(
                                                      height: 26, 
                                                      width: 245, 
                                                      value: ''
                                                      ),
                                      ],
                                    ),
                                ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Divider(
                        thickness: 1,
                        color: kInputBorderColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SettingsButton(
                          buttonText: 'Cancel',
                          onPress: (){},
                          topPadding: 9,
                          leftPadding: 24
                          ),
                          SizedBox(width:10),
                          SettingsButton(
                          buttonText: 'Save',
                          onPress: (){},
                          topPadding: 9,
                          leftPadding: 24
                          ),
                      ],
                    ),
        ],
      ),
    );
  }
}