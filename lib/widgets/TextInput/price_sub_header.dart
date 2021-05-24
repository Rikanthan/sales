import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class PriceSubHeader extends StatelessWidget {
 const PriceSubHeader({
    Key key,
   @required this.text,
   @required this.width
  }) : super(key: key);

  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: width,
                                child: Row(
                                  children: [
                                    Text(
                                      text,
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        color: kAppBarColor
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            );
  }
}