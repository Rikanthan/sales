import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
class HomeBottomCard extends StatelessWidget {
  const HomeBottomCard({
    @required this.image,
    @required this.headerText,
    @required this.subHeaderText,
    @required this.buttonText,
    @required this.onPress, 
  });
  final String image;
  final String headerText;
  final String subHeaderText;
  final String buttonText;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child:Row(
          children: [
            Image.asset(
            image,
              width: 110,
              height: 63.72,
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      headerText,
                      style: TextStyle(
                        fontSize:24,
                        fontFamily: 'Lato',
                        color: kSignInTextColor,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                      Padding(
                        padding:  EdgeInsets.only(top:12.0,bottom: 8.0),
                        child: Text(
                        subHeaderText,
                        style: TextStyle(
                          fontSize:15,
                          fontFamily: 'Lato',
                          height: 1.5,
                          color: kSignInTextColor,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    TextButton(
                    onPressed: onPress, 
                    child:  Text(
                          buttonText,
                          style: TextStyle(
                                  fontSize:15,
                                  fontFamily: 'Lato',
                                  color: Colors.blue,
                                ),
                      ),
                    )
                  ],
                ),
              )
          ],
        )
      ),
    );
  }
}