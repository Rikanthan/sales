import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/dark_button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/cards/popup_cards/add_cash.dart';
import 'package:sales/widgets/cards/popup_cards/calender_range.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';

class CashManagement extends StatefulWidget {
 
  @override
  _CashManagementState createState() => _CashManagementState();
}

class _CashManagementState extends State<CashManagement> {

 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.cashManagement,),
      body:SingleChildScrollView(
        child: Container(
          height: 720,
          color:kDashboardColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kDashboardColor,
                 text: 'Cash Management',
                 isDarkMode: true,
                 ),
                 //HelpTextBar(height: 77, isDarkMode: true, text: 'Set opening cash drawer amount.'),
                 DarkMidButtonBar(
                customButtonText: 'Remove Cash',
                customButtonOnTap: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => CalenderRange(),
                  );
                },
                customButtonColor: Color(0xFFe6643c),
                text: 'Record your cash movements for the day.', 
                greenButtonText: 'Add Cash', 
                greenOnTap: (){
                    showDialog(
                    context: context,
                    builder: (BuildContext context) => AddCash(),
                  );
                }
                ),
             Container(
                color: kDashboardSearchBarFillColor,
                child:Padding(
                  padding: const EdgeInsets.only(top:24,bottom:24,left:48.0,right: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text(
                        'Opening Float',
                        style:kMediumTextDarkStyle
                        ),
                      TextInput(
                        validate: (val) => val.length == 0 ? 'Enter the note' : null,
                        onChange: (val) {
                                                },
                        paddingTop: 5,
                        hideText: false,
                        height: 46, 
                        hintText: 'Rs 0.00',
                        width: 928, 
                        darkMode: true
                        ),
                        SizedBox(height: 24,),
                        Text(
                        'Notes Optional',
                        style:kMediumTextDarkStyle
                        ),
                      TextInput(
                        validate: (val) => val.length == 0 ? 'Enter the note' : 'Max characters: 255',
                        onChange: (val) {
                                                },
                        paddingTop: 5,
                        hideText: false,
                        height: 64, 
                        hintText: 'Enter a note',
                        width: 928, 
                        darkMode: true
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:3.0,bottom: 20.0),
                          child: Text(
                          'Max characters: 255',
                          style: k14Blue2
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GreenButton(
                              buttonText: 'Set Float',
                              onPress: (){},
                              topPadding: 0
                              ),
                          ],
                        ),
                        
                        
                    ]
                  ),
                )
              ),
            ],
          )
        ),
      )
    );
  }
}



