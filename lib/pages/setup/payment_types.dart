import 'package:flutter/material.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class PaymentTypes extends StatefulWidget {
  @override
  _PaymentTypesState createState() => _PaymentTypesState();
}

class _PaymentTypesState extends State<PaymentTypes> {
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked: SetupClicked.payment),
      body:Container(
        color:kInputBorderColor,
          child:Column(
            children: [
              DashboardMidBar(),
             CustomHeader(
               backgroundColor:kHomeBackgroundColor,
               text: 'Payment Types',
               isDarkMode: false,
               ),
               Container(
                 height: 8,
                 color: kInputBorderColor,
               ),
             MidButtonBar(
               text: 'Create and manage the payments you accept in your stores.',
                addBlueButton: false,
                 blueButtonText: '', 
                 blueOnTap: (){},
                greenButtonText: 'Add PaymentTypes',
                 greenOnTap: (){}
                 ),
                 Container(
                 height: 8,
                 color: kInputBorderColor,
               ),
              Container(
                height: 460,
                color:kHomeBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.only(top:24.0,bottom:24,left: 48,right: 48),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                        child: Text('Payment Types',style: k15BlackDark,),
                      ),
                      Divider(
                        thickness: 1.5,
                        color:kInputBorderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:16,bottom: 16, right: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                                    'assets/images/cash-v3.png',
                                          width: 50,
                                          height: 50,
                                          ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: (){},
                                child: Text(
                                  'Cash',
                                   style:TextStyle(
                                     color: kAppBarColor,
                                     decoration: TextDecoration.underline,
                                     fontFamily: 'Lato',
                                     fontSize: 15,
                                     fontWeight: FontWeight.w400
                                    )
                                  ),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(
                                Icons.edit_sharp,
                                size: 15,
                                color: kFilterTextColor,
                                ), 
                              onPressed: (){}
                              )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: kInputBorderColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      )
    );
  }
}