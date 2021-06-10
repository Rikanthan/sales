import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
   @required this.topColor,
    @required this.product,
    @required this.onTapEventHandler,
  }) : super(key: key);

  final Color topColor;
  final String product;
  final Function onTapEventHandler;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTapEventHandler,
      child: Container(
        width:87.2,
        height:90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: kDashboardSearchBarFillColor,    
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            width:87.2,
            height:8.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                topLeft: Radius.circular(4)
                ),
              shape: BoxShape.rectangle,
              color: topColor
              ),
            ),
            Container(
              width: 87.2,
              height: 81.8,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(4),
                color: kDashboardSearchBarFillColor,
                border: Border(
                  left: BorderSide(
                    color: topColor,
                    width: 0.2,
                    ),
                  right: BorderSide(
                    color: topColor,
                    width: 0.1,
                    )
                  ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    product,
                    style: TextStyle(
                      fontFamily:'Lato',
                      color:kHelpTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}