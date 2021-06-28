import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/cards/custom_cards/user_roles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

enum UsersTabBar
{
  users,role
}

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  
  UsersTabBar usersTabBar = UsersTabBar.users;
  String roles = 'All Roles';
  String  outlet = 'All Outlets';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked:SetupClicked.users ),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                isDarkMode: false, 
                text: 'Users'
                ),
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  children: [
                    Container(
                            width:60,
                            height: 48,
                            decoration:BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: usersTabBar == UsersTabBar.users ? 
                                        kSignInButtonColor : kInputBorderColor,
                                  width: usersTabBar == UsersTabBar.users ? 5.0 : 0.0,
                                  )
                              ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        child:Text(
                                          'Users',
                                          style: TextStyle(
                                                      fontFamily: 'Lato',
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w400,
                                                      color:  usersTabBar != UsersTabBar.users ? 
                                                              kAppBarColor : kSignInButtonColor,
                                                       ),
                                          ),
                                        onPressed: ()
                                        {
                                          setState(() {
                                            usersTabBar = UsersTabBar.users;
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
                                          color:  usersTabBar == UsersTabBar.role ? 
                                                              kSignInButtonColor : 
                                                              kInputBorderColor,
                                          width: usersTabBar == UsersTabBar.role ? 
                                                                      5.0 : 
                                                                      0.0,
                                          )
                                      ),
                                     
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          child:Text(
                                            'Roles',
                                            style: TextStyle(
                                                        fontFamily: 'Lato',
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w400,
                                                        color:  usersTabBar != UsersTabBar.users ?  
                                                                      kSignInButtonColor : 
                                                                      kAppBarColor,
                                                         ),
                                            ),
                                          onPressed: ()
                                          {
                                            setState(() {
                                             usersTabBar = UsersTabBar.role;
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
              usersTabBar == UsersTabBar.role ?
              MidButtonBar(
                text: 'Manage what each role can see and do',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: '',
                  greenOnTap: (){}
                  ):
              MidButtonBar(
                text: 'Manage users and their sales targets.',
                 addBlueButton: false, 
                 blueButtonText: '',
                  blueOnTap: (){},
                 greenButtonText: 'Add User',
                  greenOnTap: (){}
                  ),
                usersTabBar == UsersTabBar.role ?
                Roles()
              :
              Container(
                width: 1024,
                height: 118,
                color:kWhite,
                child:
                   Padding(
                      padding: const EdgeInsets.only(
                                                    left: 48,
                                                    right: 48,
                                                    top:24,
                                                    bottom:12
                                                    ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:4.0),
                                child: Text(
                                  'Name ',
                                  style: k15BlackDark,
                                  ),
                              ),
                                DashboardSearchBar(
                                  iconData: Icons.search, 
                                  iconText: 'Search by username or name',
                                  width: 232,
                                  padding: 0,
                                  darkMode: false
                                  )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0,right: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    'Role',
                                    style: k15BlackDark,
                                    ),
                                ),
                                  DropDownInput(
                                    isDarkMode: false,
                                    width: 214,
                                    height: 46,
                                    paddingAll: 12,
                                    onPressed: (String newValue) 
                                                    {
                                                      setState(() {
                                                      roles = newValue;
                                                      }
                                                    );
                                                  },
                                    dropdownValue: roles,
                                    dropdownList: [
                                                  'All Roles',
                                                  'Admin',
                                                  'Manager',
                                                  'Cashier'],
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:4.0),
                                child: Text(
                                  'Outlet',
                                  style: k15BlackDark,
                                  ),
                              ),
                                DropDownInput(
                                  isDarkMode: false,
                                  width: 214,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    outlet = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: outlet,
                                  dropdownList: [
                                            'All Outlets',
                                            'Main Outlet'
                                            ],
                                ),
                              ],
                            ),
                             Spacer(),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   crossAxisAlignment: CrossAxisAlignment.end,
                                   children: [
                                     SizedBox(height: 20,),
                                     CustomButton(
                                buttonText: 'Search',
                                onPress: (){},
                                buttonColor: kDashboardMidBarColor, 
                                topPadding: 20, 
                                leftPadding: 30
                                ),
                              ],
                            )
                          ]
                        ),
                      ],
                    ),
                   ), 
                ),
                if(usersTabBar == UsersTabBar.users)
                Padding(
                  padding: const EdgeInsets.only(
                                                left:48,
                                                right:48,
                                                top:24.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          UserHeader(
                            height: 70.5,
                            text: 'Name',
                            padding: 0, 
                            width: 208,
                            alignment: MainAxisAlignment.start
                            ),
                          UserHeader(
                            height: 70.5,
                            text: 'Role',
                            padding: 8, 
                            width: 86,
                            alignment: MainAxisAlignment.start
                            ),
                          UserHeader(
                            height: 70.5,
                            text: 'Outlet',
                            padding: 8, 
                            width: 186,
                            alignment: MainAxisAlignment.start
                            ),
                           UserHeader(
                            height: 70.5,
                            text: 'Daily Target',
                            padding: 8, 
                            width: 116,
                            alignment: MainAxisAlignment.end
                            ),
                          UserHeader(
                            height: 70.5,
                            text: 'Weekly Target',
                            padding: 8, 
                            width: 116,
                            alignment: MainAxisAlignment.end
                            ),
                          UserHeader(
                            height: 70.5,
                            text: 'Monthly\nTarget',
                            padding: 8, 
                            width: 116,
                            alignment: MainAxisAlignment.end
                            ),
                          UserHeader(
                            height: 70.5,
                            text: 'Last Active',
                            padding: 8, 
                            width: 100,
                            alignment: MainAxisAlignment.start
                            ), 
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: kTableBorderColor,
                      ),        
                    ],
                  ),
                ),
                if(usersTabBar == UsersTabBar.users)
                Padding(
                        padding: const EdgeInsets.only( left:48,top:20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              color: kProductButtonColor2,
                              //  decoration: BoxDecoration(
                              //   color: kProductButtonColor2,
                              //  // borderRadius: BorderRadius.all(Radius.circular(5))
                              //  ),
                               child: Center(
                                 child: Text(
                                   'RS',
                                   style: TextStyle(
                                     color: kWhite,
                                     fontSize: 18,
                                     fontWeight: FontWeight.w700
                                    ),
                                   ),
                               ),
                            ),
                            Container(
                              width: 150,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: (){},
                                      child: Text(
                                        'rikanthanricky@gm\nail.com (rikanthan\nsellathurai)',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: kSignInTextColor,
                                          fontSize: 15,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                     Text(
                                      'rikanthanricky@gmail.com',
                                      style: TextStyle(
                                        color: kSignInTextColor,
                                        fontSize: 15,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width:8),
                            Container(
                              width:86,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Account\nOwner,\nAdmin',
                                      style: k15BlackNormal,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width:186,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'All Outlets',
                                      style: k15BlackNormal,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            for(int i=0;i<3;i++)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color:kWhite,
                                width:100,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Rs',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Lato',
                                          color: kDashboardIconColor,
                                          ),
                                        ),
                                      Text(
                                        '0.00',
                                        style: k15BlackNormal,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width:106,
                                child: Text(
                                  '28 minutes  \nago',
                                  style: k15BlackNormal,
                                  ),
                              ),
                            ),
                            Icon(
                              Icons.check_sharp,
                              color: kAppBarColor,
                              size: 15,
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