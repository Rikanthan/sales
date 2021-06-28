import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
enum CashIn{
  cashIn,pettyCashIn
}

class AddCash extends StatefulWidget {
  const AddCash({ Key key }) : super(key: key);

  @override
  _AddCashState createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  CashIn _cashIn = CashIn.cashIn;
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:660,
      height: 433,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kDashboardSearchBarFillColor,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 600,
            height: 434,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Add Cash',
                    style: TextStyle(
                      color: kHelpTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Lato' 
                      )
                    ),
                    SizedBox( height:32),
                    Row(
                    children: [
                       Radio(
                          activeColor: MaterialStateColor
                                                  .resolveWith(
                                                        (states) =>  kSignInButtonColor
                                                          ),
                        hoverColor: MaterialStateColor
                                                  .resolveWith(
                                                          (states) =>  kSignInButtonColor
                                                          ),
                        overlayColor: MaterialStateColor
                                                  .resolveWith(
                                                            (states) => kSignInButtonColor 
                                                            ),
                        fillColor: MaterialStateColor
                                                  .resolveWith(
                                                              (states) => _cashIn == CashIn.cashIn 
                                                              ? kSignInButtonColor :
                                                               kAppBarColor ),
                        value: CashIn.cashIn,
                        groupValue: _cashIn,
                        onChanged: (CashIn value)
                        {
                          setState(() {
                            _cashIn = value;
                          });
                        }
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:4.0,right: 8),
                        child: Text('Cash in',style: k15White,),
                      ),
                      Radio(
                         activeColor: MaterialStateColor
                                                .resolveWith(
                                                        (states) =>  kSignInButtonColor
                                                        ),
                        hoverColor: MaterialStateColor
                                                .resolveWith(
                                                          (states) =>  kSignInButtonColor
                                                          ),
                        overlayColor: MaterialStateColor
                                                .resolveWith(
                                                          (states) => kSignInButtonColor 
                                                          ),
                        fillColor: MaterialStateColor
                                                .resolveWith(
                                                            (states) => _cashIn == CashIn.pettyCashIn 
                                                            ? kSignInButtonColor 
                                                            : kAppBarColor 
                                                            ),
                        value: CashIn.pettyCashIn,
                        groupValue: _cashIn,
                        onChanged: (CashIn value)
                        {
                          setState(() {
                            _cashIn = value;
                          });
                        }
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:4.0,right: 8),
                        child: Text('Petty cash in',style: k15White),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0, bottom: 5),
                    child: Text('Amount',
                    style: kMediumTextDarkStyle
                    ),
                  ),
                  TextInput(
                    darkMode: true,
                    validate:(value){},
                    onChange: (value){},
                    paddingTop: 0,
                    hideText: false,
                    height: 46,
                    width:536,
                    hintText: 'e.g. 50.00',
                    ),
                    Padding(
                    padding: const EdgeInsets.only(top:20.0, bottom: 5),
                    child: Text('Note',
                    style: kMediumTextDarkStyle
                    ),
                  ),
                  TextInput(
                    darkMode: true,
                    validate:(value){},
                    onChange: (value){},
                    paddingTop: 0,
                    hideText: false,
                    height: 46,
                    width:536,
                    hintText: 'Type to add a note',
                    ), 
                     Padding(
                       padding: const EdgeInsets.only( top:8.0,bottom: 22),
                       child: Text('Max characters: 255',style: k14Blue2,),
                     ),  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        buttonText: 'Add Cash',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        ),              
                    ],
                  )
                ],
              ),
            ),
          ),
          EscButton(
            isDarkMode: true,
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