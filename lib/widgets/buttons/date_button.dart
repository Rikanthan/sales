import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class DateButton extends StatelessWidget {
  DateButton({
    @required this.dayOnClicked,
    @required this.isDayClicked,
    @required this.isMonthClicked,
    @required this.monthOnClicked,
    @required this.isWeekClicked,
    @required this.weekOnClicked
    });
  final Function dayOnClicked;
  final bool isDayClicked;
  final Function weekOnClicked;
  final bool isWeekClicked;
  final Function monthOnClicked;
  final bool isMonthClicked;
  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children :[
              TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      side: BorderSide(
                        width: 2,
                        color: isDayClicked ? kSignInButtonColor:
                                  kInputBorderColor
                        )
                      )
                    ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(
                                          top:12.0,
                                          bottom: 12.0,
                                          left:20.0,
                                          right: 20.0
                                          ),
                  child: Text(
                    "Day",
                    style: TextStyle(
                      color: kAppBarColor,
                      fontFamily: 'Lato',
                      fontSize: 15
                      )
                    ),
                ),
              ),
              TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      side: BorderSide(
                        width: 2,
                        color: isWeekClicked  ? kSignInButtonColor 
                                :kInputBorderColor
                        )
                      )
                    ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(
                                            top:12.0,
                                            bottom: 12.0,
                                            left:20.0,
                                            right: 20.0
                                            ),
                  child: Text(
                    "Week",
                      style: TextStyle(
                      color: kAppBarColor,
                      fontFamily: 'Lato',
                      fontSize: 15
                      )
                    ),
                ),
              ),
              TextButton(
                onPressed: (){},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      side: BorderSide(
                        width: 2,
                        color: isMonthClicked ? 
                                kSignInButtonColor:
                                kInputBorderColor
                        )
                      )
                    ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(
                                                top:12.0,
                                                bottom: 12.0,
                                                left:20.0,
                                                right: 20.0
                                                ),
                  child: Text(
                    "Month",
                      style: TextStyle(
                      color: kAppBarColor,
                      fontFamily: 'Lato',
                      fontSize: 15
                      )
                    ),
                ),
              )
            ]
          );
  }
}