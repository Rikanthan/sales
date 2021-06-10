import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/buttons/popup_button.dart';

class ProductsItem2Popup extends StatelessWidget {
  const ProductsItem2Popup({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:690,
      height: 262,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kDrawerBackgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 600,
            height: 262,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Audhild Tee',
                    style: TextStyle(
                      color: kHelpTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato' 
                      )
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:4.0, bottom: 20.0),
                    child: Text('Select Size > Select Colour',style: kMediumTextDarkNormalStyle),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductButton(
                        text: '8',
                        width: 164.86,
                        onPressed: (){},
                        isPressed: false,
                        ),
                      ProductButton(
                        text: '10',
                        width: 173.56,
                        onPressed: (){},
                        isPressed: false,
                        ),
                      ProductButton(
                        text: '12',
                        width: 173.56,
                        onPressed: (){},
                        isPressed: false,
                        )
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