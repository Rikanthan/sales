import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/price_books.dart';
import 'package:sales/pages/products/products.dart';
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
class AddNewPrice extends StatefulWidget {
 
  @override
  _AddNewPriceState createState() => _AddNewPriceState();
}

class _AddNewPriceState extends State<AddNewPrice> {
  
  @override
  Widget build(BuildContext context) {
    String customer = 'All Customers';
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
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  isProduct = true;
                                });
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> Products())); 
                            },
                            child: Text(
                              'Products',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color:Color(0xFF0066CC),
                                decoration: isProduct ? TextDecoration.underline : TextDecoration.none,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: Color(0xFF0066CC)
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
                              color:Color(0xFF999999),
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
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> PriceBooks()));
                              },
                             child: Text(
                              'Price books',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color:Color(0xFF0066CC),
                                decoration: isStock ? TextDecoration.underline : TextDecoration.none,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: Color(0xFF0066CC)
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
                              color:Color(0xFF999999),
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
                              color:Color(0xFF999999),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Text(
                        'New Price Book',
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
                      height: 232,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid
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
                                decoration: BoxDecoration(
                                    border: Border(
                                       right: BorderSide( color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid)
                                      ),
                                    ),
                                width:481,
                                height: 230,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                         SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Name',),
                                          SettingTextInput(
                                            height: 28,
                                             width: 247,
                                            value: ''
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                       Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                           SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Customer group',),
                                          SettingDropDown(
                                              width: 160,
                                              height: 28,
                                              paddingAll: 4,
                                              onPressed: (String newValue) 
                                                              {
                                                                setState(() {
                                                                customer = newValue;
                                                                }
                                                              );
                                                            },
                                              dropdownValue: customer,
                                              dropdownList: ['All Customers',''],
                                              )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                       Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                           SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Outlet',),
                                          SettingDropDown(
                                              width: 160,
                                              height: 28,
                                              paddingAll: 4,
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
                                  height: 230,
                                   decoration: BoxDecoration(
                                    border: Border(
                                       left: BorderSide( color:Color(0xFFCCCCCC), width: 0.7, style: BorderStyle.solid)
                                      ),
                                    ),  
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                          Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                        SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Valid from',),
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
                                        SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Valid to',),
                                          SettingTextInput(
                                            height: 26,
                                            width: 247,
                                            value: ''
                                          )
                                        ],
                                      ),
                                       Padding(
                                         padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                         child: Divider(
                                            thickness: 1,
                                            color: kInputBorderColor,
                                          ),
                                       ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SettingsCell(height: 24, width: 150 , textSpan: false, text: 'Price book file',),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    ChooseFile(
                                                      buttonText: 'Choose File',
                                                      onPress: (){}, 
                                                      topPadding: 3,
                                                      leftPadding: 10,
                                                      width: 86,
                                                      isButtonDisable: false,
                                                      ),
                                                      Text(' No file chosen',style: kMediumTextNormalStyle,)
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text('You can upload your price book using a CSV', style: k14Grey,),
                                                Row(
                                                  children: [
                                                    Text('Download a ', style: k14Grey,),
                                                    GestureDetector(
                                                      onTap: (){},
                                                      child: Text(
                                                        'template file ',
                                                         style: k14Blue2,
                                                         )
                                                        ),
                                                    Text('to get started', style: k14Grey,),
                                                  ],
                                                )
                                              ],
                                            ),
                                            
                                          ],
                                        ),
                                  
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                          
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
                          buttonText: 'Save Price Book',
                          onPress: (){},
                          topPadding: 9,
                          leftPadding: 24,
                          width: 160,
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
