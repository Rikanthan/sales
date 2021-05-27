import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'package:flutter_switch/flutter_switch.dart';
class ToggleButton extends StatelessWidget {
  ToggleButton({
    @required this.isSwitch,
    @required this.height,
    @required this.width,
    @required this.onToggle
  });
  final double height;
  final double width;
  final bool isSwitch;
  final Function onToggle;
  @override
  Widget build(BuildContext context) {
    return Container(
                                        height: height,
                                        width:width,
                                        child : FlutterSwitch(
                                          width: 68.0,
                                          height: 35.0,
                                          valueFontSize: 15.0,
                                          toggleSize: 37.0,
                                          value: isSwitch,
                                          borderRadius: 30.0,
                                          padding: 0.0,
                                          activeText: ' \u2714',
                                          inactiveText: '\u2716',
                                          activeTextColor: Colors.white,
                                          inactiveTextColor: kDashboardMidBarColor,
                                          activeColor: kSignInButtonColor,
                                          inactiveColor: Colors.white,
                                          activeSwitchBorder: Border.all(
                                              color: kDropDownColor,
                                              width: 3.0,
                                            ),
                                          inactiveSwitchBorder: Border.all(
                                              color: kDropDownColor,
                                              width: 3.0,
                                            ),
                                          showOnOff: true,
                                          toggleBorder: Border.all(color:kDropDownColor,width:1),
                                          duration: Duration(milliseconds:100),
                                          onToggle: onToggle
                                        ),
                                      );
  }
}