import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';

class TaxVarient extends StatefulWidget {
  TaxVarient({Key key}) : super(key: key);

  @override
  _TaxVarientState createState() => _TaxVarientState();
}

class _TaxVarientState extends State<TaxVarient> {
   String tax = 'Default Tax for this Outlet';
  @override
  Widget build(BuildContext context) {
    return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            UserHeader(
                                text: 'Current Inventory',
                                padding: 0,
                                width: 157.89,
                                alignment: MainAxisAlignment.start,
                                height: 51.5
                              ),
                              UserHeader(
                                text: 'Tax',
                                padding: 8,
                                width: 157.89,
                                alignment: MainAxisAlignment.start,
                                height: 51.5
                              ),
                          ],
                        ),
                        Divider(
                          height: 1,
                          color: kInputBorderColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0,bottom: 16.0),
                          child: Row(
                            children: [
                              Container(
                              width: 165.89,
                              height: 46,
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text('Main Outlet',style: k15BlackNormal,),
                               ],
                             ),
                            ),
                            DropDownInput(
                                      isDarkMode: false,
                                      width: 442.11,
                                      height: 46,
                                      paddingAll: 12,
                                      onPressed: (String value){
                                        setState(() {
                                          tax = value;
                                        });
                                      },
                                      dropdownValue: tax,
                                      dropdownList: ['Default Tax for this Outlet','No Tax (0%)'],
                                    ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
  }
}