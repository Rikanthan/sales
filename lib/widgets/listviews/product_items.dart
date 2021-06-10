import 'package:flutter/material.dart';
import 'package:sales/widgets/cards/popup_cards/add_discount.dart';
import 'package:sales/widgets/cards/product_details_card.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';
class ProductItemsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                           height: 400,
                           child:ListView(
                             shrinkWrap:true,
                             scrollDirection: Axis.vertical,
                             children: [
                          ProductDetailsCard(price: '269.90', product: 'Nala Dress '),
                         ProductDetailsCard(price: '69.90', product: 'My Girl Sunglasses'),
                         ProductDetailsCard(price: '69.90', product: 'My Girl Sunglasses'),
                          Container(
                           width: 438,
                           decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: kDashboardSearchBarFillColor,
                              border: Border.all(
                                color: kAppBarColor,
                                width:2
                                )
                            ),
                            child:Padding(
                              padding: EdgeInsets.only(left:16.0,right: 16.0,top:20.0,bottom: 20.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'ADD', style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        color: kHelpTextColor
                                        ),
                                      ),
                                      Text(
                                        'Promo Code', style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        color: kDisableTextColor,
                                        fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                                    child: Divider(
                                      color: kAppBarColor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Note', style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                            color: kHelpTextColor,
                                            fontWeight: FontWeight.bold
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:5.0),
                                        child: Text(
                                          'Customers will be able to see this note on their receipt',
                                             style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 14,
                                              color: kDashboardMidBarColor,
                                              fontWeight: FontWeight.bold
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:[
                                      Padding(
                                        padding: const EdgeInsets.only(top:5.0),
                                        child: DashboardSearchBar(
                                          darkMode: true,
                                          iconData: null,
                                          width: 356.2,
                                          iconText: 'Enter a note about this sale',
                                          padding: 2,
                                          ),
                                      ),
                                      IconButton(
                                        icon:  Icon(
                                          Icons.delete,
                                          size: 15.0,
                                          color: kDashboardMidBarColor,
                                          ),
                                          onPressed: (){},
                                        ),
                                    ]
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                                    child: Divider(
                                      color: kAppBarColor,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Subtotal', style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                            color: kHelpTextColor,
                                            fontWeight: FontWeight.bold
                                            ),
                                      ),
                                      Padding(
                                        padding:EdgeInsets.only(right:42.0),
                                        child: Text(
                                          'Rs409.70', style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: kHelpTextColor,
                                              fontWeight: FontWeight.bold
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0),
                                    child: Divider(
                                      color: kAppBarColor,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                                      showDialog(
                                              context: context,
                                              builder: (BuildContext context) => AddDiscount(),
                                            );
                                        },
                                        child: Text(
                                          'Discount', style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: kDropDownColor
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(''),
                                        ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                         Text(
                                           'Rs0.00', style: TextStyle(
                                               fontFamily: 'Lato',
                                               fontSize: 15,
                                               color: kHelpTextColor,
                                               fontWeight: FontWeight.bold
                                               ),
                                         ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            icon:  Icon(
                                              Icons.delete,
                                              size: 15.0,
                                              color: kDashboardMidBarColor,
                                              ),
                                              onPressed: (){},
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Divider(
                                      color: kAppBarColor,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tax No Tax', style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                            color: kHelpTextColor,
                                            fontWeight: FontWeight.bold
                                            ),
                                      ),
                                      Padding(
                                        padding:EdgeInsets.only(right:42.0),
                                        child: Text(
                                          'Rs0.00', style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              color: kHelpTextColor,
                                              fontWeight: FontWeight.bold
                                              ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          )
                        ],
                      )
                    );
  }
}