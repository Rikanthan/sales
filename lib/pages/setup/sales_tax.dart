import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/setup/edit_outlet.dart';
import 'package:sales/pages/setup/main_outlet.dart';
import 'package:sales/widgets/TextInput/gredient_text_header.dart';
import 'package:sales/widgets/TextInput/settings_gredient.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/outlet_gredient_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';


class SalesTax extends StatefulWidget {
 
  @override
  _SalesTaxState createState() => _SalesTaxState();
}

class _SalesTaxState extends State<SalesTax> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked:SetupClicked.outlets),
      body:SingleChildScrollView(
        child: Container(
          color:kWhite,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(top:20.0,bottom: 20.0,left:30.0 ,right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:15.0,bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Setup',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color:kLightBlue,
                              decoration: TextDecoration.none,
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: kLightBlue
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            '>',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color:kLightGrey,
                              ),
                          ),
                          SizedBox(
                            width:5,
                          ),
                          Text(
                            'Sales Taxes',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color:kLightGrey,
                              ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: Text(
                        'Sales Tax',
                        style: TextStyle(
                          fontSize: 23.52,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width:964,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 10.0,right: 10.0),
                        child: Row(
                          children: [
                            OutletButton(
                              buttonText: 'Add Sales Tax',
                              onPress: (){}, 
                              topPadding: 3,
                              leftPadding: 10,
                              width: 93.55,
                              isButtonDisable: false,
                              ),
                              SizedBox(width:4),
                              OutletButton(
                              buttonText: 'Combine Taxes into a Group',
                              onPress: (){}, 
                              topPadding: 3,
                              leftPadding: 10,
                              width: 211.55,
                              isButtonDisable: true,
                              ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                    border: Border.all(
                      color:kCustomGrey, width: 1, style: BorderStyle.solid
                      ),
                    gradient: LinearGradient(
                         colors: [ kCustomWhite7 ,  kCustomWhite8 ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
                     boxShadow:[
                      BoxShadow(
                        color: kWhite.withOpacity(0.2),
                        spreadRadius: -1,
                        blurRadius: 2,
                        offset: Offset.zero
                      ),
                     ],
                    borderRadius: BorderRadius.all(
                         Radius.circular(5)
                        )
                      ),
                    ),
                    SizedBox( height: 20,),
                    Row(
                      children: [
                        GredientTableHeader(
                          text: 'Name', 
                          isDarkMode: false, 
                          width: 595.43,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: true,
                          alignment: MainAxisAlignment.start
                          ),
                          GredientTableHeader(
                          text: 'Rate', 
                          isDarkMode:false, 
                          width: 178,
                          isLeftborder: true,
                          isTopRightRadius: false,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.end
                          ),
                          GredientTableHeader(
                          text: '', 
                          isDarkMode:false, 
                          width: 178,
                          isLeftborder: true,
                          isTopRightRadius: true,
                          isTopLeftRadius: false,
                          alignment: MainAxisAlignment.start
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color : kCustomWhite6, 
                              width: 1, 
                              style: BorderStyle.solid
                              ),
                              color:kWhite
                          ),
                          width: 595.43,
                          height: 32,
                          child:Padding(
                            padding: const EdgeInsets.only(
                                            top:7.0,
                                            bottom: 7.0,
                                            left: 9.0,
                                            right: 9.0
                                            ),
                            child: Row(
                              children: [
                                Text(
                                  'No tax',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: kBlackOpacity,
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color : kCustomWhite6, 
                                  width: 1, 
                                  style: BorderStyle.solid
                                  ),
                              right: BorderSide(
                                      color : kCustomWhite6, 
                                      width: 1, 
                                      style: BorderStyle.solid
                                      ),
                              ),
                              color:kWhite
                          ),
                          width: 178,
                          height: 32,
                          child:Padding(
                            padding: const EdgeInsets.only(
                                                top:7.0,
                                                bottom: 7.0,
                                                left: 9.0,
                                                right: 9.0
                                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '0%',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: kBlackOpacity,
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                              color : kCustomWhite6, 
                                              width: 1, 
                                              style: BorderStyle.solid
                                              ),
                              right: BorderSide(
                                              color : kCustomWhite6, 
                                              width: 1, 
                                              style: BorderStyle.solid
                                              ),
                              ),
                              color:kWhite
                          ),
                          width: 178,
                          height: 32,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:30.0,bottom: 10.0),
                      child: Text(
                        'Default Outlet Taxes',
                        style: TextStyle(
                          fontSize: 23.52,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          color: kBlackOpacity,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SettingsGredientHeader(
                          text: 'Outlet Name',
                          width: 430,
                          cellType: CellType.left
                          ),
                          SettingsGredientHeader(
                          text: 'Default Sales Tax',
                          width: 340,
                          cellType: CellType.middle
                          ),
                          SettingsGredientHeader(
                          text: '',
                          width: 190,
                          cellType: CellType.right
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color : kCustomWhite6,
                               width: 1, 
                               style: BorderStyle.solid
                              ),
                              color:kWhite
                          ),
                          width: 430,
                          height: 32,
                          child:Padding(
                            padding: const EdgeInsets.only(
                                                      top:7.0,
                                                      bottom: 7.0,
                                                      left: 9.0,
                                                      right: 9.0
                                                      ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (_) => MainOutlet()));
                                  },
                                  child: Text(
                                    'Main Outlet',
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: kLightBlue,
                                      )
                                    ),
                                ),
                              ],
                            ),
                          )
                        ),
                         Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                            color : kCustomWhite6, 
                                            width: 1, 
                                            style: BorderStyle.solid
                                            ),
                              right: BorderSide(
                                            color : kCustomWhite6, 
                                            width: 1, 
                                            style: BorderStyle.solid
                                            ),
                              ),
                              color:kWhite
                          ),
                          width: 340,
                          height: 32,
                          child:Padding(
                            padding: const EdgeInsets.only(
                                                        top:7.0,
                                                        bottom: 7.0,
                                                        left: 9.0,
                                                        right: 9.0
                                                        ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'No Tax (0%)',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    color: kBlackOpacity,
                                    )
                                  ),
                              ],
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                              color : kCustomWhite6, 
                                              width: 1, 
                                              style: BorderStyle.solid
                                              ),
                              right: BorderSide(
                                              color : kCustomWhite6, 
                                              width: 1, 
                                              style: BorderStyle.solid
                                              ),
                              ),
                              color:kWhite
                          ),
                          width: 190,
                          height: 32,
                          child:Padding(
                            padding: const EdgeInsets.only(
                                                          top:7.0,
                                                          bottom: 7.0,
                                                          left: 9.0,
                                                          right: 9.0
                                                          ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    Navigator.push(
                                          context, 
                                          MaterialPageRoute(
                                                        builder: (_) => EditOutlet()
                                                              )
                                                            );
                                  },
                                  child: Text(
                                    'Edit Outlet',
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      color: kLightBlue,
                                      )
                                    ),
                                ),
                              ],
                            ),
                          )
                        ),
                      ],
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