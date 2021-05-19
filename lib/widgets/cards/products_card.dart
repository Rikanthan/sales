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
    return Container(
      width:87.2,
      height:90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: kDashboardSearchBarFillColor
      ),
      child: Column(
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
          Padding(
            padding: EdgeInsets.only(top:30,left:4,right:4),
            child: Text(
              product,
              style: TextStyle(
                fontFamily:'Lato',
                color:kHelpTextColor,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}