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
import 'package:sales/widgets/drawer/products_drawer.dart';

class NewStockTransfer extends StatefulWidget {
  @override
  _NewStockTransferState createState() => _NewStockTransferState();
}
class _NewStockTransferState extends State<NewStockTransfer> { 
  @override
  Widget build(BuildContext context) {
    String autoFill = 'Auto-fill from reorder point';
    String sourceOutlet = 'Main Outlet';
    String destinationOutlet = 'Main Outlet';
    bool isProduct = false;
    bool isStock = false;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ProductDrawer(productsClicked: ProductsClicked.stockControl,),
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
                                            left:30.0 ,
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
                                decoration: isProduct ? 
                                                TextDecoration.underline : 
                                                TextDecoration.none,
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
                                Navigator.push(
                                          context, 
                                          MaterialPageRoute(
                                                builder: (_)=> 
                                                    StockControl()
                                                    )
                                                  );
                              },
                             child: Text(
                              'Stock Control',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color:kLightBlue,
                                decoration: isStock ? 
                                            TextDecoration.underline : 
                                            TextDecoration.none,
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
                            'New Stock Transfer',
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
                        'NewStockTransfer Setup',
                        style: TextStyle(
                          fontSize: 23.52,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SettingsGredientHeader(
                                        cellType: CellType.both ,
                                        width: 964 ,
                                        text: 'Details',
                                      ),
                    Row(
                      children: [
                        Container(
                          width:480,
                          height:260,
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
                                              text: 'Name / reference',
                                              ),
                                    SettingTextInput(
                                      height: 26,
                                       width: 247,
                                      value: 'Trans 86N8 - Fri 18 Jun 2021'
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
                                              text: 'Delivery due',
                                              ),
                                         SettingTextInput(
                                      height: 26,
                                       width: 247,
                                      value: ''
                                    )
                                  ],
                                ),
                                SizedBox(height: 50,),
                                 Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     SettingsCell(
                                                height: 24, 
                                                width: 150 , 
                                                textSpan: false, 
                                                text: 'Auto fill',
                                                ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SettingDropDown(
                                            width: 200,
                                            height: 28,
                                            paddingAll: 1,
                                            onPressed: (String newValue) 
                                                            {
                                                              setState(() {
                                                              autoFill = newValue;
                                                              }
                                                            );
                                                          },
                                            dropdownValue: autoFill,
                                            dropdownList: [
                                                        'Auto-fill from reorder point',
                                                        'Don\'t auto-fill'
                                                        ],
                                            ),
                                            Text(
                                                 'Auto fill your order (500 product max).',
                                                 style: TextStyle(
                                                   fontSize: 14,
                                                   color:Color(0xFF666666),
                                                   fontFamily: 'Lato'
                                                   ),
                                                 )
                                      ],
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
                                       text: 'Import order',
                                      ),
                                    ChooseFile(
                                        buttonText: 'Choose file',
                                        onPress: (){}, 
                                        topPadding: 3,
                                        leftPadding: 10,
                                        width: 86,
                                        isButtonDisable: false,
                                      ),
                                Text(
                                    'No file chosen',
                                    style: k15BlackNormal,
                                    )            
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:479,
                          height:261,
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
                                            text: 'Source outlet'
                                            ),
                                        SettingDropDown(
                                          width: 245,
                                          height: 22,
                                          paddingAll: 1,
                                          onPressed: (String newValue) 
                                                          {
                                                            setState(() {
                                                            sourceOutlet = newValue;
                                                            }
                                                          );
                                                        },
                                          dropdownValue: sourceOutlet,
                                          dropdownList: ['Main Outlet',''],
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
                                            text: 'Destination outlet'
                                            ),
                                        SettingDropDown(
                                          width: 245,
                                          height: 22,
                                          paddingAll: 1,
                                          onPressed: (String newValue) 
                                                          {
                                                            setState(() {
                                                            destinationOutlet = newValue;
                                                            }
                                                          );
                                                        },
                                          dropdownValue: destinationOutlet,
                                          dropdownList: ['Main Outlet',''],
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
