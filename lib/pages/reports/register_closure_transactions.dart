import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/reports/register_closure_full_details.dart';
import 'package:sales/pages/reports/register_closures.dart';
import 'package:sales/widgets/TextInput/gredient_text_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/outlet_gredient_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class RegisterClosureSummary extends StatefulWidget {
 
  @override
  _RegisterClosureSummaryState createState() => _RegisterClosureSummaryState();
}

class _RegisterClosureSummaryState extends State<RegisterClosureSummary> {

  
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
                              'Register Closures',
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
                            'Register closure transactions',
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
                              buttonText: 'View full details',
                              onPress: (){     
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (_)=> RegisterClosureFullDetails()));                            
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width:470,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for(int i=0; i<3 ; i++)
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 130,
                                    height: 16,
                                    child: Text(
                                    i==0 ? 'Register:' : i==1 ? 'Sequence #:' :'Outlet:' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: Color(0xFF333333),
                                          fontWeight: FontWeight.w700
                                          )
                                    ),
                                  ),
                                  Text(
                                     i==0 ? 'Main Register' : i==1 ? '2' :'Main Outlet' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: Color(0xFF333333),
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
                                          color: Color(0xFF333333),
                                          fontWeight: FontWeight.w700
                                          )
                                    ),
                                  ),
                                  Text(
                                     i==0 ? '14 Jun 21 10:16 am':'Still open' ,
                                          style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14,
                                          color: Color(0xFF333333),
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
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    Text(
                    'Sales',
                          style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 20.04,
                                    color: Color(0xFF333333),
                                    fontWeight: FontWeight.w400
                                    )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:5.0,bottom: 1),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    Divider(
                      height: 1,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,top: 4.0),
                          child: Text(
                            'New sales',style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w700
                                      )
                                    ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0,top: 4.0),
                          child: Text(
                            'Rs0.00',style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w700
                                      )
                                    ),
                        )
                      ],
                    ),
                    Divider(
                      height: 1,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:200.0,top: 4.0,bottom: 4),
                          child: Text(
                            'Tax',style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      )
                                    ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0,top: 4.0,bottom: 4),
                          child: Text(
                            'Rs0.00',style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      )
                                    ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 1,
                    ),
                    Divider(
                      height: 1,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,top: 4.0),
                          child: Text(
                            'Discounts',style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w700
                                      )
                                    ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0,top: 4.0),
                          child: Text(
                            'Rs0.00',style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w700
                                      )
                                    ),
                        )
                      ],
                    ),
                     Divider(
                      height: 1,
                    ),
                    Divider(
                      height: 1,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,top: 4.0),
                          child: Text(
                            'Payments',style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w700
                                      )
                                    ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0,top: 4.0),
                          child: Text(
                            'Rs0.00',style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w700
                                      )
                                    ),
                        )
                      ],
                    ),
                     Divider(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:30.0,bottom: 5),
                      child: Text(
                      'Payments',
                            style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 20.04,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w400
                                      )
                      ),
                    ),
                    Row(
                      children: [
                        GredientTableHeader(
                          text: 'Payment type', 
                          isDarkMode: false, 
                          width: 295,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: true,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Expected', 
                          isDarkMode:false, 
                          width: 217.8,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.end
                          ),
                          GredientTableHeader(
                          text: 'Counted', 
                          isDarkMode:false, 
                          width: 203.09,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.end
                          ),
                          GredientTableHeader(
                          text: 'Difference', 
                          isDarkMode:false, 
                          width: 234.5,
                          isLeftborder: true,
                          isTopRightRadius: true,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.end
                          ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:30.0,bottom: 5),
                      child: Text(
                      'Cash Movements',
                            style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 20.04,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w400
                                      )
                      ),
                    ),
                    Row(
                      children: [
                        GredientTableHeader(
                          text: 'Type', 
                          isDarkMode: false, 
                          width: 164.97,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: true,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Date and Time', 
                          isDarkMode:false, 
                          width: 241.66,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'User', 
                          isDarkMode:false, 
                          width: 348.84,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Note', 
                          isDarkMode:false, 
                          width: 80.05,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                           GredientTableHeader(
                          text: 'Amount', 
                          isDarkMode:false, 
                          width: 114.88,
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
                          width: 164.97,
                          height: 26,
                          child:Padding(
                            padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 9.0,right: 9.0),
                            child: Row(
                              children: [
                                Text(
                                  'Opening float',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
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
                              bottom: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid)
                              ),
                              color: Color(0xFFF6F6F6)
                          ),
                          width: 241.66,
                          height: 26,
                          child:Padding(
                            padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 9.0,right: 9.0),
                            child: Row(
                              children: [
                                Text(
                                  '14 Jum 21, 12:21 PM',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
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
                              bottom: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid)
                              ),
                              color: Color(0xFFF6F6F6)
                          ),
                          width: 348.84,
                          height: 26,
                          child:Padding(
                            padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 9.0,right: 9.0),
                            child: Row(
                              children: [
                                Text(
                                  'sellathurairikanthan@gmail.com',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
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
                            border: Border.all(
                             color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid
                              ),
                              color: Color(0xFFF6F6F6)
                          ),
                          width: 80.05,
                          height: 26,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color:Color(0xFFd8d8d8), width: 1, style: BorderStyle.solid)
                              ),
                              color: Color(0xFFF6F6F6)
                          ),
                          width: 114.88,
                          height: 26,
                          child:Padding(
                            padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 9.0,right: 9.0),
                            child: Row(
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: Color(0xFF333333),
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                 Padding(
                      padding: const EdgeInsets.only(top:30.0,bottom: 20),
                      child: Text(
                      'Notes',
                            style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 20.04,
                                      color: Color(0xFF333333),
                                      fontWeight: FontWeight.w400
                                      )
                      ),
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
