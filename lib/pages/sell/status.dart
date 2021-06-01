import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/customer_drawer.dart';

class Status extends StatefulWidget {
 
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  
  @override
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
          color:kDashboardColor,
          height: 718.0,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kDashboardColor,
                 text: 'Status',
                 isDarkMode: true,
                 ),
             Padding(
               padding: const EdgeInsets.only(top:24,bottom:24,left:48.0,right: 48.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children:[
                   Text(
                     'Reset local data',
                     style: TextStyle(
                       color:kHelpTextColor,
                       fontFamily: 'Lato',
                       fontSize: 18,
                       fontWeight: FontWeight.w700
                       )
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:4.0,bottom: 20.0),
                       child: Text(
                       "We keep a copy of some of your store data in your web browser so you can keep selling if you lose your Internet connection. Sometimes, this\ngets out of sync. Resetting it can help if you're having trouble with Vend.",
                       style: TextStyle(
                         color:kHelpTextColor,
                         fontFamily: 'Lato',
                         fontSize: 15,
                         height: 1.5,
                         fontWeight: FontWeight.w700
                         )
                       ),
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         CustomButton(
                            buttonText: 'Reset Data',
                            onPress: (){}, 
                            buttonColor: Color(0xFFE6643C), 
                            topPadding: 20, 
                            leftPadding: 24
                            )
                       ],
                     )
                 ]
               ),
             ),
            ],
          )
        ),
      )
    );
  }
}



