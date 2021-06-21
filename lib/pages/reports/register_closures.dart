import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/reports/register_closure_transactions.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/gredient_text_header.dart';
import 'package:sales/widgets/TextInput/register_table_cell.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/report_drawer.dart';

class RegisterClosure extends StatefulWidget {
 
  @override
  _RegisterClosureState createState() => _RegisterClosureState();
}

class _RegisterClosureState extends State<RegisterClosure> {
   String filter = 'All Registers';
   bool lessFilters = false;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ReportDrawer(reportsClicked:ReportsClicked.registerClosure ),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                isDarkMode: false,
                 text: 'Register Closures'
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:30.0,right: 30.0,bottom: 20.0),
                   child: Container(
                     decoration: BoxDecoration(
                          color: Color(0xFFececec),
                          border: Border.all(
                            color:Color(0xFFcccccc),
                            width:1
                            ),
                          borderRadius: BorderRadius.all(Radius.circular(5))        
                        ),
                        height: 79,
                        width: 960,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:5.0,bottom: 3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Register',
                                      style: k14BlackDark
                                      ),
                                      Container(
                                         decoration: BoxDecoration(
                                          border: Border.all(
                                            color:Color(0xFF767676),
                                            width:1
                                            ),
                                          borderRadius: BorderRadius.all(Radius.circular(3))        
                                        ),
                                        width: 150,
                                          height: 24,
                                        child: DropDownInput(
                                          isDarkMode: false,
                                          width: 150,
                                          height: 24,
                                        paddingAll: 0,
                                          onPressed: (String newValue) 
                                                          {
                                                            setState(() {
                                                            filter = newValue;
                                                            }
                                                          );
                                                        },
                                          dropdownValue: filter,
                                          dropdownList: ['All Registers','Main Registers'],
                                        ),
                                      )
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: (){}, 
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:9,bottom:9,left: 24,right: 24),
                                      child: Text(
                                        'Update',
                                        style:k14Grey2
                                        ),
                                    ),
                                     style:ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                                side: BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFb0b0b0)
                                                  ),
                                                )
                                              ),
                                              foregroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFEFEFEF))
                                          ),
                                    )
                                ],
                              )
                            ],
                          ),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                         GredientTableHeader(
                          text: 'Register',
                          isDarkMode: false,
                          width: 172,
                          isLeftborder: false,
                           isTopRightRadius: false, 
                           isTopLeftRadius:true,
                           alignment: MainAxisAlignment.start,
                          ),
                          Divider(
                            thickness:1,
                            color:Color(0xFF525252)
                          ),

                         GredientTableHeader(
                          text: '#',
                          isDarkMode: false,
                          width: 51,
                          isLeftborder: true,
                           isTopRightRadius: false, 
                           isTopLeftRadius:false,
                           alignment: MainAxisAlignment.end,
                          ),

                          GredientTableHeader(
                          text: 'Time Opened',
                          isDarkMode: false,
                          width: 224,
                          isLeftborder: false,
                           isTopRightRadius: false, 
                           isTopLeftRadius:false,
                           alignment: MainAxisAlignment.start,
                          ),

                          GredientTableHeader(
                          text: 'Time Closed',
                          isDarkMode: true,
                          width: 205,
                          isLeftborder: false,
                           isTopRightRadius: false, 
                           isTopLeftRadius:false,
                           alignment: MainAxisAlignment.start,
                          ),

                          GredientTableHeader(
                          text: 'Store Credit',
                          isDarkMode: false,
                          width: 99,
                          isLeftborder: false,
                           isTopRightRadius: false, 
                           isTopLeftRadius:false,
                           alignment: MainAxisAlignment.start,
                          ),

                          GredientTableHeader(
                          text: 'Cash',
                          isDarkMode: false,
                          width: 99,
                          isLeftborder: false,
                           isTopRightRadius: false, 
                           isTopLeftRadius:false,
                           alignment: MainAxisAlignment.end,
                          ),

                          GredientTableHeader(
                          text: 'Total',
                          isDarkMode: false,
                          width: 100,
                          isLeftborder: false,
                           isTopRightRadius: true, 
                           isTopLeftRadius:false,
                           alignment: MainAxisAlignment.end,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          RegisterCell(
                            alignment: MainAxisAlignment.start,
                            width: 173,
                            text: 'Main Register',
                            isLeftBorder: true,
                            isTextBlue: false,
                            isTextBold: true
                          ),

                          RegisterCell(
                            alignment: MainAxisAlignment.end,
                            width: 51,
                            text: '2',
                            isLeftBorder: false,
                            isTextBlue: false,
                            isTextBold: false
                          ),

                          GestureDetector(
                            onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (_)=> RegisterClosureSummary()));          
                            },
                            child: RegisterCell(
                              alignment: MainAxisAlignment.start,
                              width: 225,
                              text: '17 May 21 9.03 am',
                              isLeftBorder: false,
                              isTextBlue: true,
                              isTextBold: false
                            ),
                          ),

                          RegisterCell(
                            alignment: MainAxisAlignment.start,
                            width: 205,
                            text: 'Still open',
                            isLeftBorder: false,
                            isTextBlue: false,
                            isTextBold: false
                          ),

                           RegisterCell(
                            alignment: MainAxisAlignment.end,
                            width: 100,
                            text: '-',
                            isLeftBorder: false,
                            isTextBlue: false,
                            isTextBold: false
                          ),

                          RegisterCell(
                            alignment: MainAxisAlignment.end,
                            width: 100,
                            text: '-',
                            isLeftBorder: false,
                            isTextBlue: false,
                            isTextBold: false
                          ),

                          RegisterCell(
                            alignment: MainAxisAlignment.end,
                            width: 100,
                            text: '0.00',
                            isLeftBorder: false,
                            isTextBlue: false,
                            isTextBold: false
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      )
    );
  }
}
