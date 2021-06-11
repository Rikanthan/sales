import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/button_text.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class PaymentReceived extends StatelessWidget {
  const PaymentReceived({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
              Padding(
                      padding: EdgeInsets.only(top:24,right:48),
                      child: Container(      
                        decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: kDashboardSearchBarFillColor,
                                  borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  topRight: Radius.circular(4)
                                                ),
                                  border: Border.all(
                                      color: kAppBarColor,width: 1,
                                    )
                                ),
                                height: 604,
                        //width:440,
                        child:Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 30.0, right: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                child: Text(
                                  'Payment Received',
                                  style: kExtraLargeTextStyle
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:37.0,bottom: 57),
                                child: TextButton.icon(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.print,
                                    size: 15,
                                    color: kDashboardIconColor,
                                    ),
                                  label: Text(
                                    'Print',
                                      style: TextStyle(
                                      color: kDashboardIconColor,
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      )
                                    )
                                  ),
                              ),
                              DashboardSearchBar(
                                  iconData: Icons.email,
                                  iconText: 'Add a customer to email them a receipt:',
                                  width:477.33,
                                  padding:0,
                                  darkMode: true,
                                ),    
                               Padding(
                                 padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                                 child: ButtonText(
                                   buttonText: 'Complete Sale', 
                                   onPress: (){},
                                   buttonColor: kSignInButtonColor,
                                   topPadding: 30,
                                   leftPadding: 32, 
                                   buttonTextColor: kHelpTextColor, 
                                   fontSize: 18
                                   ),
                               ),
                              ],
                            ),
                        )
                        ),
                    ),
      ],
    );
  }
}