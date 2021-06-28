import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/reports/register_closure_full_details.dart';
import 'package:sales/pages/reports/register_closures.dart';
import 'package:sales/pages/setup/edit_outlet.dart';
import 'package:sales/widgets/TextInput/gredient_table_cell.dart';
import 'package:sales/widgets/TextInput/light_gredient_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/outlet_gredient_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class MainOutlet extends StatefulWidget {
 
  @override
  _MainOutletState createState() => _MainOutletState();
}

class _MainOutletState extends State<MainOutlet> {

  
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
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (_)=> 
                                          RegisterClosure()
                                          )
                                    );
                            },
                            child: Text(
                              'Setup',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color:kLightBlue,
                                decoration: TextDecoration.none,
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
                                Navigator.push(
                                  context,
                                   MaterialPageRoute(
                                     builder: (_)=> 
                                              RegisterClosure()
                                              )
                                          );
                            },
                            child: Text(
                              'Outlets and Registers',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color:kLightBlue,
                                decoration: TextDecoration.none,
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
                            'Register closure transactions',
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
                        'Main Outlet',
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
                              buttonText: 'Edit Outlet',
                              onPress: (){     
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (_)=> EditOutlet()
                                    )
                                  );                            
                              }, 
                              topPadding: 3,
                              leftPadding: 10,
                              width: 92.78,
                              isButtonDisable: false,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              OutletButton(
                                buttonText: 'Add a Register',
                                onPress: (){     
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (_)=> 
                                                  RegisterClosureFullDetails()
                                                  )
                                              );                            
                                }, 
                                topPadding: 3,
                                leftPadding: 10,
                                width: 120.81,
                                isButtonDisable: false,
                              ),
                              Spacer(),
                              OutletButton(
                                buttonText: 'Delete Outlet',
                                onPress: (){     
                                  Navigator.push(
                                    context, 
                                        MaterialPageRoute(
                                            builder: (_)=> 
                                            RegisterClosureFullDetails()
                                            )
                                        );                            
                                }, 
                                topPadding: 3,
                                leftPadding: 10,
                                width: 98.83,
                                isButtonDisable: false,
                              ),
                              
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                    border: Border.all(
                      color:kCustomGrey, width: 1, style: BorderStyle.solid
                      ),
                    gradient: LinearGradient(
                         colors: [ kCustomWhite7 ,  kCustomWhite8 ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
                     boxShadow:[
                      BoxShadow(
                        color: kWhite.withOpacity(0.2),
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 130,
                                    height: 16,
                                    child: Text(
                                          'Phone' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: kBlackOpacity,
                                          fontWeight: FontWeight.w700
                                          )
                                    ),
                                  ),
                                  Text(
                                     '0775727563' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: kBlackOpacity,
                                          )
                                    ),
                                ],
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 130,
                                    height: 16,
                                    child: Text(
                                    'Default sales tax' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: kBlackOpacity,
                                          fontWeight: FontWeight.w700
                                          )
                                    ),
                                  ),
                                  Text(
                                        'No Tax(0%)' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: kBlackOpacity,
                                          )
                                    ),
                                ],
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
                      'Registers',
                            style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 20.04,
                                      color: kBlackOpacity,
                                      fontWeight: FontWeight.w700
                                      )
                      ),
                    ),
                    Row(
                      children: [
                        LightGredientTableHeader(
                            text: 'Name', 
                            isDarkMode: false, 
                            width: 126.63,
                            isLeftborder: true,
                            isTopRightRadius: false,
                            isTopLeftRadius: true,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                            text: 'Status', 
                            isDarkMode:false, 
                            width: 73.56,
                            isLeftborder: false,
                            isTopRightRadius: false,
                            isTopLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                            text: 'Receipt Template', 
                            isDarkMode:false, 
                            width: 159.39,
                            isLeftborder: false,
                            isTopRightRadius: false,
                            isTopLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                            text: 'Invoice #', 
                            isDarkMode:false, 
                            width: 93.95,
                            isLeftborder: false,
                            isTopRightRadius: false,
                            isTopLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                            text: 'Print Receipt', 
                            isDarkMode:false, 
                            width: 125.42,
                            isLeftborder: false,
                            isTopRightRadius: false,
                            isTopLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                            text: 'Email Receipt', 
                            isDarkMode:false, 
                            width: 131.94,
                            isLeftborder: false,
                            isTopRightRadius: false,
                            isTopLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                            text: 'Print Note on Receipt', 
                            isDarkMode:false, 
                            width: 175,
                            isLeftborder: false,
                            isTopRightRadius: false,
                            isTopLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          LightGredientTableHeader(
                              text: '', 
                              isDarkMode:false, 
                              width: 67.38,
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
                            text: 'Main Register', 
                            isTextButton: true, 
                            width: 126.63,
                            isLeftborder: true,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: true,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                            text: 'Open', 
                            isTextButton:false, 
                            width: 73.56,
                            isLeftborder: false,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                            text: 'Standard Receipt', 
                            isTextButton:false, 
                            width: 159.39,
                            isLeftborder: false,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                            text: '1', 
                            isTextButton:false, 
                            width: 93.95,
                            isLeftborder: false,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                            text: 'Yes', 
                            isTextButton:false, 
                            width: 125.42,
                            isLeftborder: false,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                            text: 'Yes', 
                            isTextButton:false, 
                            width: 131.94,
                            isLeftborder: false,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                            text: 'Yes', 
                            isTextButton:false, 
                            width: 175,
                            isLeftborder: false,
                            isBottomRightRadius: false,
                            isBottomLeftRadius: false,
                            alignment: MainAxisAlignment.start
                          ),
                          GredientTableCell(
                            onPressed:(){},
                              text: 'Edit', 
                              isTextButton:true, 
                              width: 67.38,
                              isLeftborder: true,
                              isBottomRightRadius: true,
                              isBottomLeftRadius: false,
                              alignment: MainAxisAlignment.start
                          ),
                      ],
                    ),
                  SizedBox(height:5),
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