import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/chec_box_text.dart';
import 'package:sales/widgets/TextInput/check_box_container.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';

enum ProductClicked
{
  standardProduct,
  variants,
  compositeProduct
}

enum SkuType
{
automatic,
custom
}

class AddProductsPopup extends StatefulWidget {
  const AddProductsPopup({ Key key }) : super(key: key);

  @override
  _AddProductsPopupState createState() => _AddProductsPopupState();
}

class _AddProductsPopupState extends State<AddProductsPopup> {
  ProductClicked _productClicked = ProductClicked.standardProduct;
  String sku = 'Auto-generated';
  String variants = 'Choose an attribute...';
  bool _isSelected = true;
  SkuType _skuType = SkuType.automatic;
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:940,
      height: 670,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 872,
            height:670,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Add a new product',
                    style: TextStyle(
                      color: kAppBarColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato' 
                      )
                    ),
                    SizedBox(height: 32,),
                  Container(
                    color: Colors.white,
                    height: 465,
                    width: 807.6,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Add basic information to your products so you can sell it-in-store as soon as possible. You can add more catalog information\nlater as needed.'
                          ,style: kMediumTextNormalStyle,),
                          SizedBox(
                            height: 24,
                              ),
                            Text(
                              'Product Name',
                                style:kMediumTextStyle
                              ),
                          TextInput(
                            darkMode: false,
                            validate: (val) => val.length == 0 ? 'Enter the city' : null,
                          onChange: (val) {
                                    },
                              paddingTop: 4, 
                              hideText: false, 
                              height: 46,
                              width:266.5,
                              hintText: '',
                              ),                           
                            SizedBox(
                              height: 20,
                            ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _productClicked = ProductClicked.standardProduct;
                                  });
                                },
                                child: Container(
                                  width: 267.19,
                                  height: 212,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                       color: _productClicked == ProductClicked.standardProduct ? kSignInButtonColor : kInputBorderColor,
                                       width: 2
                                      ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      )
                                    ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:12.0,bottom: 12.0,left: 20.0,right: 20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Standard Product',style: k18Black,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0,bottom: 35.0),
                                          child: Divider(
                                            thickness: 1,
                                          ),
                                        ),
                                        Text('This product is a single SKU with',style: kMediumTextNormalStyle,),
                                        Text('its own inventory',style: kMediumTextNormalStyle,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _productClicked = ProductClicked.variants;
                                  });
                                },
                                child: Container(
                                  width: 270.19,
                                  height: 212,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                       color: _productClicked == ProductClicked.variants ? kSignInButtonColor : kInputBorderColor,
                                       width: 2
                                      ),
                                    ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:12.0,bottom: 12.0,left: 20.0,right: 20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Product with Variants',style: k18Black,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0,bottom: 28.0),
                                          child: Divider(
                                            thickness: 1,
                                          ),
                                        ),
                                        Text('This is a group of similar products',style: kMediumTextNormalStyle,),
                                        Text('which have different attributes,',style: kMediumTextNormalStyle,),
                                        Text('like size or color. Each variant is a',style: kMediumTextNormalStyle,),
                                        Text('unique SKU with its own',style: kMediumTextNormalStyle,),
                                        Text('inventory',style: kMediumTextNormalStyle,),
                                        SizedBox(
                                          height: 7,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _productClicked = ProductClicked.compositeProduct;
                                  });
                                },
                                child: Container(
                                  width: 270.19,
                                  height: 212,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                       color: _productClicked == ProductClicked.compositeProduct ? kSignInButtonColor : kInputBorderColor,
                                       width: 2
                                      ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                      )
                                    ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:12.0,bottom: 12.0,left: 17.0,right: 17.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Composite Product',style: k18Black,),
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0,bottom: 28.0),
                                          child: Divider(
                                            thickness: 1,
                                          ),
                                        ),
                                        Text('This product is made up of',style: kMediumTextNormalStyle,),
                                        Text('specified quantities of one or more',style: kMediumTextNormalStyle,),
                                        Text('products.A composite is a single',style: kMediumTextNormalStyle,),
                                        Text('SKU but uses the inventory of the',style: kMediumTextNormalStyle,),
                                        Text('products within it.',style: kMediumTextNormalStyle,),
                                        SizedBox(
                                          height: 7,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          if(_productClicked == ProductClicked.compositeProduct)
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: _skuType== SkuType.custom ? CrossAxisAlignment.center
                                                  : CrossAxisAlignment.start,
                             children: [
                               Radio(
                                value: SkuType.automatic,
                                groupValue: _skuType,
                                onChanged: (SkuType value)
                                {
                                  setState(() {
                                    _skuType = value;
                                  });
                                }
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Automatically generate a SKU\n',style:kMediumTextNormalStyle),
                                  if(_skuType== SkuType.automatic)
                                  Text('A SKU will automatically be generated once this product has been saved.',style:kMediumTextNormalStyle),
                                ],
                              )
                             ],
                           ),
                           if(_productClicked == ProductClicked.compositeProduct)
                          Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Radio(
                                value: SkuType.custom,
                                groupValue: _skuType,
                                onChanged: (SkuType value)
                                {
                                  setState(() {
                                    _skuType = value;
                                  });
                                }
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Enter a custom SKU',style:kMediumTextNormalStyle),
                                  if(_skuType == SkuType.custom)
                                    TextInput(
                                    darkMode: false,
                                    hideText: false,
                                    hintText:'Enter values for this attribute',
                                    paddingTop: 10,
                                    height: 46,
                                    width: 400,
                                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                                      onChange: (val) { 
                                      },
                                    ),
                                    if(_skuType == SkuType.custom)
                                  Text('Only use lower case letters and numbers, no symbols or spaces',style:kMediumTextNormalStyle),
                                ],
                              )
                             ],
                           ),


                          if(_productClicked == ProductClicked.variants)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Variant Attribute ',style: kMediumTextStyle,),
                                      Text('(e.g.Size)',style: k14Black)
                                    ],
                                  ),
                                   DropDownInput(
                                      isDarkMode: false,
                                      width: 269,
                                      height: 46,
                                      paddingAll: 10,
                                      onPressed: (String value){
                                        setState(() {
                                          variants = value;
                                        });
                                      },
                                      dropdownValue: variants,
                                      dropdownList: ['Choose an attribute...', 'Size' ,'Colour','Material'],
                                    ),  
                                  Padding(
                                      padding: const EdgeInsets.only(top:56.0,left: 20,bottom: 24),
                                      child: TextButton.icon(
                                        onPressed: (){},
                                        icon: Icon(
                                          Icons.add,
                                          size: 15,
                                          color: kSignInButtonColor,
                                          ),
                                          label: Text(
                                              'Add Another Attribute',
                                              style: k15Green,
                                            ) 
                                          ),
                                        ),
                                  Text('0 variants will be added.',style: k18Black,)
                                ],
                              ),
                              
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Value ',style: kMediumTextStyle,),
                                      Text('(e.g.Small, Medium, Large)',style: k14Black)
                                    ],
                                  ),
                                    TextInput(
                                    darkMode: false,
                                    hideText: false,
                                    hintText:'Enter values for this attribute',
                                    paddingTop: 0,
                                    height: 46,
                                    width: 527,
                                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                                      onChange: (val) { 
                                      },
                                    ),
                                ],
                              ),
                            ],
                          ),
                          if(_productClicked == ProductClicked.variants)
                          Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [    
                                   Checkbox(
                                    activeColor: MaterialStateColor.resolveWith((states) => _isSelected ? Colors.white : kAppBarColor),
                                    hoverColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kAppBarColor),
                                    overlayColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kAppBarColor),
                                    fillColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kDashboardSearchBarFillColor),
                                    value: _isSelected,
                                    onChanged: (newValue){
                                      setState(() {
                                        _isSelected = newValue;
                                      });
                                    },
                                    autofocus: false,
                                    visualDensity: VisualDensity.standard,
                                                ),
                                  UserHeader(
                                    text: 'Variant',
                                    padding: 0,
                                    width: 100.75,
                                    alignment: MainAxisAlignment.start,
                                    height: 56
                                  ),
                                  UserHeader(
                                    text: 'SKU Code Type',
                                    padding: 0,
                                    width: 205.92,
                                    alignment: MainAxisAlignment.start,
                                    height: 56
                                  ),
                                  UserHeader(
                                    text: 'SKU Code',
                                    padding: 0,
                                    width: 145.14,
                                    alignment: MainAxisAlignment.start,
                                    height: 56
                                  ),
                                  UserHeader(
                                    text: 'Supply Price',
                                    padding: 8,
                                    width: 158.61,
                                    alignment: MainAxisAlignment.end,
                                    height: 56
                                  ),
                                  UserHeader(
                                    text: 'Retail Price\nExcluding Tax',
                                    padding: 8,
                                    width: 157.17,
                                    alignment: MainAxisAlignment.end,
                                    height: 56
                                  ),
                                ],
                              ),
                              if(_productClicked == ProductClicked.variants)
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top:40.0,bottom: 40.0),
                                   child: Text('Choose an attribute, like colour, and start entering values, like red or blue, to add variants'
                                   ,style: kMediumTextNormalStyle,),
                                 )
                               ],
                             ), 
                          if(_productClicked == ProductClicked.standardProduct)
                          Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [          
                                  UserHeader(
                                    text: 'Product',
                                    padding: 0,
                                    width: 191.59,
                                    alignment: MainAxisAlignment.start,
                                    height: 56
                                  ),
                                  UserHeader(
                                    text: 'SKU Code Type',
                                    padding: 0,
                                    width: 176,
                                    alignment: MainAxisAlignment.start,
                                    height: 56
                                  ),
                                  UserHeader(
                                    text: 'SKU Code',
                                    padding: 0,
                                    width: 168,
                                    alignment: MainAxisAlignment.start,
                                    height: 56
                                  ),
                                  UserHeader(
                                    text: 'Supply Price',
                                    padding: 8,
                                    width: 136,
                                    alignment: MainAxisAlignment.end,
                                    height: 56
                                  ),
                                  UserHeader(
                                    text: 'Retail Price\nExcluding Tax',
                                    padding: 8,
                                    width: 136,
                                    alignment: MainAxisAlignment.end,
                                    height: 56
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              if(_productClicked == ProductClicked.standardProduct)
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                   Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: kInputBorderColor
                                      ),
                                  ),
                                  Container(
                                    width: 70,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                         '10018',
                                         style: kMediumTextNormalStyle,
                                         ),
                                        )
                                      ),
                                  DropDownInput(
                                      isDarkMode: false,
                                      width: 160,
                                      height: 46,
                                      paddingAll: 10,
                                      onPressed: (String value){
                                        setState(() {
                                          sku = value;
                                        });
                                      },
                                      dropdownValue: sku,
                                      dropdownList: ["Auto-generated",'Custom','EAN','ISBN','ITF','JAN','UPC'],
                                    ),
                                  TextInput(
                                  darkMode: false,
                                  hideText: false,
                                  hintText:'10018',
                                  paddingTop: 5,
                                  height: 46,
                                  width: 140,
                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                    onChange: (val) { 
                                    },
                                  ),
                                  TextInput(
                                  darkMode: false,
                                  hideText: false,
                                  hintText:'Rs 0.00',
                                  paddingTop: 5,
                                  height: 46,
                                  width: 128,
                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                    onChange: (val) { 
                                    },
                                  ),
                                  TextInput(
                                  darkMode: false,
                                  hideText: false,
                                  hintText:'Rs 0.00',
                                  paddingTop: 5,
                                  height: 46,
                                  width: 128,
                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                    onChange: (val) { 
                                    },
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                                   
                        ],
                      ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment:_productClicked != ProductClicked.compositeProduct ?
                     MainAxisAlignment.spaceBetween :
                     MainAxisAlignment.end,
                    children: [
                      if(_productClicked != ProductClicked.compositeProduct)
                      Text(
                        '1 product will be added',
                        style: kMediumTextNormalStyle,
                        ),
                      CustomButton(
                        buttonText: _productClicked == ProductClicked.compositeProduct ? 'Next':'Add Product',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        ),
                    ],
                  )         
                ],
              ),
            ),
          ),
          // EscButton(
          //   isDarkMode: false,
          //   positionedRight: 0.0,
          //   positionedTop: 0.0, 
          //   width: 60
          //   )
        ],
      ),
    ),
  );
  }
}