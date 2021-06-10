import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/cards/popup_cards/retrieve_sale.dart';


class AddDiscount extends StatelessWidget {
  const AddDiscount({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.only(right: 248),
                content:Align(
                  alignment: Alignment(-15,0.79),
                  child: Container(
                    height: 254,
                    width: 354,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: kDashboardSearchBarFillColor,
                                  borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  topRight: Radius.circular(4)
                                                ),
                                  border: Border.all(
                                      color: kAppBarColor,width: 1,
                                    )
                                ),
                              width: 328,
                              height: 178,
                              child: Padding(
                                padding: const EdgeInsets.only(right:24.0,top:24.0, left: 24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Add Discount',style: kMediumTextDarkStyle,),
                                    Padding(
                                      padding: const EdgeInsets.only(top:15.0, bottom: 15.0),
                                      child: Divider(
                                        color: kAppBarColor,
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: kDashboardSearchBarFillColor,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4)
                                                ),
                                              border: Border.all(
                                                  color: kSignInButtonColor,width: 1,
                                                )
                                              ),
                                                width: 55.8,
                                                height: 46,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text('%',style:kMediumTextDarkStyle)
                                                ],
                                              ),   
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: kDashboardSearchBarFillColor,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(4),
                                                  bottomRight: Radius.circular(4)
                                                ),
                                              border: Border.all(
                                                  color: kAppBarColor,width: 1,
                                                )
                                              ),
                                                width: 58.17,
                                                height: 46,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text('Rs',style:kMediumTextDarkStyle)
                                                ],
                                              ),   
                                        ),
                                        SizedBox(
                                          width: 26.03,
                                        ),
                                        TextInput(
                                          darkMode: true,
                                          validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                                          onChange: (val) {
                                                },
                                          paddingTop: 0, 
                                          hideText: false, 
                                          height: 46,
                                          width:134,
                                          hintText: '0 %',
                                          ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12,bottom: 12),
                                      child: Text(
                                        'This discount will be applied to all items',
                                            style: TextStyle(
                                              color: kDashboardIconColor,
                                              fontFamily: 'Lato',
                                              fontSize: 14
                                              ),
                                        ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                      width: 328,
                                      height: 76,
                                      decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: kAppBarColor,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(4)
                                                ),
                                              border: Border.all(
                                                  color: kAppBarColor,width: 1,
                                                )
                                              ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 12,bottom: 12),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  CustomButton(
                                                      buttonText: 'Cancel', 
                                                      onPress: (){}, 
                                                      buttonColor: kDashboardIconColor, 
                                                      topPadding: 20, 
                                                      leftPadding: 30
                                                      ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 25,left: 8),
                                                    child: GreenButton(
                                                      buttonText: 'Add',
                                                       onPress: (){}, 
                                                       topPadding: 0
                                                       ),
                                                  ),
                                                    
                                                ],
                                              ),
                                            ),
                                    )
                          ],
                        ),
                        RotatedBox(
                          quarterTurns: 1,
                          child: Align(
                          alignment: Alignment.center,
                            child: ClipPath(
                              clipper: ArrowClipper(),
                              child: Container(
                                height: 16.97/2,
                                width: 19.97,
                                decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: kDashboardSearchBarFillColor,
                                border:Border.all(
                                    color: kAppBarColor,width: 1,
                                  )
                                ),
                              ),
                          ),
                      ),
                        ),
                      ],
                    ),
                  ),
    ),
  );
  }
}
