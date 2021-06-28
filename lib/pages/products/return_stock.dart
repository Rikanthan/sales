import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/products.dart';
import 'package:sales/pages/products/stock_control.dart';
import 'package:sales/widgets/TextInput/setting_input_text.dart';
import 'package:sales/widgets/TextInput/settings_cell.dart';
import 'package:sales/widgets/TextInput/settings_drop_down.dart';
import 'package:sales/widgets/TextInput/settings_gredient.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/choose_file_button.dart';
import 'package:sales/widgets/buttons/save_button.dart';
import 'package:sales/widgets/buttons/settings_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';
class ReturnStock extends StatefulWidget {
 
  @override
  _ReturnStockState createState() => _ReturnStockState();
}

class _ReturnStockState extends State<ReturnStock> {
  
  @override
  Widget build(BuildContext context) {
    String deliverTo = 'Any';
    String returnFrom = 'Main Outlet';
    bool isProduct = false;
    bool isStock = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked:SetupClicked.general ),
      body:SingleChildScrollView(
        child: Container(
          color:kWhite,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(
                                        top:20.0,
                                        bottom: 20.0,
                                        left:30.0,
                                        right: 30.0
                                        ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:15.0,bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  isProduct = true;
                                });
                                Navigator.push(
                                          context, 
                                          MaterialPageRoute(
                                            builder: (_)=> Products()
                                            )
                                      ); 
                            },
                            child: Text(
                              'Products',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color:kLightBlue,
                                decoration: isProduct ? TextDecoration.underline : TextDecoration.none,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: kLightBlue
                                ),
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
                              color:kLightGrey,
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                           GestureDetector(
                             onTap: (){
                                setState(() {
                                  isStock = false;
                                });
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> StockControl()));
                              },
                             child: Text(
                              'Stock Control',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color:kLightBlue,
                                decoration: isStock ? TextDecoration.underline : TextDecoration.none,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: kLightBlue
                                ),
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
                              color:kLightGrey,
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            'New Stock Return',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color:kLightGrey,
                              ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Text(
                        'New Stock Return',
                        style: TextStyle(
                          fontSize: 23.52,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SettingsGredientHeader(cellType: CellType.both ,width: 964 ,text: 'Details',),
                    Container(
                      width: 964,
                      height: 247,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:kCustomWhite, width: 0.7, style: BorderStyle.solid
                          ),
                        borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)
                            )
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width:481,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                         SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Return No.',),
                                          SettingTextInput(
                                            height: 26,
                                             width: 245,
                                            value: 'MAI-1'
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                       Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                           SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Deliver to',),
                                          SettingDropDown(
                                              width: 200,
                                              height: 28,
                                              paddingAll: 1,
                                              onPressed: (String newValue) 
                                                              {
                                                                setState(() {
                                                                deliverTo = newValue;
                                                                }
                                                              );
                                                            },
                                              dropdownValue: deliverTo,
                                              dropdownList: ['Any','Main Outlet'],
                                              )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                       Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                           SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Return from',),
                                          SettingDropDown(
                                              width: 200,
                                              height: 28,
                                              paddingAll: 1,
                                              onPressed: (String newValue) 
                                                              {
                                                                setState(() {
                                                                returnFrom = newValue;
                                                                }
                                                              );
                                                            },
                                              dropdownValue: returnFrom,
                                              dropdownList: ['Main Outlet',''],
                                              ),
                                              
                                        ],
                                      ),
                                       SizedBox(height: 10,),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  width:481,   
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                          Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                        SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Delivery due',),
                                          SettingTextInput(
                                            height: 26,
                                            width: 247,
                                            value: ''
                                          )
                                        ],
                                      ),
                                    SizedBox(height:10),
                                   Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                        SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Name / reference',),
                                          SettingTextInput(
                                            height: 26,
                                            width: 247,
                                            value: 'Return - Fri 18 Jun 2021'
                                          )
                                        ],
                                      ),
                                     SizedBox(height:10),
                                   Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                        SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Supplier invoice',),
                                          SettingTextInput(
                                            height: 26,
                                            width: 247,
                                            value: ''
                                          )
                                        ],
                                      ),
                                  SizedBox(height:20),
                                  
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                           Divider(
                             thickness: 1,
                             color: kInputBorderColor,
                           ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Import stock return',),
                                ChooseFile(
                                  buttonText: 'Choose file',
                                  onPress: (){}, 
                                  topPadding: 3,
                                  leftPadding: 10,
                                  width: 86,
                                  isButtonDisable: false,
                                  ),
                                Text('No file chosen',style: k15BlackNormal,)
                              ],
                            ),
                          )
                        ],
                      ),
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
                          buttonText: 'Save',
                          onPress: (){},
                          topPadding: 9,
                          leftPadding: 24,
                          width: 100,
                          ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      )
    );
  }
}
