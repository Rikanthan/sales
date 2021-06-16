import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class GiftCard extends StatelessWidget {
  GiftCard({
    @required this.header,
    @required this.subHeader,
    @required this.imgUrl,
    @required this.imgWidth
  });
  final double imgWidth;
  final String header;
  final String subHeader;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return  Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                                    imgUrl,
                                          width: imgWidth,
                                          height: 100,
                                          ),
                             Padding(
                               padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                               child: Text(
                                header,
                                 style: TextStyle(
                                   color: kAppBarColor,
                                   fontSize: 24,
                                   fontFamily: 'Lato',
                                   fontWeight: FontWeight.w700
                                   ),
                                 ),
                             ),
                             Text(
                             subHeader,
                             style:TextStyle(
                               fontSize: 15,
                               color: kAppBarColor,
                               fontFamily: 'Lato',
                               height: 1.5
                             ) 
                            )             
                        ],
                      ),
                    );
  }
}