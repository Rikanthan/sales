import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/cards/popup_cards/retrieve_sale.dart';


class SwitchMode extends StatelessWidget {
  const SwitchMode({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.only(right: 580),
                content:Align(
                  alignment: Alignment(-15,-0.82),
                  child: Container(
                    height: 80,
                    width: 208,
                    color: Colors.transparent,
                      child: Column(
                          children: [
                             RotatedBox(
                                quarterTurns: 0,
                                child: Align(
                                alignment: Alignment(-0.7,-1),
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
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: kDashboardSearchBarFillColor,
                                    borderRadius: BorderRadius.all(
                                                    Radius.circular(4),
                                                  ),
                                    border: Border.all(
                                        color: kAppBarColor,width: 1,
                                      )
                                  ),
                                width: 208,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Switch to Training Mode',style: k15WhiteNormal,),
                                      
                                    ],
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
