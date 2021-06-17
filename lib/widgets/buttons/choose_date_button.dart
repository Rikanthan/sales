import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/cards/popup_cards/choose_date.dart';

class ChooseDate extends StatelessWidget {
  const ChooseDate({ Key key, @required this.width }) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
                                  width:width,
                                  child: TextButton(
                                        onPressed: (){
                                           showDialog(
                                              context: context,
                                              builder: (BuildContext context) => ChooseDatePopUp(),
                                            );
                                        },
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(2.0),
                                              side: BorderSide(
                                                width: 2,
                                                color: kDashboardMidBarColor
                                                )
                                              )
                                            ),
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.only(top:12.0,bottom: 12.0,left:12.0,right: 12.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_today_sharp,
                                                size:15,
                                                color: kDashboardMidBarColor,
                                              ),
                                              Text(
                                                 "  choose date range...",
                                                  style: k15Blue2
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                );
  }
}