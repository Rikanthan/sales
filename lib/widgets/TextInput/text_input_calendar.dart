import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class InputCalender extends StatelessWidget {
   const InputCalender({
    Key key,
   @required this.iconData,
    @required this.iconText,
    @required this.width,
    @required this.onPress,
    @required this.darkMode
  }) : super(key: key);

  final IconData iconData;
  final String iconText;
  final double width;
  final bool darkMode;
  final Function onPress;
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 46,
                width: width,
                      child: TextField(
                        expands: false,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: iconText,
                          hintStyle: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato',
                            color: kDashboardMidBarColor,
                            height: 3.5 
                          ),
                          fillColor: darkMode ? kDashboardSearchBarFillColor  :   kWhite,
                          filled: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                              top:12,bottom: 12
                                ), //15
                            child: Icon(
                             iconData,
                             size: 15,
                             color: kDashboardMidBarColor,
                            )
                          ),
                           suffix: InkWell(
                                        onTap: onPress,
                                          child: Column(
                                          children: [
                                              Icon(
                                              Icons.arrow_drop_up,
                                              color:kAppBarColor,
                                              size: 15,
                                              ),
                                              Icon(
                                              Icons.arrow_drop_down,
                                              color:kAppBarColor,
                                              size: 15,
                                              ),
                                          ],
                                        ),
                                      ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius
                                                    .all(
                                                        Radius.circular(4)
                                                        ),
                            borderSide: BorderSide(
                                                  width:2.0, 
                                                  color: Colors.blue[400]
                                                  ),
                          ),      
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius
                                                    .all(
                                                        Radius.circular(4)
                                                        ),
                            borderSide: BorderSide(
                                              width:2.0, 
                                              color: kInputBorderColor
                                              ),
                          ),
                        ),
                      ),
                    );
  }
}
