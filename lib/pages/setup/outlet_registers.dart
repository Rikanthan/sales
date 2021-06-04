import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/gredient_text_header.dart';
import 'package:sales/widgets/TextInput/setting_input_text.dart';
import 'package:sales/widgets/TextInput/settings_cell.dart';
import 'package:sales/widgets/TextInput/settings_drop_down.dart';
import 'package:sales/widgets/TextInput/settings_gredient.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/outlet_gredient_button.dart';
import 'package:sales/widgets/buttons/settings_button.dart';
import 'package:sales/widgets/cards/address_information.dart';
import 'package:sales/widgets/cards/basic_information.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

enum Answer{
  yes,no
}

class OutletRegisters extends StatefulWidget {
 
  @override
  _OutletRegistersState createState() => _OutletRegistersState();
}

class _OutletRegistersState extends State<OutletRegisters> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked:SetupClicked.outlets),
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
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            'Outlets and Registers',
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
                        'Outlets and Registers',
                        style: TextStyle(
                          fontSize: 23.52,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width:964,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 10.0,right: 10.0),
                        child: Row(
                          children: [
                            OutletButton(
                              buttonText: 'Add Outlet',
                              onPress: (){}, 
                              topPadding: 3,
                              leftPadding: 10,
                              width: 93.55,
                              ),
                              SizedBox(width:4),
                              OutletButton(
                              buttonText: 'Add Receipt Template',
                              onPress: (){}, 
                              topPadding: 3,
                              leftPadding: 10,
                              width: 168,
                              ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                    border: Border.all(
                      color:Color(0xFFb0b0b0), width: 1, style: BorderStyle.solid
                      ),
                    gradient: LinearGradient(
                         colors: [Color(0xFFededed) , Color(0xFFdbdbdb) ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
                     boxShadow:[
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: -1,
                        blurRadius: 2,
                        offset: Offset.zero
                      ),
                     ],
                    borderRadius: BorderRadius.all(
                         Radius.circular(5)
                        )
                      ),
                    ),
                    SizedBox( height: 20,),
                    Row(
                      children: [
                        GredientTableHeader(
                          text: 'Outlet Name', 
                          isDarkMode: false, 
                          width: 162.23,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: true,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Default Tax', 
                          isDarkMode:false, 
                          width: 162.23,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Registers', 
                          isDarkMode:false, 
                          width: 133.61,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Status', 
                          isDarkMode:false, 
                          width: 76.34,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Details', 
                          isDarkMode:false, 
                          width: 229.03,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: '', 
                          isDarkMode:false, 
                          width: 190.91,
                          isLeftborder: true,
                          isTopRightRadius: true,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid
                              ),
                              color: Color(0xFFF6F6F6)
                          ),
                          width: 162.23,
                          height: 46,
                          child:Padding(
                            padding: const EdgeInsets.only(top:7.0,bottom: 7.0,left: 9.0,right: 9.0),
                            child: Row(
                              children: [
                                Text(
                                  'Main Outlet',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF0066cc),
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid)
                              ),
                              color: Color(0xFFF6F6F6)
                          ),
                          width: 162.23,
                          height: 46,
                          child:Padding(
                            padding: const EdgeInsets.only(top:7.0,bottom: 7.0,left: 9.0,right: 9.0),
                            child: Row(
                              children: [
                                Text(
                                  'No Tax (0%)',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF333333),
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                             color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid
                              ),
                              color: Color(0xFFF6F6F6)
                          ),
                          width: 438.98,
                          height: 46,
                        ),
                         Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              right: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid)
                              ),
                              color: Color(0xFFF6F6F6)
                          ),
                          width: 190.91,
                          height: 46,
                          child:Padding(
                            padding: const EdgeInsets.only(top:7.0,left: 9.0,right: 9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Edit Outlet',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFF0066cc),
                                    )
                                  ),
                                  GestureDetector(
                                    onTap: (){},
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:10.0),
                                      child: Text(
                                      'Add Registers',
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                        color: Color(0xFF333333),
                                        )
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
                          width:325.47,
                          height: 92,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              left: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              right: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid)
                              ),
                              color: Color(0xFFFCFCFC)
                                )
                          ),
                          Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:BorderSide (color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              right:BorderSide (color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              ),
                          ),
                          width: 133.61,
                          height: 92,
                          child:Padding(
                            padding: const EdgeInsets.only(top:7.0,bottom: 7.0,left: 9.0,right: 9.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Main Register',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Color(0xFF0066cc),
                                    decorationColor: Color(0xFF0066cc),
                                    decorationStyle: TextDecorationStyle.solid
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:BorderSide (color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              right:BorderSide (color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              ),
                          ),
                          width: 76.34,
                          height: 92,
                          child:Padding(
                            padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 10.0,right: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Open',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Color(0xFF333333),
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:BorderSide (color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              right:BorderSide (color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              ),
                          ),
                          width: 228.03,
                          height: 92,
                          child:Padding(
                            padding: const EdgeInsets.only(top:8.0,left: 10.0,right: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '•   Standard Receipt',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Color(0xFF333333),
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                                    child: Text(
                                    '•   Invoice 1',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      )
                                    ),
                                  ),
                                  Text(
                                  "•   Don't select user for next sale",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Color(0xFF333333),
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                    "    More Details",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      color: Color(0xFF0066cc),
                                      )
                                    ),
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:BorderSide (color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              right:BorderSide (color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid),
                              ),
                          ),
                          width: 189.91,
                          height: 92,
                          child:Padding(
                            padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 10.0,right: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Edit register',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Color(0xFF0066CC),
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  SizedBox(height:30),
                  Text(
                    'Receipt Templates',
                          style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: Color(0xFF333333),
                                    fontWeight: FontWeight.w700
                                    )
                    ),
                  SizedBox(height:5),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        width:132,
                        height: 222,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color:Colors.black.withOpacity(0.4), width: 1, style: BorderStyle.solid
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 7.0,
                                    spreadRadius:0.0,
                                    offset: Offset(4.0, 2.0), // shadow direction: bottom right
                                )
                            ],
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Standart Receipt',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: Color(0xFF0066cc),
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5.0),
                                    child: Text(
                                    'Thermal',
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      )
                                    ),
                                  ),
                                  Text(
                                    'shop',
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      )
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5.0),
                                    child: Divider(thickness: 1.2,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 11.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Container(
                                        height: 40,
                                        child: Text(
                                        '2',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: Color(0xFF333333),
                                          )
                                        ),
                                      ),
                                      Text(
                                      'Products',
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        color: Color(0xFF333333),
                                        )
                                      ),
                                    ],
                                ),
                                  ),
                                Divider(
                                  thickness: 1.2,
                                )
                            ],
                          ),
                        ),
                      ),
                    )
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
