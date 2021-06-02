import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';

class Promotions extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  bool _current = true;
  bool _past = false;
  bool _all = false;
  String showText = 'due';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: HomeDrawer(),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(backgroundColor:kHomeBackgroundColor,isDarkMode: false, text: 'Promotions'),
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  children: [
                    Container(
                                  width:170,
                                  height: 48,
                                  decoration:BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: _current ? kSignInButtonColor : kInputBorderColor,
                                        width:_current ?5.0 : 0.0,
                                        )
                                    ),
                                   
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        child:Text(
                                          'Current & Upcoming',
                                          style: TextStyle(
                                                      fontFamily: 'Lato',
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w400,
                                                      color: !_current ? kAppBarColor : kSignInButtonColor,
                                                       ),
                                          ),
                                        onPressed: ()
                                        {
                                          setState(() {
                                            _current = true;
                                            _past= false;
                                           _all=false;
                                           showText = 'due';
                                          });
                                        },
                                        ),
                                    ],
                                  ),
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(left:35.0,right: 35.0),
                                   child: Container(
                                    width:56,
                                    height: 48,
                                    decoration:BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: _past? kSignInButtonColor : kInputBorderColor,
                                          width:_past ?5.0 : 0.0,
                                          )
                                      ),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          child:Text(
                                            'Past',
                                            style: TextStyle(
                                                        fontFamily: 'Lato',
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w400,
                                                        color: !_past ? kAppBarColor : kSignInButtonColor,
                                                         ),
                                            ),
                                          onPressed: ()
                                          {
                                            setState(() {
                                              _current = false;
                                              _past= true;
                                             _all=false;
                                             showText = 'upcoming';
                                            });
                                          },
                                          ),
                                      ],
                                    ),
                                ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(right:35.0),
                                   child: Container(
                                    width:60,
                                    height: 48,
                                    decoration:BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: _all ? kSignInButtonColor : kInputBorderColor,
                                          width:_all ?5.0 : 0.0,
                                          )
                                      ),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          child:Text(
                                            'All',
                                            style: TextStyle(
                                                        fontFamily: 'Lato',
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w400,
                                                        color: !_all ? kAppBarColor : kSignInButtonColor,
                                                         ),
                                            ),
                                          onPressed: ()
                                          {
                                            setState(() {
                                              _current = false;
                                              _past= false;
                                             _all=true;
                                             showText = 'completed';
                                            });
                                          },
                                          ),
                                      ],
                                    ),
                                ),
                                 ),
                    
                  ]
                ),
              ),
              MidButtonBar(
                text: 'Create promotions and manage current and upcoming ones.',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: 'Add Promotion',
                  greenOnTap: (){}
                  ),
              Padding(
                padding: const EdgeInsets.only(top:48.0,left: 72.0,bottom: 24.0,right: 72.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width:185,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Start Date',
                            style: kMediumTextStyle,
                            ),
                        ],
                      )
                    ),
                     Container(
                      width:185,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'End Date',
                            style: kMediumTextStyle,
                            ),
                        ],
                      )
                    ),
                     Container(
                      width:171,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Name',
                            style: kMediumTextStyle,
                            ),
                        ],
                      )
                    ),
                     Container(
                      width:313,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Available On',
                            style: kMediumTextStyle,
                            ),
                        ],
                      )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0),
                child: Divider(
                  thickness: 4,
                  color: kInputBorderColor,
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top:12.0,bottom: 72.0),
                  child: Column(
                    children: [
                      Image.asset(
                             'assets/images/multiple_promotions.png',
                             width: 184,
                             height: 164,
                             ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: Text(
                          'Keep and eye here for promotions that are currently',
                          style:TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 15,
                              color: kDashboardMidBarColor
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'happening, or ones that will happen soon.',
                          style:TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 15,
                              color: kDashboardMidBarColor
                            )
                        ),
                      ),
                         
                    ]
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