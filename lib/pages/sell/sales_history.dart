import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/bars/tab_bar.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class SalesHistory extends StatefulWidget {
 
  @override
  _SalesHistoryState createState() => _SalesHistoryState();
}

class _SalesHistoryState extends State<SalesHistory> {
  
   String status = "All Sales";
   String filter = 'Exclude';
   String outlet = 'All';
   String user = 'All';
   bool all = true;
   bool processReturn = false;
   bool continueSale = false;
   bool lessFilters = false;
  
  @override
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.salesHistory,),
      body:SingleChildScrollView(
        child: Container(
          color:kDashboardColor,
          height: 718.0,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kDashboardColor,
                 text: 'Sales History',
                 isDarkMode: true,
                 ),
                 Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                            TabBarItem(
                              darkMode: true,
                              width: 56.5, 
                              height: 48,
                              isClicked: all,
                              onClicked: (){
                                          setState(() {
                                            all = true;
                                            processReturn = false;
                                            continueSale = false;
                                          });
                                        },
                              text: 'All         '
                              ),
                              Padding(
                                   padding: const EdgeInsets.only(left:14.0,right: 24.0),
                                   child: TabBarItem(
                                     darkMode: true,
                                        width: 117, 
                                        height: 48,
                                        isClicked: processReturn,
                                        onClicked: (){
                                          setState(() {
                                             all = false;
                                            processReturn = true;
                                            continueSale = false;
                                          });
                                        },
                                       text: 'Process return'
                                        ),
                                  ),
                                 Padding(
                                   padding: const EdgeInsets.only(right:35.0),
                                   child: TabBarItem(
                                     darkMode: true,
                              width: 108.58, 
                              height: 48,
                              isClicked: continueSale,
                              onClicked: (){
                                          setState(() {
                                             all = false;
                                            processReturn = false;
                                            continueSale = true;
                                          });
                                        },
                              text: 'Continue sale'
                              ),
                            ),
                  ]
                ),
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
                        'Find all sales for a customer.',
                        style: kMediumTextDarkStyle
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Need help?',
                                style: k15WhiteUnderline
                                ),
                              Icon(
                                Icons.exit_to_app,
                                size: 15,
                                color: kHelpTextColor,
                                )
                            ],
                          ),
                        )
                    ],
                  ),
               )
              ),
             Container(
                color: kDashboardSearchBarFillColor,
                child:Padding(
                  padding: const EdgeInsets.only(top:24,bottom:24,left:48.0,right: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children :[
                              Text(
                                'Status',
                                style:kMediumTextDarkStyle
                                ),
                              SizedBox(
                                height:5.0
                              ),
                               DropDownInput(
                                isDarkMode: true,
                                width: 293.33,
                                height: 46,
                              paddingAll: 4,
                                onPressed: (String newValue) 
                                                {
                                                  setState(() {
                                                  status = newValue;
                                                  }
                                                );
                                              },
                                dropdownValue: status,
                                dropdownList: [
                                            "All Sales","Layby","On Account","Parked","Delivery, unfulfilled","Pickup, unfulfilled","Completed","Layby, completed","On Account, completed","Delivery, completed","Pickup, completed","Voided"],
                              ),
                            ]
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Customer',
                                style: kMediumTextDarkStyle,
                              ),
                              SizedBox(
                                height:5,
                              ),
                             DashboardSearchBar(
                                iconData: Icons.person,
                                iconText: 'Search for customers',
                                width: 293.33,
                                padding: 0, 
                                darkMode: true
                                )
                            ],
                          ),         
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Receipt or Note',
                                style: kMediumTextDarkStyle,
                              ),
                              TextInput(
                                        darkMode: true,
                                        validate: (val) => val.length == 0 ? 'Enter the note' : null,
                                      onChange: (val) {
                                                },
                                          paddingTop: 5, 
                                          hideText: false, 
                                          height: 46,
                                          width:293.33,
                                          hintText: 'Search receipt number or note',
                              ),
                            ],
                          )                
                        ],
                      ),
                      if(!lessFilters)
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children :[
                                Text(
                                  'Outlet',
                                  style:kMediumTextDarkStyle
                                  ),
                                SizedBox(
                                  height:5.0
                                ),
                                 DropDownInput(
                                  isDarkMode: true,
                                  width: 293.33,
                                  height: 46,
                                paddingAll: 4,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    outlet = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: outlet,
                                  dropdownList: [
                                              "All","Main outlet"],
                                ),
                              ]
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'User',
                                  style: kMediumTextDarkStyle,
                                ),
                                SizedBox(
                                  height:5,
                                ),
                                DropDownInput(
                                  isDarkMode: true,
                                  width: 293.33,
                                  height: 46,
                                paddingAll: 4,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    user = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: user,
                                  dropdownList: [
                                              "All","Ricky"],
                                ),
                              ],
                            ),         
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Date',
                                  style: kMediumTextDarkStyle,
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width:293.33,
                                  child: TextButton(
                                        onPressed: (){},
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(2.0),
                                              side: BorderSide(
                                                width: 2,
                                                color: kDashboardMidBarColor
                                                )
                                              )
                                            ),
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.only(top:12.0,bottom: 12.0,left:12.0,right: 12.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_today_sharp,
                                                size:15,
                                                color: kDashboardMidBarColor,
                                              ),
                                              Text(
                                                 "  choose date range...",
                                                  style: k15Blue2
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                ),
                              ],
                            )                
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children : [                          
                              Container(
                                height: 42,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children : [
                                    TextButton(
                                          onPressed: (){
                                            setState(() {
                                              if(lessFilters)
                                              {
                                                lessFilters = false;
                                              }
                                              else if(!lessFilters)
                                              {
                                                lessFilters = true;
                                              }
                                            });
                                          },
                                          child: Text(
                                            !lessFilters ? 'Less Filters' : 'More Filters',
                                            style: k15Blue
                                            ),
                                        ),
                                        SizedBox(width:12),
                                        GreenButton(
                                          buttonText: 'Search',
                                          onPress: (){}, 
                                          topPadding: 0
                                          )
                                  ]
                                ),
                              )
                          ]
                        ),
                      )
                    ]
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0, right: 48.0, top: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'No results.',
                      style: kMediumTextDarkNormalStyle
                      ),
                    SizedBox(
                      height: 12,
                    ),
                    Divider(
                      thickness: 1,
                      color: kInputBorderColor,
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



