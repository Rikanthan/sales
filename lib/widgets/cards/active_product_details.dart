import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class ActiveProducts extends StatefulWidget {
  @override
  _ActiveProductsState createState() => _ActiveProductsState();
}

class _ActiveProductsState extends State<ActiveProducts> {
  bool _inventory = true;
  bool _price = false;
  bool _details = false;
  @override
  Widget build(BuildContext context) {
    return Container(
            child: Padding(
              padding: const EdgeInsets.only(left:31,top:8.0,bottom: 8.0, right: 8.0),
              child: Column(
                children: [
                  Container(
                    decoration:BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: kInputBorderColor,
                                width:4.0,
                                )
                            ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width:64,
                          height: 48,
                          decoration:BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: _inventory ? kSignInButtonColor : kInputBorderColor,
                                width:4.0,
                                )
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              TextButton(
                                child:Text('Inventory'),
                                onPressed: ()
                                {
                                  setState(() {
                                    _inventory= true;
                                    _price = false;
                                    _details = false;
                                  });
                                },
                                ),
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 35,
                          ),
                          Container(
                          width:60,
                          height: 48,
                          decoration:BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: _price ? kSignInButtonColor : kInputBorderColor,
                                width:4.0,
                                )
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              TextButton(
                                child:Text('Pricing'),
                                onPressed: ()
                                {
                                  setState(() {
                                    _inventory= false;
                                    _price = true;
                                    _details = false;
                                  });
                                },
                                ),
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          width: 35,
                          ),
                          Container(
                          width:60,
                          height: 48,
                          decoration:BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: _details ? kSignInButtonColor : kInputBorderColor,
                                width:4.0,
                                )
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              TextButton(
                                child:Text('Details'),
                                onPressed: ()
                                {
                                  setState(() {
                                    _inventory= false;
                                    _price = false;
                                    _details = true;
                                  });
                                },
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
       
    );
  }
}