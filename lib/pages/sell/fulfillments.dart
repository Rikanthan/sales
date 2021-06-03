import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/bars/tab_bar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';

class Fullfillments extends StatefulWidget {
 
  @override
  _FullfillmentsState createState() => _FullfillmentsState();
}

class _FullfillmentsState extends State<Fullfillments> {
  
   String status = "All";
   String outlet = "Main Outlet";
   String type = "All";
   String filter = 'Exclude';
   bool lessFilters = false;
   bool all = true;
   bool packOrder = false;
   bool customerPickup = false;
   bool delivery = false;

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.fulfillments,),
      body:SingleChildScrollView(
        child: Container(
          color:kDashboardColor,
          height: 718.0,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kDashboardColor,
                 text: 'Fulfillments',
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
                                            packOrder = false;
                                            customerPickup = false;
                                            delivery = false;
                                            status = 'All';
                                            type = 'All';
                                          });
                                        },
                              text: 'All         '
                              ),
                              Padding(
                                   padding: const EdgeInsets.only(left:35.0,right: 35.0),
                                   child: TabBarItem(
                                     darkMode: true,
                              width: 93, 
                              height: 48,
                              isClicked: packOrder,
                              onClicked: (){
                                          setState(() {
                                             all = false;
                                            packOrder = true;
                                            customerPickup = false;
                                            delivery = false;
                                            status = 'All';
                                            type = 'All';
                                          });
                                        },
                              text: 'Pack orders'
                                ),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.only(right:35.0),
                                   child: TabBarItem(
                                     darkMode: true,
                              width: 138, 
                              height: 48,
                              isClicked: customerPickup,
                              onClicked: (){
                                          setState(() {
                                             all = false;
                                            packOrder = false;
                                            customerPickup = true;
                                            delivery = false;
                                            status = 'Packed';
                                            type = 'Pickup';
                                          });
                                        },
                              text: 'Customer pick up'
                              ),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.only(left:24.0),
                                   child:TabBarItem(
                                     darkMode: true,
                              width: 80, 
                              height: 48,
                              isClicked: delivery,
                              onClicked: (){
                                          setState(() {
                                            all = false;
                                            packOrder = false;
                                            customerPickup = false;
                                            delivery = true;
                                            status = 'Packed';
                                            type = 'Delivery';
                                          });
                                        },
                              text: 'Delivery'
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
                        'View and manage fulfillments all in one place.',
                        style: TextStyle(
                          color: kHelpTextColor,
                          fontSize: 15,
                          fontFamily: 'Lato', 
                          fontWeight: FontWeight.w700
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Need help?',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
                                  color: kHelpTextColor
                                  )
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
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                width: 214,
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
                                            "Main Outlet"],
                              ),
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:24.0 , right: 24.0),
                            child: Column(
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
                                  width: 214,
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
                                              "All","New","In Progress","Packed"],
                                ),
                              ]
                            ),
                          ), 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children :[
                              Text(
                                'Type',
                                style:kMediumTextDarkStyle
                                ),
                              SizedBox(
                                height:5.0
                              ),
                               DropDownInput(
                                isDarkMode: true,
                                width: 214,
                                height: 46,
                              paddingAll: 4,
                                onPressed: (String newValue) 
                                                {
                                                  setState(() {
                                                  type = newValue;
                                                  }
                                                );
                                              },
                                dropdownValue: type,
                                dropdownList: [
                                            "All","Delivery","Pickup"],
                              ),
                            ]
                          ), 
                          Expanded(child: Text('')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             Text(''),
                              CustomButton(
                                buttonText: "Search",
                                onPress: (){}, 
                                buttonColor: kDashboardMidBarColor, 
                                topPadding: 20, 
                                leftPadding: 30
                                )
                            ],
                          )      
                        ],
                      ),
                    ]
                  ),
                )
              ),
              //SizedBox(height: 12.0,),
              Padding(
                padding: const EdgeInsets.only(left:48.0, right: 48.0, top: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'No results.',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        color: kHelpTextColor,
                        ),
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

