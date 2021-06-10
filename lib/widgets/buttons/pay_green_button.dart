import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class PayGreenButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
                  child:TextButton(
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right:10.0),
                         child: Text(
                            'Pay',
                            style:TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lato',
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            )
                          ),
                       ),
                        Text(
                          '3 items',
                          style:TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Rs409.70',
                              style:TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ],
                        ),
                     ],
                   ),
                    onPressed: (){},
                   style:ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => kSignInButtonColor ),
                      padding:  MaterialStateProperty.resolveWith((states) => EdgeInsets.only(left:32,right: 32,top:26,bottom: 26)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),                
                  )
                  )
              );
  }
}