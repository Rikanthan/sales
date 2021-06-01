import 'package:flutter/material.dart';
import 'package:sales/widgets/TextInput/close_register_header.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';

class CloseRecordCard extends StatelessWidget {
  CloseRecordCard({
    @required this.onPressed
  });
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
                width: 693,
                decoration: BoxDecoration(
                  color:kDashboardSearchBarFillColor,
                border: Border(
                  bottom: BorderSide(
                    color: kInputBorderColor,
                    width: 0.7
                    ),
                   left: BorderSide(
                    color: kSignInButtonColor,
                    width: 4
                    ),
                  )
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,top:4,bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 171,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Cash',style: kMediumTextDarkStyle,),
                              TextButton(
                                onPressed: onPressed,
                                  child: Text(
                                    'View Cash Payments,\nFloats and Movements',
                                    style: TextStyle(
                                      color: kDashboardIconColor,
                                      fontFamily: 'Lato',
                                      fontSize: 14,
                                      ),
                                    )
                                  ),
                              GestureDetector(
                                child: Container(
                                  width:131,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE6643C),
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:8.0,right: 8.0,top:4,bottom:4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.warning,
                                          color:kHelpTextColor,
                                          size: 14,
                                          ),
                                        Text(
                                          ' NO FLOAT SET',
                                          style: TextStyle(
                                            color: kHelpTextColor,
                                            fontFamily: 'Lato',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CloseRegisterHeader(
                            alignment: MainAxisAlignment.end,
                            height: 84,
                            width: 160,
                            text: '0.00'
                            ), 
                        Container(
                          height: 84,
                            width: 183,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,top:4,bottom: 4,right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextInput(
                                darkMode: true,
                                validate: (val) => val.length == 0 ? 'Enter the amount' : null,
                                  onChange: (val) {
                                        },
                                  paddingTop: 5, 
                                  hideText: false, 
                                  height: 46,
                                  width:130,
                                  hintText:'Enter amount',
                                ),
                              ],
                            ),
                          ),
                        ),
                      CloseRegisterHeader(
                        alignment: MainAxisAlignment.end,
                        height: 84,
                        width: 166,
                        text: '-'
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.7,
                    color: kInputBorderColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,top:12,bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warning,
                          size:14,
                          color: Color(0xFFE6643C),
                          ),
                        Text(
                          'You have not set the opening cash float.',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Lato',
                            color: Color(0xFFE6643C) 
                            ),
                          ),
                          TextButton(
                            onPressed: (){},
                             child:  Text(
                                'Set now',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  color: Color(0xFFE6643C),
                                  decoration: TextDecoration.underline
                                  ),
                                ),
                             )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.7,
                    color: kInputBorderColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CloseRegisterHeader(
                        alignment: MainAxisAlignment.start,
                        height: 60,
                        width: 250,
                        text: 'Cash Payments Received'
                        ),
                        CloseRegisterHeader(
                        alignment: MainAxisAlignment.start,
                        height: 60,
                        width: 250,
                        text: '0.00'
                        ),
                    ],
                  )
                ],
              ),
            );
  }
}