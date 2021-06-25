import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/reports/register_closure_full_details.dart';
import 'package:sales/pages/reports/register_closures.dart';
import 'package:sales/widgets/TextInput/gredient_table_cell.dart';
import 'package:sales/widgets/TextInput/light_gredient_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/outlet_gredient_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class MainRegister extends StatefulWidget {
 
  @override
  _MainRegisterState createState() => _MainRegisterState();
}

class _MainRegisterState extends State<MainRegister> {

  
   @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
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
                          GestureDetector(
                            onTap: (){
                            
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (_)=> RegisterClosure()));
                              
                            },
                            child: Text(
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
                            
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (_)=> RegisterClosure()));
                              
                            },
                            child: Text(
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
                            'Main Outlet',
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
                            'Main Register',
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
                        'Main Register - Main Outlet (Open)',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutletButton(
                              buttonText: 'Edit Register',
                              onPress: (){     
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (_)=> RegisterClosureFullDetails()));                            
                              }, 
                              topPadding: 3,
                              leftPadding: 10,
                              width: 108.36,
                              isButtonDisable: false,
                              ),
                              OutletButton(
                                buttonText: 'Delete Register',
                                onPress: (){     
                                  Navigator.push(
                                    context, MaterialPageRoute(builder: (_)=> RegisterClosureFullDetails()));                            
                                }, 
                                topPadding: 3,
                                leftPadding: 10,
                                width: 114.84,
                                isButtonDisable: false,
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
                    SizedBox( height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width:482,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for(int i = 0 ; i < 5 ; i++)
                              Padding(
                                 padding: const EdgeInsets.only(bottom :10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 190,
                                      height: 16,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                             i == 0 ?  'Quick Key template' : 
                                             i == 1 ?  'Receipt template' :
                                             i == 2 ?  'Invoice number' : 
                                             i == 3 ?  'Select user for next sale' :
                                             'Ask for a note',
                                              style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 14,
                                              color: Color(0xFF333333),
                                              fontWeight: FontWeight.w700
                                              )
                                        ),
                                      ),
                                    ),
                                    Text(
                                            i == 0 ?  'None Specified' : 
                                           i == 1 ?  'Standard Receipt' :
                                           i == 2 ?  '1' : 
                                           i == 3 ?  'No' :
                                           'Yes',
                                            style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 14,
                                            color: Color(0xFF333333),
                                            )
                                      ),
                                  ],
                                ),
                              ),  
                            ],
                          ),
                        ),
                        Container(
                          width:482,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for (int i = 0; i < 4 ; i++)
                              Padding(
                                padding: const EdgeInsets.only(bottom :10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 190,
                                      height: 16,
                                      child: Text(
                                          i == 0 ?  'Email receipt' : 
                                           i == 1 ?  'Print receipt' :
                                           i == 2 ?  'Print note on receipt' : 
                                             'Show discounts on receipt' 
                                           ,
                                            style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 14,
                                            color: Color(0xFF333333),
                                            fontWeight: FontWeight.w700
                                            )
                                      ),
                                    ),
                                    Text(
                                          'Yes' ,
                                            style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 14,
                                            color: Color(0xFF333333),
                                            )
                                      ),
                                  ],
                                ),
                              ),  
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:5.0,bottom: 1),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:30.0,bottom: 5),
                      child: Text(
                      'Most Recent Register Closures',
                            style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 20.04,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w700
                                      )
                      ),
                    ),
                    Row(
                      children: [
                        LightGredientTableHeader(
                            text: 'Opened', 
                            isDarkMode: false, 
                            width: 476.97,
                            isLeftborder: true,
                            isTopRightRadius: false,
                            isTopLeftRadius: true,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                            text: 'Closed', 
                            isDarkMode:false, 
                            width: 248.73,
                            isLeftborder: false,
                            isTopRightRadius: false,
                            isTopLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                            text: 'Total', 
                            isDarkMode:false, 
                            width: 166.94,
                            isLeftborder: false,
                            isTopRightRadius: false,
                            isTopLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                              text: '', 
                              isDarkMode:false, 
                              width: 67.72,
                              isLeftborder: true,
                              isTopRightRadius: true,
                              isTopLeftRadius: false,
                              alignment: MainAxisAlignment.end
                          ),
                      ],
                    ),         
                    Row(
                      children: [
                        GredientTableCell(
                            onPressed:(){},
                            text: '14 Jun 21 10:16 am', 
                            isTextButton:false, 
                            width: 476.93,
                            isLeftborder: false,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                            text: 'Still open', 
                            isTextButton:false, 
                            width: 248.73,
                            isLeftborder: false,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                              text: '', 
                              isTextButton:true, 
                              width: 166.94,
                              isLeftborder: true,
                              isBottomRightRadius: true,
                              isBottomLeftRadius: false,
                              alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                              text: '', 
                              isTextButton:true, 
                              width: 67.72,
                              isLeftborder: true,
                              isBottomRightRadius: true,
                              isBottomLeftRadius: false,
                              alignment: MainAxisAlignment.start
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                   TextButton(
                          onPressed: (){
                            Navigator.push(context,
                             MaterialPageRoute(
                               builder: (_)=> RegisterClosure()
                               )
                               );
                          },
                          child: Text(
                            'View all register closures for Main Register',
                            style:TextStyle(
                              color: Color(0xff0066cc),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              )
                            ),
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
