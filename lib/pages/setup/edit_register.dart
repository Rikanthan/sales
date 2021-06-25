import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/setting_input_text.dart';
import 'package:sales/widgets/TextInput/settings_cell.dart';
import 'package:sales/widgets/TextInput/settings_drop_down.dart';
import 'package:sales/widgets/TextInput/settings_gredient.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/save_button.dart';
import 'package:sales/widgets/buttons/settings_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

enum SelectUser{
  yes,no
}

enum EmailReceipt{
  yes,no
}

enum PrintReceipt{
  yes,no
}

enum NoteOnReceipt{
  yes,no
}

enum ShowDiscounts{
  yes,no
}

class EditRegister extends StatefulWidget {
 
  @override
  _EditRegisterState createState() => _EditRegisterState();
}

class _EditRegisterState extends State<EditRegister> {
  
  @override
  Widget build(BuildContext context) {
    String _cashManagement = 'Cash';
    String _receiptTemplate = 'Standard Receipt';
    String _askForNote = 'On Save/Layby/Account/Return';
    SelectUser _selectUser = SelectUser.no;
    EmailReceipt _emailReceipt = EmailReceipt.yes;
    PrintReceipt _printReceipt = PrintReceipt.yes;
    NoteOnReceipt _noteOnReceipt = NoteOnReceipt.yes;
    ShowDiscounts _showDiscounts = ShowDiscounts.yes;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked:SetupClicked.outlets ),
      body:SingleChildScrollView(
        child: Container(
          color:Colors.white,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(top:20.0,bottom: 20.0,left:30.0 ,right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:15.0,bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Setup',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color:Color(0xFF0066CC),
                              decoration: TextDecoration.none,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Color(0xFF0066CC)
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            '>',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color:Color(0xFF999999),
                              ),
                          ),
                          Text(
                            'Outlets and Registers',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color:Color(0xFF0066CC),
                              decoration: TextDecoration.none,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Color(0xFF0066CC)
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            'Edit Register',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color:Color(0xFF999999),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Text(
                        'Edit Register',
                        style: TextStyle(
                          fontSize: 23.52,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SettingsGredientHeader(cellType: CellType.both ,width: 964 ,text: 'Details',),
                    Row(
                      children: [
                        Container(
                          width:480,
                          height:76,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid
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
                                   SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Register name',),
                                    SettingTextInput(
                                      height: 28,
                                       width: 247,
                                      value: 'Main Register'
                                    )
                                  ],
                                ),                            
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:479,
                          height:74,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid
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
                                        SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Cash Management',),
                                        SettingDropDown(
                                            width: 245,
                                            height: 28,
                                            paddingAll: 4,
                                            onPressed: (String newValue) 
                                                            {
                                                              setState(() {
                                                              _cashManagement = newValue;
                                                              }
                                                            );
                                                          },
                                            dropdownValue: _cashManagement,
                                            dropdownList: ['Cash',''],
                                            ),         
                                      ],
                                    )                                                 
                                ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SettingsGredientHeader(cellType: CellType.both ,width: 964 ,text: 'Receipt',),
                    Container(
                       width:962,
                        height:236,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid
                              ),
                            borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                )
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                     SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Receipt template',),
                                     SettingDropDown(
                                        width: 245,
                                        height: 28,
                                        paddingAll: 4,
                                        onPressed: (String newValue) 
                                                        {
                                                          setState(() {
                                                          _receiptTemplate = newValue;
                                                          }
                                                        );
                                                      },
                                        dropdownValue: _receiptTemplate,
                                        dropdownList: ['Standard Receipt',''],
                                        ),
                                  ],
                                ),
                                SizedBox(
                                    height: 10,
                                    ),
                                Row(
                                  children: [
                                    SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Number',),
                                    SettingTextInput(
                                      height: 28,
                                       width: 73,
                                      value: '0'
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: 10,
                                    ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Prefix',),
                                    SettingTextInput(
                                      height: 28,
                                       width: 73,
                                      value: ''
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only( left:150.0 , top: 5.0 ,bottom: 5.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Maximum 10 characters',
                                        style: TextStyle(
                                          color:  Color(0xff666666),
                                          fontFamily: 'Roboto',
                                          fontSize: 14
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: 10,
                                    ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Suffix',),
                                    SettingTextInput(
                                      height: 28,
                                       width: 73,
                                      value: ''
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only( left:150.0 , top: 5.0 ,bottom: 5.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Maximum 10 characters',
                                        style: TextStyle(
                                          color:  Color(0xff666666),
                                          fontFamily: 'Roboto',
                                          fontSize: 14
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                    ),
                     SizedBox(
                        height: 20,
                        ),
                    SettingsGredientHeader(cellType: CellType.both ,width: 964 ,text: 'At End of Sale',),
                    Row(
                      children: [
                        Container(
                          width:480,
                          height:168,
                                  decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid
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
                                for(int i = 0 ; i < 3 ; i ++)
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:0.0),
                                    child: Row(
                                      children: [
                                                  SettingsCell(
                                                    height: i !=0 ? 24 : 56, width: 150 ,
                                                     textSpan: i == 0 ? true : false,
                                                      text: i == 0 ? 'Select user for next\nsale' : 
                                                            i == 1 ? 'Email receipt' :
                                                            'Print receipt'
                                                      ),
                                                  i == 0 ?    
                                                Radio(
                                                  value: SelectUser.yes,
                                                  groupValue: _selectUser,
                                                  onChanged: (SelectUser value)
                                                  {
                                                    setState(() {
                                                      _selectUser = value;
                                                    });
                                                  }
                                                ) 
                                                : i == 1 ?
                                                Radio(
                                                  value: EmailReceipt.yes,
                                                  groupValue: _emailReceipt,
                                                  onChanged: (EmailReceipt value)
                                                  {
                                                    setState(() {
                                                      _emailReceipt = value;
                                                    });
                                                  }
                                                ) : 
                                                Radio(
                                                  value: PrintReceipt.yes,
                                                  groupValue: _printReceipt,
                                                  onChanged: (PrintReceipt value)
                                                  {
                                                    setState(() {
                                                      _printReceipt = value;
                                                    });
                                                  }
                                                ),
                                                Text('Yes',style: TextStyle(fontFamily: 'Lato',fontSize: 14, color: kAppBarColor),),
                                                SizedBox(width:20),
                                                 i == 0 ?    
                                                Radio(
                                                  value: SelectUser.no,
                                                  groupValue: _selectUser,
                                                  onChanged: (SelectUser value)
                                                  {
                                                    setState(() {
                                                      _selectUser = value;
                                                    });
                                                  }
                                                ) 
                                                : i == 1 ?
                                                Radio(
                                                  value: EmailReceipt.no,
                                                  groupValue: _emailReceipt,
                                                  onChanged: (EmailReceipt value)
                                                  {
                                                    setState(() {
                                                      _emailReceipt = value;
                                                    });
                                                  }
                                                ) : 
                                                Radio(
                                                  value: PrintReceipt.no,
                                                  groupValue: _printReceipt,
                                                  onChanged: (PrintReceipt value)
                                                  {
                                                    setState(() {
                                                      _printReceipt = value;
                                                    });
                                                  }
                                                ),
                                                Text('No',style: TextStyle(fontFamily: 'Lato',fontSize: 14, color: kAppBarColor),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                   )
                                 ),
                                 Container(
                                  width:479,
                                  height:168,
                                          decoration: BoxDecoration(
                                    border: Border.all(
                                      color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid
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
                                            SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Ask for a note',),
                                            SettingDropDown(
                                                width: 245,
                                                height: 28,
                                                paddingAll: 4,
                                                onPressed: (String newValue) 
                                                                {
                                                                  setState(() {
                                                                  _askForNote = newValue;
                                                                  }
                                                                );
                                                              },
                                                dropdownValue: _askForNote,
                                                dropdownList: ['On Save/Layby/Account/Return','Never' , 'On All sales'],
                                                ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        for(int i = 0 ; i < 2 ; i ++)
                                          Padding(
                                            padding: const EdgeInsets.only(top:0.0),
                                            child: Row(
                                              children: [
                                                          SettingsCell(
                                                            height: i ==0 ? 24 : 56, width: 150 ,
                                                            textSpan: i == 1 ? true : false,
                                                              text: i == 0 ? 'Print note on receipt' : 
                                                                    'Show discounts on\nreceipts'
                                                              ),
                                                          i == 0 ?    
                                                        Radio(
                                                          value: NoteOnReceipt.yes,
                                                          groupValue: _noteOnReceipt,
                                                          onChanged: (NoteOnReceipt value)
                                                          {
                                                            setState(() {
                                                              _noteOnReceipt = value;
                                                            });
                                                          }
                                                        ) 
                                                        : 
                                                        Radio(
                                                          value: ShowDiscounts.yes,
                                                          groupValue: _showDiscounts,
                                                          onChanged: (ShowDiscounts value)
                                                          {
                                                            setState(() {
                                                              _showDiscounts = value;
                                                            });
                                                          }
                                                        ),
                                                        Text('Yes',style: TextStyle(fontFamily: 'Lato',fontSize: 14, color: kAppBarColor),),
                                                        SizedBox(width:20),
                                                        i == 0 ?    
                                                        Radio(
                                                          value: NoteOnReceipt.no,
                                                          groupValue: _noteOnReceipt,
                                                          onChanged: (NoteOnReceipt value)
                                                          {
                                                            setState(() {
                                                              _noteOnReceipt = value;
                                                            });
                                                          }
                                                        ) 
                                                        : 
                                                        Radio(
                                                          value: ShowDiscounts.no,
                                                          groupValue: _showDiscounts,
                                                          onChanged: (ShowDiscounts value)
                                                          {
                                                            setState(() {
                                                              _showDiscounts = value;
                                                            });
                                                          }
                                                        ),
                                                        Text('No',style: TextStyle(fontFamily: 'Lato',fontSize: 14, color: kAppBarColor),),
                                                    ],
                                                  ),
                                                ), 
                                              ],
                                          ),
                                        ),
                                      ),
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
                                    SaveButton(
                                    buttonText: 'Save Register',
                                    onPress: (){},
                                    topPadding: 9,
                                    leftPadding: 24,
                                    width: 142.03,
                                    ),
                                ],
                              ),
                            ]
                          ),
                        ),
                        
                      ],
                    ),
            
        )
      )
    );
  }
}
