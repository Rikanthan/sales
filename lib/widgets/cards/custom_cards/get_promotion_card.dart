import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';

class GetPromotionCard extends StatefulWidget {
  const GetPromotionCard({ Key key }) : super(key: key);

  @override
  _GetPromotionCardState createState() => _GetPromotionCardState();
}

class _GetPromotionCardState extends State<GetPromotionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 696,
      //height: 241,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 310,
                  child: Text('Discount',style: kMediumTextStyle ,),
                  ),
                  Text('Product',style: kMediumTextStyle ,)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width:310,
                  child: Text(
                    'Get',
                    style: k24Black ,
                    ),
                ),
                Container(
                  width: 56,
                  height: 44,
                   decoration: BoxDecoration(
                            color: Colors.white,
                             border: Border.all(
                               color:   kSignInButtonColor ,
                               width: 2,
                             ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4)
                            ) 
                          ),
                        child: Text("%",style: kMediumTextNormalStyle,),
                ),
                Container(
                  width: 56,
                  height: 44,
                   decoration: BoxDecoration(
                            color: Colors.white,
                             border: Border.all(
                               color:   kSignInButtonColor ,
                               width: 2,
                             ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4)
                            ) 
                          ),
                        child: Text("Rs",style: kMediumTextNormalStyle,),
                ),
                TextInput(
                  darkMode: false,
                  hideText: false,
                  hintText:'0 %',
                  paddingTop: 5,
                  height: 46,
                  width: 178,
                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                    onChange: (val) { 
                    },
                  ),
                 Container(
                  width: 84,
                  height: 44,
                   decoration: BoxDecoration(
                            color: Colors.white,
                             border: Border.all(
                               color:   kSignInButtonColor ,
                               width: 2,
                             ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4)
                            ) 
                          ),
                        child: Text("All",style: kMediumTextNormalStyle,),
                ),
                Container(
                  width: 84,
                  height: 44,
                   decoration: BoxDecoration(
                            color: Colors.white,
                             border: Border.all(
                               color:   kSignInButtonColor ,
                               width: 2,
                             ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4)
                            ) 
                          ),
                        child: Text("Specific",style: kMediumTextNormalStyle,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}