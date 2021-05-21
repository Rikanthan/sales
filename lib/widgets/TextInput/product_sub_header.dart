import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';

class ProductSubHeader extends StatelessWidget {
  const ProductSubHeader({
    Key key,
   @required this.text,
   @required this.width,
   @required this.expandedWidth,
   @required this.isOtherClicked,
   @required this.isThisAscending,
   @required this.isThisNumber,
   @required this.onPress,
   @required this.isThisProduct,
   @required this.isSelected
  }) : super(key: key);

  final String text;
  final double width;
  final double expandedWidth;
  final bool isOtherClicked;
  final bool isThisAscending;
  final bool isThisNumber;
  final Function onPress;
  final bool isSelected;
  final bool isThisProduct;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left:8.0,right:8.0),
      child: Container(
                  width: isThisProduct && isSelected ? 235 :  isOtherClicked ? width : expandedWidth,
                  child:TextButton(
                    onPressed: onPress,
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                            Text(
                          isThisProduct && isSelected ? 'Choose an Action(1 Selected) \u2228 ' : !isOtherClicked ? text+'\u2193':text,
                          style:TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
                          color: isThisProduct && isSelected ? kSignInButtonColor : kSignInTextColor,
                          fontWeight: FontWeight.w700
                          )
                        ),                
                          if(!isOtherClicked)
                          Text(
                            isThisAscending && !isThisNumber?
                              'A\nZ' :
                            !isThisAscending && !isThisNumber?
                               'Z\nA' :
                            isThisAscending && isThisNumber?
                              '1\n9' :
                            !isThisAscending && isThisNumber?
                               '9\n1' :
                               ''  ,
                                    style:TextStyle(
                                  color: kSignInTextColor,
                                  fontFamily: 'Lato',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                      ],
                    )  
                  )
                ),
    );
  }
}
