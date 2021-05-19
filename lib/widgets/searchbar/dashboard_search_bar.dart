import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class DashboardSearchBar extends StatelessWidget {
   const DashboardSearchBar({
    Key key,
   @required this.iconData,
    @required this.iconText,
    @required this.width,
    @required this.padding,
    @required this.darkMode
  }) : super(key: key);

  final IconData iconData;
  final String iconText;
  final double width;
  final double padding;
  final bool darkMode;
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:padding),
      child: Container(
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
                              fontFamily: 'Roboto',
                              color: kDashboardMidBarColor, 
                            ),
                            fillColor: darkMode?kDashboardSearchBarFillColor:Colors.white,
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
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(width:2.0, color: Colors.blue[400]),
                            ),      
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(width:2.0, color: kInputBorderColor),
                            ),
                          ),
                        ),
                      ),
    );
  }
}