import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

class  AddPromoCodePopup extends StatefulWidget { 
  @override
  _AddPromoCodePopupState createState() => _AddPromoCodePopupState();
}

class _AddPromoCodePopupState extends State<AddPromoCodePopup> {
  int total = 3;
  @override
  Widget build(BuildContext context) {
   
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:660,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )
                  ),
                width: 600,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Add Promo Codes',
                          style: TextStyle(
                            color: kAppBarColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato' 
                            )
                          ),
                        SizedBox(height: 32,),
                      Container(
                        height: 496.5,
                        child: ListView(
                      scrollDirection: Axis.vertical,
                          children: [
                            Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                              Text('These codes can be redeemed as many times as you decide. Use this to reach a\nwide audience. Custom codes cannot be created more than once across all\npromotions.'
                               ,style: kMediumTextNormalStyle,),
                               SizedBox(height: 20,),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  UserHeader(
                                        text: 'Custom Promo Code',
                                        padding: 0,
                                        width: 332.92,
                                        alignment: MainAxisAlignment.start,
                                        height: 63
                                      ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Number of Redemptions',style: k15BlackDark,),
                                      Text('Leave blank for unlimited',style: kMediumTextNormalStyle,)
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                height: 1,
                                color: kAppBarColor,
                                ),
                                for(int i = 0; i < total ; i++)
                               Padding(
                                 padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                      TextInput(
                                            darkMode: false,
                                            hideText: false,
                                            hintText:'Enter a custom code,eg, FBFans50%',
                                            paddingTop: 0,
                                            height: 46,
                                            width: 320.22,
                                            validate: (String val) => val.isEmpty? 'This field is required' : null,
                                              onChange: (val) { 
                                              },
                                            ),
                                        TextInput(
                                        darkMode: false,
                                        hideText: false,
                                        hintText:'∞ ',
                                        paddingTop: 0,
                                        height: 46,
                                        width: 148.09,
                                        validate: (String val) => val.isEmpty? 'This field is required' : null,
                                          onChange: (val) { 
                                          },
                                        ), 
                                      IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          size: 15,
                                          ), 
                                        onPressed: (){
                                            setState(() {
                                              if(total == 0)
                                              {
                                                total = 0;
                                              }
                                              total --;
                                            });
                                          }
                                        ),    
                                   ],
                                 ),
                               ), 
                               Divider(
                                height: 1,
                                color: kAppBarColor,
                                ), 
                                 Padding(
                                  padding: const EdgeInsets.only(top:12.0),
                                  child: TextButton.icon(
                                    onPressed: (){
                                      setState(() {
                                        total ++;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: kSignInButtonColor,
                                      ),
                                      label: Text(
                                          'Add Another Promo Code',
                                          style: k15Green,
                                        ) 
                                      ),
                                ),               
                                
                            ],
                          ),
                          ], 
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [ 
                          CustomButton(
                            buttonText: 'Add New Codes',
                            onPress: (){
                              Navigator.pop(context);
                            },
                            buttonColor: kSignInButtonColor, 
                            topPadding: 20, 
                            leftPadding: 30
                            ), 
                          ],
                        )
                    ],
                  ),
                ),
              ),        
            ],
          ),
          EscButton(
            isDarkMode: false,
            positionedRight: 0.0,
            positionedTop: 0.0, 
            width: 60
            )
        ],
      ),
    ),
  );
  }
}