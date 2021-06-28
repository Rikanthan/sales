import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/setting_input_text.dart';
import 'package:sales/widgets/TextInput/settings_cell.dart';
import 'package:sales/widgets/TextInput/settings_drop_down.dart';
import 'package:sales/widgets/TextInput/settings_gredient.dart';
import 'package:sales/widgets/buttons/settings_button.dart';
class AddressInformation extends StatefulWidget {
  const AddressInformation({Key key}) : super(key: key);

  @override
  _AddressInformationState createState() => _AddressInformationState();
}

class _AddressInformationState extends State<AddressInformation> {
  String country1 = 'India';
  String country2 = 'India';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsGredientHeader(
            cellType: CellType.both ,
            width: 964 ,
             text: 'Address',
             ),
          Row(
            children: [
              Container(
                width: 480,
                height:35,
                decoration: BoxDecoration(
                            border: Border(
                              left:BorderSide(
                                          color:kCustomWhite, 
                                          width: 0.7, 
                                          style: BorderStyle.solid
                                          ),
                              right:BorderSide(
                                          color:kCustomWhite, 
                                          width: 0.7, 
                                          style: BorderStyle.solid
                                          ), 
                              ),
                              color: Color(0xFFf6f6f6)
                            ), 
                          child: Padding(
                            padding: const EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top:9,
                                                    bottom: 7
                                                    ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                    Text(
                                      'Physical Address',
                                        style: TextStyle(
                                          color: kBlackOpacity,
                                          fontSize: 14,
                                          fontFamily: 'Lato'
                                          ),
                                        ),
                                   
                                  ],
                                ),
                              )
                            ),
                        Container(
                        width: 480,
                        height:35,
                         decoration: BoxDecoration(
                            border: Border(
                              right:BorderSide(
                                            color:kCustomWhite, 
                                            width: 0.7, 
                                            style: BorderStyle.solid
                                            ),
                              ),
                              color: Color(0xFFf6f6f6)
                            ), 
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top:9,bottom: 7),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                      width:150,
                                      height:18,
                                      child: Text(
                                        'Postal Address',
                                          style: TextStyle(
                                            color: kBlackOpacity,
                                            fontSize: 14,
                                            fontFamily: 'Lato'
                                            ),
                                          ),
                                    ),
                                    TextButton(
                                      onPressed: (){},
                                      child: Text(
                                          'Same as Physical Address',
                                            style: TextStyle(
                                              color: kLightBlue,
                                              fontSize: 14,
                                              fontFamily: 'Lato'
                                              ),
                                            ),
                                    ),
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width:480,
                          height:292,
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
                                            text: 'Street',
                                            ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 245,
                                      value: ''
                                    ),
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
                                            text: 'Street',
                                            ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 245,
                                      value: ''
                                    ),
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
                                              text: 'Suburb',
                                              ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 160,
                                      value: ''
                                    ),
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
                                            text: 'City',
                                            ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 160,
                                      value: ''
                                    ),
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
                                          text: 'Postcode',
                                          ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 73,
                                      value: ''
                                    ),
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
                                            text: 'State',
                                            ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 160,
                                      value: ''
                                    ),
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
                                              text: 'Country',
                                              ),
                                    SettingDropDown(
                                        width: 160,
                                        height: 22,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          country2 = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: country2,
                                        dropdownList: [
                                                        'India',
                                                        'SriLanka',
                                                        'UK',
                                                        "USA",
                                                        'Australia'
                                                        ],
                                        ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:480,
                          height:292,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:kCustomWhite, width: 0.7, style: BorderStyle.solid
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
                                                text: 'Street',
                                                ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 245,
                                      value: ''
                                    ),
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
                                          text: 'Street',
                                          ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 245,
                                      value: ''
                                    ),
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
                                          text: 'Suburb',
                                          ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 160,
                                      value: ''
                                    ),
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
                                     text: 'City',
                                     ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 160,
                                      value: ''
                                    ),
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
                                      text: 'Postcode',
                                      ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 73,
                                      value: ''
                                    ),
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
                                            text: 'State',
                                            ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 160,
                                      value: ''
                                    ),
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
                                              text: 'Country',
                                              ),
                                    SettingDropDown(
                                        width: 160,
                                        height: 22,
                                        paddingAll: 1,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          country1 = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: country1,
                                        dropdownList: ['India','SriLanka','UK',"USA",'Australia'],
                                        ),
                                  ],
                                ),
                                SizedBox(height: 10,), 
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                                                  top:10.0,
                                                  bottom: 10.0
                                                  ),
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