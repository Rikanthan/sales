import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/bars/tab_bar.dart';
import 'package:sales/widgets/buttons/toggle_button.dart';
import 'package:sales/widgets/cards/custom_cards/image_varients.dart';
import 'package:sales/widgets/cards/custom_cards/inventory_varient.dart';
import 'package:sales/widgets/cards/custom_cards/price_varient.dart';
import 'package:sales/widgets/cards/custom_cards/tax_varient.dart';
import 'package:sales/widgets/divider/custom_divider.dart';

enum VarientType{
  inventory,
  tax,
  price,
  image
}

class VariantExpansion extends StatefulWidget {
   VariantExpansion({
  @required this.deleteButtonClick,
  @required this.text
   });

  final String text;
  final Function deleteButtonClick;
  @override
  _VariantExpansionState createState() => _VariantExpansionState();
}

class _VariantExpansionState extends State<VariantExpansion> {
  bool _isExpansion = false;
  bool _isToggle = true;
  VarientType _varientType = VarientType.inventory;
  String sku = 'Custom';
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:280.0,right: 48.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(color: _isExpansion? kSignInButtonColor : Colors.transparent,width: 3)
                          ),
                        color: _isExpansion ? Colors.white : Colors.transparent
                      ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 71,
                      width:208.8,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                _isExpansion =!_isExpansion;
                              });
                            },
                            child: Icon(
                              _isExpansion ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
                              size: 13,
                              color: kAppBarColor,
                            ),
                          ),
                           SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: kInputBorderColor
                        ),
                    ),
                    SizedBox(
                     width: 8, 
                    ),
                    Text( widget.text,style: kMediumTextNormalStyle,),
                        ],
                      ),
                    ),
                   TextInput(
                    darkMode: false,
                    hideText: false,
                    hintText:'10006',
                    paddingTop: 0,
                    height: 46,
                    width: 108,
                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                      onChange: (val) { 
                      },
                    ),
                    SizedBox(
                     width: 8, 
                    ),
                    TextInput(
                    darkMode: false,
                    hideText: false,
                    hintText:'En...',
                    paddingTop: 0,
                    height: 46,
                    width: 60.27,
                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                      onChange: (val) { 
                      },
                    ),
                    SizedBox(
                     width: 8, 
                    ),
                    TextInput(
                    darkMode: false,
                    hideText: false,
                    hintText:'Rs 18.00',
                    paddingTop: 0,
                    height: 46,
                    width: 83.06,
                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                      onChange: (val) { 
                      },
                    ),
                    SizedBox(
                     width: 8, 
                    ),
                    TextInput(
                    darkMode: false,
                    hideText: false,
                    hintText:'Rs 49.90',
                    paddingTop: 0,
                    height: 46,
                    width: 83.08,
                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                      onChange: (val) { 
                      },
                    ),
                    SizedBox(
                     width: 8, 
                    ),
                    ToggleButton(
                      isSwitch: _isToggle,
                      height: 58, 
                      width: 71, 
                      onToggle: (value)
                      {
                          setState(() {
                            _isToggle = !_isToggle;
                          });
                      }
                    ),
                    SizedBox(
                     width: 6, 
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        size:15,
                        color: kDashboardMidBarColor,
                        ),
                      onPressed: widget.deleteButtonClick,
                    )
                  ],
                ),
                      Divider(
                  thickness: 1,
                  color: kLightGreen,
                ),
              ],
            ),
          ),   
          if(_isExpansion)
          Container(
            width: 696,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: kSignInButtonColor,width: 3)
                ),
              color: Colors.white
            ),
            child: Padding(
              padding:  EdgeInsets.only(
                top:16.0,
                bottom: _varientType == VarientType.image ? 0.0 :16.0,
                left: 40.0,
                right: 40.0
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TabBarItem(
                        width: 86, 
                        height: 48, 
                        isClicked: _varientType == VarientType.inventory ? true : false, 
                        onClicked: (){
                          setState(() {
                            _varientType = VarientType.inventory;
                          });
                        }, 
                        text: 'Inventory', 
                        darkMode: false,
                        ), 
                        TabBarItem(
                        width: 64.8, 
                        height: 48, 
                        isClicked: _varientType == VarientType.tax ? true : false, 
                        onClicked: (){
                          setState(() {
                            _varientType = VarientType.tax;
                          });
                        }, 
                        text: 'Tax', 
                        darkMode: false,
                        ),
                        TabBarItem(
                        width: 58, 
                        height: 48, 
                        isClicked: _varientType == VarientType.price ? true : false, 
                        onClicked: (){
                          setState(() {
                            _varientType = VarientType.price;
                          });
                        }, 
                        text: 'Price', 
                        darkMode: false,
                        ),
                        TabBarItem(
                        width: 58, 
                        height: 48, 
                        isClicked: _varientType == VarientType.image ? true : false, 
                        onClicked: (){
                          setState(() {
                            _varientType = VarientType.image;
                          });
                        }, 
                        text: 'Image', 
                        darkMode: false,
                        ),
                    ],
                  ),
                  if(_varientType == VarientType.inventory)
                  InventoryVarient(text: widget.text),
                  if(_varientType == VarientType.tax)
                  TaxVarient(),
                  if(_varientType == VarientType.price)
                  PriceVarient(),
                  if(_varientType == VarientType.image)
                  ImageVarient(text: widget.text,)
                ],
              ),
            ),
          ),
          if(_varientType == VarientType.image)
          ImageVarientButton(text: widget.text,)
        ],
      ),
    );
  }
}