import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/cards/popup_cards/retrieve_sale.dart';

class AddCustomer extends StatelessWidget {
  const AddCustomer({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.only(right: 400),
                content:Align(
                  alignment: Alignment(-15,-0.08),
                  child: Container(
                    height: 205,
                    width: 330,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                                            ),
                              border: Border.all(
                                  color: Colors.white,width: 1,
                                )
                            ),
                          width: 306,
                          height: 205,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.report,size: 15,color: kAppBarColor,),
                                    Text('   Add a customer to this sale.',style: kMediumTextStyle,),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:15.0, bottom: 15.0),
                                  child: Text("You haven't added a customer to this sale\nyet. You can search for an existing\ncustomer, add a new one, or just continue\nto pay.",style: kMediumTextNormalStyle,),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GreenButton(
                                      buttonText: 'Got it',
                                        onPress: (){}, 
                                        topPadding: 0
                                      ),
                                  ],
                                ),                               
                              ],
                            ),
                          ),
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
                                color: Colors.white,
                                border:Border.all(
                                    color: Colors.white,width: 1,
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
