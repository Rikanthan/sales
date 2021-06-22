import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/TextInput/custom_sub_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/cards/popup_cards/add_common.dart';
import 'package:sales/widgets/drawer/customer_drawer.dart';


class CustomerGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: CustomerDrawer(customerClicked: Customers.group),
      body:Container(
        color:Colors.white,
        child:Column(
          children: [
            DashboardMidBar(),
            CustomHeader(
              backgroundColor:Colors.white,
              text: 'Customer Groups',
              isDarkMode: false,
              ),
            MidButtonBar(
              text: 'Group customers for reporting and providing targeted promotions or special offers.', 
              addBlueButton: false,
              blueButtonText: '',
              blueOnTap: (){}, 
              greenButtonText: 'Add Group',
              greenOnTap: (){
                showDialog(
                  context: context, 
                  builder: (_)=> AddCommon(
                    header: 'Add Group', 
                    item: '',
                    subHeader: 'Group'
                    )
                  );
              }
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0, top:24.0, bottom: 24.0),
                child: Container(
                  height:72,
                  decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: kInputBorderColor,
                                    width:2.0,
                                    )
                                )
                              ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         CustomSubHeader(
                           text: 'Name', 
                           width: 310,
                          leftPadding: 0,
                          align: MainAxisAlignment.start,
                        ),
                        CustomSubHeader(
                           text: 'Date Created', 
                           width: 206,
                          leftPadding: 40,
                          align: MainAxisAlignment.start,
                        ),
                        CustomSubHeader(
                           text: 'Number of \nCustomers', 
                           width: 206,
                          leftPadding: 40,
                          align: MainAxisAlignment.end
                        )
                      ],
                    ),
                  ),
              )
          ],
        )
      )
    );
  }
}