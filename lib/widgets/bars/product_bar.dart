import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class ProductBar extends StatelessWidget {
  const ProductBar({
    Key key,
   @required this.text,
   @required this.number,
   @required this.width,
   @required this.textClick,
   @required this.viewClick,
   @required this.editClick,
   @required this.deleteClick,
  }) : super(key: key);

  final String text;
  final String number;
  final double width;
  final Function textClick;
  final Function viewClick;
  final Function editClick;
  final Function deleteClick;
  @override
  Widget build(BuildContext context) {
    return  Padding(
                        padding: const EdgeInsets.only(
                                                      left:8.0,
                                                      top:4.0,
                                                      bottom: 8.0
                                                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                                          top:20.0,
                                                          bottom: 20.0,
                                                          right: 40.0
                                                          ),
                              child: Container(
                                width: 645,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: textClick,
                                      child: Text(
                                        text,
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontFamily: 'Lato',
                                          fontSize: 15,
                                          color: kAppBarColor
                                          ),
                                        )
                                      ),
                                      Text(number,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 15,
                                          color: kAppBarColor
                                          ),
                                        )                      
                                  ],
                                ),
                              ),
                            ),  
                            Padding(
                              padding: const EdgeInsets.only(
                                                            top:20,
                                                            bottom: 20,
                                                            left: 40.0
                                                        ),
                              child: Container(
                                width: 195,
                                child:Row(
                                  children: [
                                    TextButton(
                                        onPressed: viewClick,
                                        child: Text("View Products",
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                            color: kAppBarColor
                                            ),
                                          )
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.edit,
                                            size: 15,
                                            color: kDropDownColor,
                                            ),
                                           onPressed: editClick
                                           ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.delete_outline,
                                            size: 15,
                                            color: kDropDownColor
                                            ),
                                           onPressed: deleteClick
                                           )
                                  ],
                                )
                              ),
                            )      
                          ],
                        ),
                      );
  }
}