import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
class ReportSideHeader extends StatelessWidget {
ReportSideHeader({
@required this.text,
@required this.bottomBorder
});
final String text;
final bool bottomBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
             decoration: BoxDecoration(
                      color: Color(0xFFfafafa),
                      border:Border(
                        right:BorderSide( color: kTableBorderColor),
                        bottom:BorderSide( 
                          color:bottomBorder? kTableBorderColor: Colors.white,
                          width: bottomBorder?1.0 :0
                        )
                      )
                    ),
                    height: 50,
                    width: 115,
                    child:Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(text,style: kMediumTextStyle,),
                        ],
                      ),
                    )
                  );
  }
}