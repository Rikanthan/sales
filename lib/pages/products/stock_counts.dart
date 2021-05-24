import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/cards/show_products.dart';
import 'package:sales/widgets/drawer/customer_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class StockCount extends StatefulWidget {
  @override
  _StockCountState createState() => _StockCountState();
}

class _StockCountState extends State<StockCount> {
  bool _due = true;
  bool _upcoming = false;
  bool _completed = false;
  bool _cancelled = false;
  bool lessFilters = true;
  String showText = 'due';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: CustomerDrawer(),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(backgroundColor:kHomeBackgroundColor, text: 'Inventory Counts'),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 20),
                child: Row(
                  children: [
                    Container(
                                  width:57,
                                  height: 48,
                                  decoration:BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: _due ? kSignInButtonColor : kInputBorderColor,
                                        width:_due ?5.0 : 0.0,
                                        )
                                    ),
                                   
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        child:Text(
                                          'Due(0)',
                                          style: TextStyle(
                                                      fontFamily: 'Lato',
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w400,
                                                      color: !_due ? kAppBarColor : kSignInButtonColor,
                                                       ),
                                          ),
                                        onPressed: ()
                                        {
                                          setState(() {
                                            _due = true;
                                            _upcoming= false;
                                           _completed=false;
                                           _cancelled = false;
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
                                    width:105,
                                    height: 48,
                                    decoration:BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: _upcoming? kSignInButtonColor : kInputBorderColor,
                                          width:_upcoming ?5.0 : 0.0,
                                          )
                                      ),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          child:Text(
                                            'Upcoming(0)',
                                            style: TextStyle(
                                                        fontFamily: 'Lato',
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w400,
                                                        color: !_upcoming ? kAppBarColor : kSignInButtonColor,
                                                         ),
                                            ),
                                          onPressed: ()
                                          {
                                            setState(() {
                                              _due = false;
                                              _upcoming= true;
                                             _completed=false;
                                             _cancelled = false;
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
                                    width:110,
                                    height: 48,
                                    decoration:BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: _completed ? kSignInButtonColor : kInputBorderColor,
                                          width:_completed ?5.0 : 0.0,
                                          )
                                      ),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          child:Text(
                                            'Completed(0)',
                                            style: TextStyle(
                                                        fontFamily: 'Lato',
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w400,
                                                        color: !_completed ? kAppBarColor : kSignInButtonColor,
                                                         ),
                                            ),
                                          onPressed: ()
                                          {
                                            setState(() {
                                              _due = false;
                                              _upcoming= false;
                                             _completed=true;
                                             _cancelled = false;
                                             showText = 'completed';
                                            });
                                          },
                                          ),
                                      ],
                                    ),
                                ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                    width:80,
                                    height: 48,
                                    decoration:BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: _cancelled ? kSignInButtonColor : kInputBorderColor,
                                          width:_cancelled ?5.0 : 0.0,
                                          )
                                      ),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          child:Text(
                                            'Cancelled',
                                            style: TextStyle(
                                                        fontFamily: 'Lato',
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w400,
                                                        color: !_cancelled ? kAppBarColor : kSignInButtonColor,
                                                         ),
                                            ),
                                          onPressed: ()
                                          {
                                            setState(() {
                                              _cancelled = true;
                                              _upcoming= false;
                                             _completed=false;
                                             _due = false;
                                             showText = 'cancelled';
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
                text: 'Create,schedule and complete counts to keep track of your inventory',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: 'Add Inventory Count',
                  greenOnTap: (){}
                  ),
              Padding(
                padding: const EdgeInsets.only(left:24.0,right: 24.0,top:24.0,bottom: 24.0),
                child:
                 Container(
                   color: Colors.white,
                   child:Padding(
                     padding: const EdgeInsets.all(36.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Image.asset(
                           'assets/images/scanner-v1.png',
                           width: 168,
                           height: 96,
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: Text(
                                            'Get the job done faster with our free iOS app,Scanner',
                                              style: TextStyle(
                                              fontSize:24,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                              fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                    Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: Text(
                                            'Perform on-the-go inventory counts using an iPhone, iPad or iPod touch - no additional hardware needed! \nScanner and Vend work seamlessly together to sync stock levels and product details, saving time and \nreducing manual mistakes.',
                                              style: TextStyle(
                                              fontSize:15,
                                              fontFamily: 'Lato',
                                              color: kSignInTextColor,
                                              height: 1.5
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              child:Text(
                                                'Find Out More',
                                              style: TextStyle(
                                              fontSize:15,
                                              fontFamily: 'Lato',
                                              color: kDropDownColor,
                                              ),
                                            ),
                                              onPressed: (){},
                                              ),
                                              SizedBox(width: 500,),
                                              TextButton(
                                              child:Text(
                                                'Got it thanks!',
                                              style: TextStyle(
                                              fontSize:15,
                                              fontFamily: 'Lato',
                                              color: kAppBarColor,
                                              decoration: TextDecoration.underline
                                              ),
                                            ),
                                              onPressed: (){},

                                              )
                                          ],
                                        )
                             ],
                           )
                       ],
                      ),
                   )
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Column(
                    children: [
                      Image.asset(
                             'assets/images/stocktake-emptylist-v1.png',
                             width: 168,
                             height: 96,
                             ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'You have no $showText inventory counts',
                          style:TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 15,
                              color: kSignInTextColor
                            )
                        ),
                      ),
                      GreenButton(
                        buttonText: 'Add Inventory Count',
                        onPress: (){},
                        topPadding: 0
                        ),
                         Padding(
                        padding: const EdgeInsets.only(top: 80.0,bottom: 40),
                        child: Text(
                          "If you're experiencing problems with your product data.resync data to load it again.",
                          style:TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color: kFooterColor
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