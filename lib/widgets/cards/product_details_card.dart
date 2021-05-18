import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    Key key,
   @required this.price,
    @required this.product,
  }) : super(key: key);

  final String price;
  final String product;
  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 438,
                    height:55,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: kDashboardSearchBarFillColor,
                      border: Border.all(
                        color: kAppBarColor,
                        width:1
                        )
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(16.0),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: kDashboardMidBarColor,
                              size: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:16.0,right: 16.0),
                              child: Text(
                                    '1',
                                    style: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato',
                                    color: kHelpTextColor, 
                                  ),
                              ),
                            ),
                               Expanded(
                                  child: Text(
                                    product,
                                    style: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato',
                                    color: kHelpTextColor, 
                                  ),
                                    ),
                                ),
                                
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                         Text(
                                        price,
                                        style: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Lato',
                                        color: kHelpTextColor, 
                                      ),
                                  ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:14,right:12),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          size: 15.0,
                                          color: kDashboardMidBarColor,
                                          ),
                                          onPressed: (){},
                                        ),
                                    )
                                  ],
                                )
                          ],
                        )
                    )
                  );
  }
}