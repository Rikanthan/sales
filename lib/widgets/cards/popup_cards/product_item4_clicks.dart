import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/buttons/popup_button.dart';

class ProductsItem4Popup extends StatelessWidget {
  const ProductsItem4Popup({ Key key }) : super(key: key);

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
                    'LaBoheme Mesh Strap Watch',
                    style: TextStyle(
                      color: kHelpTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato' 
                      )
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:4.0, bottom: 20.0),
                    child: Text('Select Material',style: kMediumTextDarkNormalStyle),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductButton(
                        text: 'Rose Gold',
                        width: 192.52,
                        onPressed: (){},
                        isPressed: false,
                        ),
                      ProductButton(
                        text: 'Gold',
                        width: 156.7,
                        onPressed: (){},
                        isPressed: false,
                        ),
                      ProductButton(
                        text: 'Silver',
                        width: 162.78,
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