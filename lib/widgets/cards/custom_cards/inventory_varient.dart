import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/divider/custom_divider.dart';

class InventoryVarient extends StatefulWidget {
  InventoryVarient({
    @required this.text,
  });
  final String text;

  @override
  _InventoryVarientState createState() => _InventoryVarientState();
}

class _InventoryVarientState extends State<InventoryVarient> {
  String sku = 'Custom';
  @override
  Widget build(BuildContext context) {
    return Container(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 20,
                          ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('SKU Code Type',style: k15BlackDark,),
                                SizedBox(height: 5,),
                                DropDownInput(
                                      isDarkMode: false,
                                      width: 160,
                                      height: 46,
                                      paddingAll: 12,
                                      onPressed: (String value){
                                        setState(() {
                                          sku = value;
                                        });
                                      },
                                      dropdownValue: sku,
                                      dropdownList: ['Custom','EAN','ISBN','ITF','JAN','UPC'],
                                    ),
                                    Padding(
                                    padding: const EdgeInsets.only(top:24.0,left: 2),
                                    child: TextButton.icon(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.add,
                                        size: 15,
                                        color: kSignInButtonColor,
                                        ),
                                        label: Text(
                                            'Add Another Code',
                                            style: k15Green,
                                          ) 
                                        ),
                                  )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('SKU Code',style: k15BlackDark,),
                                TextInput(
                                  darkMode: false,
                                  hideText: false,
                                  hintText:'10007',
                                  paddingTop: 5,
                                  height: 46,
                                  width: 140,
                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                    onChange: (val) { 
                                    },
                                  ),
                                
                              ],
                            ),
                            SizedBox(width: 20.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Text('Preview',style: k15BlackDark,),
                                  Container(
                                    color: kHomeBackgroundColor,
                                      child:Padding(
                                        padding: const EdgeInsets.all(24.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 24.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 50,
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      color: kInputBorderColor
                                                      ),
                                                  ),
                                                  SizedBox(
                                                  width: 8, 
                                                  ),
                                                  Text( widget.text+'\n10007',style: k15BlackNormal,),
                                                ],
                                              ),
                                            ),
                                            CustomDivider(
                                              topPadding: 1, 
                                              width: 245, 
                                              bottomPadding: 1,
                                              thickness: 1,
                                              color: kTableBorderColor,
                                              ),
                                            SizedBox(
                                              height: 24.0,
                                            ),
                                            Text('The first SKU code will be shown to staff\nand customers to help identify this\nproduct. When you have multiple codes\nall the barcodes will be scannable.'
                                            ,style: k14Black2,
                                            )
                                        ],
                                    ),
                                      )
                                  )
                              ],
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UserHeader(
                                text: 'Outlet',
                                padding: 0,
                                width: 152,
                                alignment: MainAxisAlignment.start,
                                height: 51.5
                              ),
                            UserHeader(
                                text: 'Current Inventory',
                                padding: 8,
                                width: 152,
                                alignment: MainAxisAlignment.start,
                                height: 51.5
                              ),
                            UserHeader(
                                text: 'Re-order Point',
                                padding: 8,
                                width: 152,
                                alignment: MainAxisAlignment.start,
                                height: 51.5
                              ),
                            UserHeader(
                                text: 'Re-order Quantity',
                                padding: 8,
                                width: 152,
                                alignment: MainAxisAlignment.start,
                                height: 51.5
                              ),
                          ],
                        ),
                        Divider(
                          height: 1,
                          color: kInputBorderColor,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 154,
                              height: 46,
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text('Main Outlet',style: k15BlackNormal,),
                               ],
                             ),
                            ),
                            TextInput(
                                  darkMode: false,
                                  hideText: false,
                                  hintText:'0',
                                  paddingTop: 0,
                                  height: 46,
                                  width: 138,
                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                    onChange: (val) { 
                                    },
                                  ),
                            TextInput(
                                  darkMode: false,
                                  hideText: false,
                                  hintText:'0',
                                  paddingTop: 0,
                                  height: 46,
                                  width: 138,
                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                    onChange: (val) { 
                                    },
                                  ),
                            TextInput(
                                  darkMode: false,
                                  hideText: false,
                                  hintText:'',
                                  paddingTop: 0,
                                  height: 46,
                                  width: 146,
                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                    onChange: (val) { 
                                    },
                                  ),
                          ],
                        )
                      ],
                    ),
                  );
  }
}