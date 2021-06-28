import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/reports/register_closure_transactions.dart';
import 'package:sales/pages/reports/retail_dashboard.dart';
import 'package:sales/widgets/TextInput/gredient_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/outlet_gredient_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class RegisterClosureFullDetails extends StatefulWidget {
 
  @override
  _RegisterClosureFullDetailsState createState() => _RegisterClosureFullDetailsState();
}

class _RegisterClosureFullDetailsState extends State<RegisterClosureFullDetails> {

  
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
                            onTap:  (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (_)=> 
                                             RetailDashboard()
                                             )
                                            );
                              },
                            child: Text(
                              'Dashboard',
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
                                  context, MaterialPageRoute(
                                                      builder: (_)  => 
                                                      RegisterClosureSummary()
                                                      )
                                                  );
                              }, 
                            child: Text(
                              'Register Closures',
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
                        'Register Closure Summary',
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
                              buttonText: 'Back to Summary',
                              onPress: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                                builder: (_)  => 
                                                      RegisterClosureSummary()
                                                      )
                                                    );
                              }, 
                              topPadding: 3,
                              leftPadding: 10,
                              width: 126.78,
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
                    SizedBox( height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width:470,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for(int i=0; i<4 ; i++)
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 130,
                                    height: 16,
                                    child: Text(
                                    i==0 ? 'Register' :
                                     i==1 ? 'Sequence #' : 
                                     i==2 ? 'Opened' :
                                     'Closed' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: kBlackOpacity,
                                          fontWeight: FontWeight.w700
                                          )
                                    ),
                                  ),
                                  Text(
                                     i==0 ? 'Main Register' :
                                      i==1 ? '2'  : 
                                      i==2 ? '14 Jun 21 10:16 am' : 
                                      '21 Jun 21 11:03 am' ,
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
                          width:470,
                          height: 48,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for(int i=0; i<2 ; i++)
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 130,
                                    height: 16,
                                    child: Text(
                                    i==0 ? 'Opened:' :'Closed:' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: kBlackOpacity,
                                          fontWeight: FontWeight.w700
                                          )
                                    ),
                                  ),
                                  Text(
                                     i==0 ? '14 Jun 21 10:16 am':'Still open' ,
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
                    Padding(
                      padding: const EdgeInsets.only(bottom:20.0),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    Row(
                      children: [
                        GredientTableHeader(
                          text: 'Date', 
                          isDarkMode: false, 
                          width: 101.52,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: true,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Receipt', 
                          isDarkMode:false, 
                          width: 76.14,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'User', 
                          isDarkMode:false, 
                          width: 76.14,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Customer', 
                          isDarkMode:false, 
                          width: 121.83,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                           GredientTableHeader(
                          text: 'Notes', 
                          isDarkMode:false, 
                          width: 131.98,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Products', 
                          isDarkMode:false, 
                          width: 162.44,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Total', 
                          isDarkMode:false, 
                          width: 76.14,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Payments', 
                          isDarkMode:false, 
                          width: 131.98,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                           GredientTableHeader(
                          text: 'Paid', 
                          isDarkMode:false, 
                          width: 76.19,
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
                              color : kCustomWhite6, 
                              width: 1, 
                              style: BorderStyle.solid
                              ),
                              color: Color(0xFFffF7d6)
                          ),
                          width: 101.52,
                          height:30,
                          child:Padding(
                            padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 9.0,right: 9.0),
                            child: Row(
                              children: [
                                Text(
                                  'Totals',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: kBlackOpacity,
                                    fontWeight: FontWeight.w700
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                             color : kCustomWhite6, width: 1, style: BorderStyle.solid
                              ),
                              color: Color(0xFFffF7d6)
                          ),
                          width: 568.53,
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color : kCustomWhite6, 
                                width: 1, 
                                style: BorderStyle.solid
                                )
                              ),
                              color: Color(0xFFffF7d6)
                          ),
                          width: 76.54,
                          height: 30,
                          child:Padding(
                            padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 9.0,right: 9.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '0.00',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: kBlackOpacity,
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),         
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color : kCustomWhite6, width: 1, style: BorderStyle.solid)
                              ),
                              color: Color(0xFFffF7d6)
                          ),
                          width: 131.98,
                          height: 30,
                          child:Padding(
                            padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 9.0,right: 9.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: kBlackOpacity,
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color : kCustomWhite6, width: 1, style: BorderStyle.solid),
                              left: BorderSide(color : kCustomWhite6, width: 1, style: BorderStyle.solid),
                              right: BorderSide(color : kCustomWhite6, width: 1, style: BorderStyle.solid)
                              ),
                              color: Color(0xFFffF7d6)
                          ),
                          width: 76.19,
                          height: 30,
                          child:Padding(
                            padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 9.0,right: 9.0),
                            child: Row(
                              children: [
                                Text(
                                  '0.00',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: kBlackOpacity,
                                    fontWeight: FontWeight.w700
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  SizedBox(height:500),
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
