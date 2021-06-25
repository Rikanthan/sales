import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/button_text.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    @required this.header,
    @required this.subHeader, 
    @required this.imgUrl,
    @required this.isFind,
    @required this.height });
  final String header;
  final String subHeader;
  final String imgUrl;
  final bool isFind;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width:220,
        height:height,
        decoration: BoxDecoration(
          border: Border.all(
            color: kInputBorderColor,
            width: 2.0
            ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color:Colors.white
          ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                  imgUrl,
                    width: 75,
                    height: 75,
                    ),
                  Text(header,style: k15BlackDark,),
                  SizedBox(height: 8,),
                  Text(
                    subHeader,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      color: kSignInTextColor,
                    ),
                  ),
                  if(!isFind)
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lato',
                        decoration: TextDecoration.underline,
                        color: kSignInTextColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ButtonText(
                      buttonText: isFind ? 'Find Out More' : 'Connect to Vend',
                      onPress: (){},
                      fontSize: 15,
                      buttonTextColor: isFind ? kDashboardIconColor : kHelpTextColor,
                      buttonColor: isFind ? Colors.white : kDashboardIconColor ,
                      topPadding: 12,
                      leftPadding: 20
                      ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}