import 'package:flutter/material.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_calendar.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/home_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class Customer extends StatefulWidget {
  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  DateTime selectedDateFrom = DateTime.now();
  DateTime selectedDateTo = DateTime.now();
  String dropDownValue = 'All';
  String dropDownCountryValue= 'All';
  bool selectedDate = false;
  String dateRange ='';
  bool lessFilters = true;
  Future<void>  _selectDateFrom (BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDateFrom,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
        helpText: 'Select Date From'
        );
    if (picked != null && picked != selectedDateFrom)
      setState(() {
        selectedDateFrom = picked;
      });
  }
  Future<void>  _selectDateTo (BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDateTo,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
        helpText: 'Select Date To',
        fieldLabelText: 'Select Date To'
        );
    if (picked != null && picked != selectedDateTo)
      setState(() {
        selectedDateTo = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: HomeDrawer(),
      body:Container(
        color:kInputBorderColor,
          child:Column(
            children: [
              DashboardMidBar(),
              Container(
                color:Colors.white,
                child:Padding(
                  padding:  EdgeInsets.only(top:24,bottom:24,left:48,right:48),
                  child: Row(
                    children: [
                      Text(
                        'Customers',
                        style:TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 32,
                          color: kSignInTextColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                    ],
                  ),
                )
              ),
              Container(
                color:kInputBorderColor,
                child: Padding(
                  padding: EdgeInsets.only(top:16,bottom:16,left:48.0,right: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                        'Manage your customers and their balances, or segment them by demographics and spending \nhabits.',
                        style:TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            color: kSignInTextColor
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: 'Import Customers',
                          onPress: (){},
                          buttonColor: kDashboardMidBarColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CustomButton(
                          buttonText: 'Add Customer',
                          onPress: (){},
                          buttonColor: kSignInButtonColor, 
                          topPadding: 24, 
                          leftPadding: 30,
                          ),
                      )
                    ]
                  ),
                ),
              ),
              Container(
                color:Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top:24.0,bottom:24,left: 48,right: 48),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children : [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom:4.0),
                                      child: Text(
                                  'Search for Customers',
                                  style:TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      color: kSignInTextColor,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                    ),
                                DashboardSearchBar(
                                  iconData: Icons.search, 
                                  iconText: 'Enter name, customer code, or contact details',
                                  width: 610,
                                  padding: 0,
                                  darkMode: false,
                                  ),
                                  if(lessFilters == false)
                                  Padding(
                                    padding: const EdgeInsets.only(top:12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:[
                                             Text(
                                              'City',
                                               style:TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: kSignInTextColor,
                                              fontWeight: FontWeight.w700
                                                ),
                                             ),
                                             TextInput(
                                               validate: (val) => val.length == 0 ? 'Enter the city' : null,
                                              onChange: (val) {
                                                        },
                                                 paddingTop: 4, 
                                                 hideText: false, 
                                                 height: 46,
                                                 width:293.33
                                                 )
                                          ]
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left:24.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                               Padding(
                                                 padding: const EdgeInsets.only(bottom:4.0),
                                                 child: Text(
                                                  'Country',
                                                   style:TextStyle(
                                                  fontFamily: 'Lato',
                                                  fontSize: 15,
                                                  color: kSignInTextColor,
                                                  fontWeight: FontWeight.w700
                                                    ),
                                                 ),
                                               ),
                                                DropDownInput(
                                                  dropdownList: ['All','America','Australia'],
                                                  dropdownValue: dropDownCountryValue,
                                                  onPressed: (String newValue) {
                                                      setState(() {
                                                      dropDownCountryValue = newValue;
                                                      }
                                                    );
                                                  },
                                                )   
                                            ]
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                            ]
                          ), 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:4.0),
                                child: Text(
                                    'Customer Group',
                                    style:TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      color: kSignInTextColor,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                              ), 
                                DropDownInput(
                                  dropdownList: ['All','All Customers'],
                                  dropdownValue: dropDownValue,
                                  onPressed: (String newValue) {
                                      setState(() {
                                       dropDownValue = newValue;
                                      }
                                    );
                                  },
                                ),
                                if(lessFilters == false)
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                      Padding(
                                        padding: const EdgeInsets.only(top:12.0,bottom:4),
                                        child: Text(
                                        'Date Created',
                                          style:TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        color: kSignInTextColor,
                                        fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ), 
                                      InputCalender(
                                        iconData: Icons.calendar_today,
                                        iconText: selectedDate? dateRange:'Choose date range...', 
                                        width: 293.3,
                                        onPress: (){
                                          _selectDateFrom(context);
                                          _selectDateTo(context);
                                          setState(() {
                                             selectedDate = true;
                                             selectedDate?dateRange = selectedDateFrom.toString().split(' ')[0] + ' - ' +
                                                          selectedDateTo.toString().split(' ')[0]
                                                          : dateRange='';
                                            }
                                          );
                                        },
                                        darkMode: false
                                        )           
                                  ]
                                ),
                                
                            ],
                          ),                 
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          TextButton(
                            onPressed: (){
                              setState(() {
                                lessFilters? lessFilters=false: lessFilters=true;
                              });
                            },
                             child: Text(
                               lessFilters?'More filters':'Less filters',
                                style: TextStyle(
                                              fontSize:15,
                                              fontFamily: 'Lato',
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w400
                                            ),
                               )
                             ),
                              Padding(
                            padding: const EdgeInsets.only(top:12.0,left:12.0),
                            child: CustomButton(
                              buttonText: 'Search',
                              onPress: (){},
                              buttonColor: kDashboardMidBarColor, 
                              topPadding: 24, 
                              leftPadding: 30,
                              ),
                          ),                
                        ]
                      )    
                    ],
                  ),
                ),
              ),
              Container(
                color:kInputBorderColor,
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:48.0),
                        child: Text(
                          'Add customers so you know who is buying from you, how often,',
                          style:TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 15,
                              height: 1.5,
                              color: kSignInTextColor
                            )
                        ),
                      ),
                    ),
                    Text(
                      'and how to keep in touch with them',
                      style:TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 15,
                              height: 1.5,
                              color: kSignInTextColor
                            )
                     ),       
                  ],
                ),
              ),
            ],
          )
      )
    );
  }
}