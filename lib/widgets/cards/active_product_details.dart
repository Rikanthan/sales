import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 645,
                    height: _details?277:155,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration:BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: kInputBorderColor,
                                width:1.0,
                                )
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width:65,
                                height: 48,
                                decoration:BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: _inventory ? kSignInButtonColor : kInputBorderColor,
                                      width:_inventory ? 4.0 : 0,
                                      )
                                  ),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      child:Text(
                                        'Inventory', 
                                            style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: !_inventory ? kAppBarColor : kSignInButtonColor,
                                                     ),
                                                  ),
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
                                width:56,
                                height: 48,
                                decoration:BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: _price ? kSignInButtonColor : kInputBorderColor,
                                      width:_price ?4.0 : 0.0,
                                      )
                                  ),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    TextButton(
                                      child:Text(
                                        'Pricing',
                                        style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: !_price ? kAppBarColor : kSignInButtonColor,
                                                     ),
                                        ),
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
                                      width:_details ? 4.0 : 0.0,
                                      )
                                  ),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    TextButton(
                                      child:Text(
                                        'Details',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: !_details ? kAppBarColor : kSignInButtonColor,
                                            ),
                                        ),
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
                        ),
                        if(_details)
                        Container(           
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                  Container(
                                    width: 335,
                                    height: 180,
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:24,bottom:4.0),
                                          child: Text('Type',style: kMediumTextStyle,),
                                        ),
                                        Text('-',style: kMediumTextStyle,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:16.0,bottom: 4.0),
                                          child: Text('Description',style: kMediumTextStyle,),
                                        ),
                                        Text('-',style: kMediumTextStyle,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:16.0,bottom: 4.0),
                                          child: Text('Tags',style: kMediumTextStyle,),
                                        ),
                                        Text('-',style: kMediumTextStyle,),
                                        ],
                                      ) ,
                                    ),
                                  Container(
                                    width: 310,
                                    //height: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:12.0,right: 12.0,bottom:12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Supplier',style: kMediumTextStyle,),
                                              Text('Supplier Price',style: kMediumTextStyle,),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
                                            child: Divider(
                                              thickness: 2.0,
                                              color: kInputBorderColor
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom:4.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  '-',style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                      )
                                                    ),
                                                Text(
                                                  '\u20B9 0.00',style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    )
                                                  ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '-',style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  )
                                                )                                         
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ]
                              )
                            ],
                          ),
                        ),
                        if(_inventory || _price)
                        Container(
                              decoration:BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: kInputBorderColor,
                                width: 2.0,
                                )
                            ),
                          ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:16.0,bottom:16.0),
                                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Outlet',style: kMediumTextStyle,),
                          Expanded(child: Text('')),
                          if(_inventory)
                          Text('Current Inventory',style: kMediumTextStyle,),
                          if(_price)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Supply Price',style: kMediumTextStyle,),
                            ],
                          ),
                          if(_price)
                          Container(
                            width: 108,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Retail Price',style: kMediumTextStyle,),
                            ],
                          ))
                            ],
                                ),
                              ),
                            ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top:16.0,bottom:16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if(!_details)
                                Text(
                                  'Main Outlet',
                                  style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                    )
                                  ),
                                  Expanded(child: Text('')),
                                  if(_inventory)
                                Text(
                                  '0',
                                  style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                    )
                                  ),
                                  if(_price)
                                  Text(
                                  '\u20B9 0.00',
                                  style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                    )
                                  ),
                                  if(_price)
                                  Container(
                                    width: 108,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                        '\u20B9 0.00',
                                        style: TextStyle(
                                                          fontFamily: 'Lato',
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w400,
                                          )
                                        ),
                                      ],
                                    ),
                                  )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0,left: 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:21.0,top:13,right: 21.0,bottom: 13.0),
                            child: TextButton.icon(
                              onPressed: (){},
                               icon: Icon(
                                 Icons.edit,
                                 size: 15,
                                 color: kDropDownColor
                                 ),
                                label: Text(
                                  'Edit Product',
                                  style: TextStyle(
                                    color:kDropDownColor,
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700
                                     ),
                                  )
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:21.0,top:13,right: 21.0,bottom: 13.0),
                            child: TextButton.icon(
                              onPressed: (){},
                               icon: Icon(
                                 Icons.file_copy,
                                 size: 15,
                                 color:kDashboardMidBarColor
                                 ),
                                label: Text(
                                  'Duplicate Product',
                                  style: TextStyle(
                                    color:kDashboardMidBarColor,
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700
                                     ),
                                  )
                                ),
                          )
                        ]
                      ),

                    ),
                  )
                  
                ],
              ),
            )
    );
  }
}