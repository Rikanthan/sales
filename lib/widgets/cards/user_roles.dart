import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';

class Roles extends StatelessWidget {
  const Roles({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left:48.0,right: 48.0, top: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserHeader(
                  text: 'Name',
                  padding: 0, 
                  width: 403.92,
                  height: 51.5,
                  alignment: MainAxisAlignment.start
                  ),
                UserHeader(
                  text: 'Last Saved',
                  padding: 8, 
                  width: 403.92,
                  height: 51.5,
                  alignment: MainAxisAlignment.start
                  ),
              ],
            ),
            Divider(
              thickness: 1,
              color:kFooterColor
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width:403.92,
                      child: GestureDetector(
                        onTap: (){},
                         child: Text(
                           'Cashier',
                           style: TextStyle(
                               decoration: TextDecoration.underline,
                               color: kAppBarColor,
                               fontSize: 15,
                               fontFamily: 'Lato'
                             ),
                           ),
                       ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text(
                            '7 days ago', 
                             style: TextStyle(
                                  color: kAppBarColor,
                                  fontSize: 14,
                                  fontFamily: 'Lato'
                                ),
                            ),
                    ),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color:kInputBorderColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width:403.92,
                      child: GestureDetector(
                        onTap: (){},
                        child: Text(
                          'Manager',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: kAppBarColor,
                              fontSize: 15 
                            ),
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text(
                            '7 days ago', 
                             style: TextStyle(
                                  color: kAppBarColor,
                                  fontSize: 14,
                                  fontFamily: 'Lato'
                                ),
                      )
                    ),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color:kInputBorderColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width:403.92,
                    child: GestureDetector(
                      onTap: (){},
                      child: Text(
                        'Admin',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: kAppBarColor,
                            fontSize: 15 
                          ),
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('-'),
                  ),
              ],
            ),
            Divider(
              thickness: 0.5,
              color:kInputBorderColor,
            )
          ],
        ),
      ),
    );
  }
}