import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class DateRangeButton extends StatelessWidget {
  DateRangeButton({
    @required this.previousOnClicked,
    @required this.ispreviousClicked,
    @required this.iscurrentdateClicked,
    @required this.currentdateOnClicked,
    @required this.isnextClicked,
    @required this.nextOnClicked
    });
  final Function previousOnClicked;
  final bool ispreviousClicked;
  final Function nextOnClicked;
  final bool isnextClicked;
  final Function currentdateOnClicked;
  final bool iscurrentdateClicked;
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
                                            color: ispreviousClicked  ? kAppBarColor 
                                                     : kInputBorderColor
                                            )
                                          )
                                        ),
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                                      child: Icon(
                                        Icons.keyboard_arrow_left,
                                        color:kAppBarColor,
                                        size:15,
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
                                            color: iscurrentdateClicked ? kAppBarColor  :
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
                                        "20 May 2021",
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
                                            color: isnextClicked  ? kAppBarColor
                                                  : kInputBorderColor
                                            )
                                          )
                                        ),
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.only(
                                                                    top:12.0,
                                                                    bottom: 12.0
                                                                    ),
                                       child: Icon(
                                        Icons.keyboard_arrow_right,
                                        color:kAppBarColor,
                                        size:15,
                                      ),
                                    ),
                                  )
                                ]
                              );
  }
}