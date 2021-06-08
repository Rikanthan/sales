import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/setup/enable_store_credit.dart';
import 'package:sales/widgets/TextInput/custom_header.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/toggle_button.dart';
import 'package:sales/widgets/drawer/setup_drawer.dart';

class StoreCredit extends StatefulWidget {
 
  @override
  _StoreCreditState createState() => _StoreCreditState();
}

class _StoreCreditState extends State<StoreCredit> {
  bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SetupDrawer(setupClicked:SetupClicked.store ),
      body:SingleChildScrollView(
        child: Container(
          height: 702,
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              CustomHeader(
                backgroundColor:kHomeBackgroundColor,
                isDarkMode: false,
                 text: 'Store Credit'
                 ),
              MidButtonBar(
                text: 'Manage whether your stores offer store credit.', 
                addBlueButton: false, 
                blueButtonText: '', 
                blueOnTap: (){}, 
                greenButtonText: '', 
                greenOnTap: (){}
                ),
                Padding(
                  padding: const EdgeInsets.only(left:48.0, right: 48.0 ,top: 24.0),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 232,
                            child: Text(
                              'Enable Store Credit',
                              style: kMediumTextNormalStyle,
                              ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ToggleButton(
                            isSwitch: isSwitch, 
                            height: 36, 
                            width: 68, 
                            onToggle: (value)
                              {
                                setState(() {
                                  isSwitch = value;
                                  if(value)
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> EnableStoreCredit()));
                                  }
                                });
                              }
                            ),
                          SizedBox(height:20),
                          Text(
                            'Enable issuing store credit in my store'
                                ,style: kMediumTextNormalStyle,
                                ),
                          Padding(
                            padding: const EdgeInsets.only(top:4.0),
                            child: Text('Disabling store credit will mean your can no longer issue store credit or pay by store credit',style: kMediumTextNormalStyle,),
                          )

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
