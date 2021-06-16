import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/close_register_header.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/button_text.dart';
import 'package:sales/widgets/cards/custom_cards/close_record_expansion_card.dart';
import 'package:sales/widgets/cards/popup_cards/close_register.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';

class CloseRegister extends StatefulWidget {
 
  @override
  _CloseRegisterState createState() => _CloseRegisterState();
}

class _CloseRegisterState extends State<CloseRegister> {
  
 bool enableExpansion = false;
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.open,),
      body:SingleChildScrollView(
        child: Container(
          color:kDashboardColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kDashboardColor,
                 text: 'Close Register',
                 isDarkMode: true,
                 ),
              Container(
                color: kAppBarColor,
                height: 77,
               child: Padding(
                 padding: const EdgeInsets.only(left:48.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Close yout register to finalize payments and sales for the day.',
                        style: kMediumTextDarkStyle
                        ),
                    ],
                  ),
               )
              ),
             Container(
                color: kDashboardColor,
                child:Padding(
                  padding: const EdgeInsets.only(top:44,bottom:24,left:48.0,right: 48.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Container(
                        width: 232,
                        child: Text(
                          'Register Details',
                          style:TextStyle(
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            color: kHelpTextColor, 
                            )
                          ),
                      ),
                      Container(
                        height: 116,
                        width:125,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Outlet',style: kMediumTextDarkStyle,),
                            Text('Register',style: kMediumTextDarkStyle,),
                            Text('Closure #',style: kMediumTextDarkStyle,),
                            Text('Opening time',style: kMediumTextDarkStyle,),
                          ],
                        ),
                      ),
                      Container(
                        height: 116,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Main Outlet',style: kMediumTextDarkNormalStyle,),
                            Text('Main Register',style: kMediumTextDarkNormalStyle,),
                            Text('2',style: kMediumTextDarkNormalStyle,),
                            Text('Mon,31st May,2021,11:43am',style: kMediumTextDarkNormalStyle,),
                          ],
                        ),
                      )

                    ]
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right:48.0,top:20.0,bottom: 20.0),
                child: Divider(
                  thickness: 1,
                  color: Color(0xFFfafbfb)
                ),
              ),
               Container(
                color: kDashboardColor,
                child:Padding(
                  padding: const EdgeInsets.only(bottom:24,left:48.0,right: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text(
                        'Payments Summary',
                        style: k18White
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            'Balance your register by\nentering the amount counted\nfrom the till and other\npayment terminals into the\nempty fields here.',
                             style: k15WhiteHeight
                            ),
                            SizedBox(
                              width:40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: kInputBorderColor,
                                        width: 0.7
                                        ),
                                      top: BorderSide(
                                        color: kInputBorderColor,
                                        width: 0.7
                                        ),
                                      )
                                    ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.start,
                                          height: enableExpansion ? 60 : 71,
                                          width:  enableExpansion ?  187 : 96,
                                          text:  enableExpansion ? 'Payment Types' : 'Payment\nTypes'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height:  enableExpansion ? 60 : 71,
                                          width:  enableExpansion ? 160 : 200,
                                          text: 'Expected (Rs)'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height:  enableExpansion ? 60 : 71,
                                          width:  enableExpansion ? 183 : 200,
                                          text: 'Counted (Rs)'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height:  enableExpansion ? 60 : 71,
                                          width:  enableExpansion ? 166 : 200,
                                          text: 'Differences (Rs)'
                                          ),                      
                                    ],
                                  ),
                                ),
                                !enableExpansion ?
                                Container(
                                   decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: kInputBorderColor,
                                        width: 0.7
                                        ),
                                      )
                                    ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:8.0,top:4,bottom: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Cash',style: kMediumTextDarkStyle,),
                                            TextButton(
                                              onPressed: (){
                                                    setState(() {
                                                      enableExpansion = true;
                                                    });
                                                  },
                                               child: Text(
                                                 'View Cash\nPayments,\nFloats and\nMovements',
                                                 style: TextStyle(
                                                   color: kDashboardIconColor,
                                                   fontFamily: 'Lato',
                                                   fontSize: 14,
                                                   ),
                                                 )
                                               ),
                                            GestureDetector(
                                              child: Container(
                                                width:80,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE6643C),
                                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                                  ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left:8.0,right: 8.0,top:4,bottom:4),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.warning,
                                                            color:kHelpTextColor,
                                                            size: 14,
                                                            ),
                                                          Text(
                                                            'NO',
                                                            style: k14WhiteDark
                                                            )
                                                        ],
                                                      ),
                                                      Text('FLOAT',style: kMediumTextDarkStyle,),
                                                      Text('SET',style: kMediumTextDarkStyle,)
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        CloseRegisterHeader(
                                            alignment: MainAxisAlignment.end,
                                            height: 150,
                                            width: 208,
                                            text: '0.00'
                                            ), 
                                        Container(
                                          height: 150,
                                            width: 200,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:8.0,top:4,bottom: 4,right: 8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                TextInput(
                                                darkMode: true,
                                                validate: (val) => val.length == 0 ? 'Enter the amount' : null,
                                                  onChange: (val) {
                                                        },
                                                  paddingTop: 5, 
                                                  hideText: false, 
                                                  height: 46,
                                                  width:130,
                                                  hintText:'Enter amount',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                         CloseRegisterHeader(
                                            alignment: MainAxisAlignment.end,
                                            height: 150,
                                            width: 200,
                                            text: '-'
                                            ),
                                      ],
                                    ),
                                  ),
                                ) :
                                CloseRecordCard(
                                  onPressed:(){
                                        setState(() {
                                          enableExpansion = false;
                                        });
                                      }
                                   ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: kInputBorderColor,
                                        width: 0.7
                                        ),
                                      )
                                    ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.start,
                                          height: 60,
                                          width: 100,
                                          text: 'Store Credit'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height: 60,
                                          width: 196,
                                          text: '0.00'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height: 60,
                                          width: 200,
                                          text: '0.00'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height: 60,
                                          width: 200,
                                          text: '-'
                                          ),                      
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: kInputBorderColor,
                                        width: 0.5
                                        ),
                                      )
                                    ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.start,
                                          height: 60,
                                          width: 96,
                                          text: 'Totals'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height: 60,
                                          width: 200,
                                          text: '0.00'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height: 60,
                                          width: 200,
                                          text: '-'
                                          ),
                                        CloseRegisterHeader(
                                          alignment: MainAxisAlignment.end,
                                          height: 60,
                                          width: 200,
                                          text: '-'
                                          ),                      
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                    ]
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right:48.0,bottom: 20.0),
                child: Divider(
                  thickness: 1,
                  color: Color(0xFFfafbfb)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:232,
                      child: Text(
                            'Closing Summary',
                            style:TextStyle(
                              fontSize: 18,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                              color: kHelpTextColor, 
                              )
                            ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Note',style: kMediumTextDarkStyle,),
                        TextInput(
                          darkMode: true,
                          validate: (val) => val.length == 0 ? 'Enter the amount' : null,
                            onChange: (val) {
                                  },
                            paddingTop: 5, 
                            hideText: false, 
                            height: 64,
                            width:696,
                            hintText:'Type to add a register closure note',
                          ),
                          SizedBox(
                            height: 64,
                            ),
                       ButtonText(
                          buttonText: 'Close Register',
                          onPress: (){
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => CloseRegisterPopup(),
                              );
                          },
                          buttonColor: kSignInButtonColor,
                          topPadding: 28,
                          leftPadding: 112,
                          fontSize: 18,
                          buttonTextColor: kHelpTextColor,
                        ),
                        SizedBox(
                          height: 24,
                        )
                      ],
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



