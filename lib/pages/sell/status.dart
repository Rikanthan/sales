import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/popup_cards/reset_data.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';

class SellStatus extends StatefulWidget {
 
  @override
  _SellStatusState createState() => _SellStatusState();
}

class _SellStatusState extends State<SellStatus> {

 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.status,),
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
                     style: k18White
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:4.0,bottom: 20.0),
                       child: Text(
                       "We keep a copy of some of your store data in your web browser so you can keep selling if you lose your Internet connection. Sometimes, this\ngets out of sync. Resetting it can help if you're having trouble with Vend.",
                       style: k15WhiteHeightDark
                       ),
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         CustomButton(
                            buttonText: 'Reset Data',
                            onPress: (){
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) => ResetDataPopup(),
                                );
                            }, 
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



