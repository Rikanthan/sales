import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/bars/tab_bar.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';

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
      drawer: HomeDrawer(),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(backgroundColor:kHomeBackgroundColor,isDarkMode: false, text: 'Inventory Counts'),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 20),
                child: Row(
                  children: [
                            TabBarItem(
                              darkMode: false,
                              width: 57, 
                              height: 48,
                              isClicked: _due,
                              onClicked: (){
                                          setState(() {
                                            _due = true;
                                            _upcoming= false;
                                           _completed=false;
                                           _cancelled = false;
                                           showText = 'due';
                                          });
                                        },
                              text: 'Due(0)'
                              ),
                              Padding(
                                   padding: const EdgeInsets.only(left:35.0,right: 35.0),
                                   child: TabBarItem(
                                     darkMode: false,
                              width: 105, 
                              height: 48,
                              isClicked: _upcoming,
                              onClicked: (){
                                          setState(() {
                                            _due = false;
                                            _upcoming= true;
                                           _completed=false;
                                           _cancelled = false;
                                           showText = 'upcoming';
                                          });
                                        },
                              text: 'Upcoming(0)'
                                ),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.only(right:35.0),
                                   child: TabBarItem(
                                     darkMode: false,
                              width: 110, 
                              height: 48,
                              isClicked: _due,
                              onClicked: (){
                                          setState(() {
                                            _due = false;
                                            _upcoming= false;
                                           _completed=true;
                                           _cancelled = false;
                                           showText = 'completed';
                                          });
                                        },
                              text: 'Completed'
                              ),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child:TabBarItem(
                                     darkMode: false,
                              width: 80, 
                              height: 48,
                              isClicked: _cancelled,
                              onClicked: (){
                                          setState(() {
                                            _due = false;
                                            _upcoming= false;
                                           _completed=false;
                                           _cancelled = true;
                                           showText = 'cancelled';
                                          });
                                        },
                              text: 'Cancelled'
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