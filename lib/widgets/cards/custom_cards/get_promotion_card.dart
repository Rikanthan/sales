import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';

enum DiscountPromotion
{
  percentage,
  rs
}

enum ProductPromotion
{
  all,
  specific
}

class GetPromotionCard extends StatefulWidget {
  const GetPromotionCard({ Key key }) : super(key: key);

  @override
  _GetPromotionCardState createState() => _GetPromotionCardState();
}

class _GetPromotionCardState extends State<GetPromotionCard> {
  DiscountPromotion _discountPromotion = DiscountPromotion.percentage;
  ProductPromotion _productPromotion = ProductPromotion.all;
  String filter = 'Include';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 696,
      color: Colors.white,
      //height: 241,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:95),
                Container(
                  width: 310,
                  child: Text('Discount',style: kMediumTextStyle ,),
                  ),
                  Text('Product',style: kMediumTextStyle ,)
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width:95,
                  child: Text(
                    'Get',
                    style: k24Black ,
                    ),
                ),
                GestureDetector(
                  onTap:()
                  {
                    setState(() {
                      _discountPromotion = DiscountPromotion.percentage;
                    });
                  },
                  child: Container(
                    width: 56,
                    height: 44,
                     decoration: BoxDecoration(
                              color: Colors.white,
                               border: Border.all(
                                 color:   _discountPromotion == DiscountPromotion.percentage ? kSignInButtonColor : kInputBorderColor ,
                                 width: 2,
                               ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4)
                              ) 
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("%",style: kMediumTextNormalStyle,),
                            ],
                          ),
                  ),
                ),
                GestureDetector(
                  onTap:()
                  {
                    setState(() {
                      _discountPromotion = DiscountPromotion.rs;
                    });
                  },
                  child: Container(
                    width: 56,
                    height: 44,
                     decoration: BoxDecoration(
                              color: Colors.white,
                               border: Border.all(
                                 color: _discountPromotion == DiscountPromotion.rs ?  kSignInButtonColor : kInputBorderColor,
                                 width: 2,
                               ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                bottomRight: Radius.circular(4)
                              ) 
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rs",style: kMediumTextNormalStyle,),
                            ],
                          ),
                  ),
                ),
                SizedBox(
                  width:12
                ),
                TextInput(
                  darkMode: false,
                  hideText: false,
                  hintText: _discountPromotion == DiscountPromotion.rs ? 'Rs0.00' : '0 %',
                  paddingTop: 0,
                  height: 46,
                  width: 178,
                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                    onChange: (val) { 
                    },
                  ),
                  SizedBox(
                  width:12
                    ),
                 GestureDetector(
                   onTap:(){
                     setState(() {
                       _productPromotion = ProductPromotion.all;
                     });
                   },
                   child: Container(
                    width: 84,
                    height: 44,
                     decoration: BoxDecoration(
                              color: Colors.white,
                               border: Border.all(
                                 color:  _productPromotion == ProductPromotion.all ? kSignInButtonColor : kInputBorderColor,
                                 width: 2,
                               ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4)
                              ) 
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("All",style: kMediumTextNormalStyle,),
                            ],
                          ),
                    ),
                 ),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      _productPromotion = ProductPromotion.specific;
                    });
                  },
                  child: Container(
                    width: 84,
                    height: 44,
                     decoration: BoxDecoration(
                              color: Colors.white,
                               border: Border.all(
                                 color:   _productPromotion == ProductPromotion.specific ? kSignInButtonColor : kInputBorderColor,
                                 width: 2,
                               ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                bottomRight: Radius.circular(4)
                              ) 
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Specific",style: kMediumTextNormalStyle,),
                            ],
                          ),
                  ),
                ),
              ],
            ),
            if(_productPromotion == ProductPromotion.specific)
            Padding(
              padding: const EdgeInsets.only(top:25.0,bottom: 20.0, left: 95.0),
              child: Divider(
                thickness: 1,
              ),
            ),
            if(_productPromotion == ProductPromotion.specific)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 95, bottom: 5),
                  child: Text('Filter products by tag,type,brand,supplier or SKU',style: kMediumTextStyle,),
                ),
              ],
            ),
            if(_productPromotion == ProductPromotion.specific)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 95,
                ),
                DropDownInput(
                  isDarkMode: false,
                  width: 130,
                  height: 46,
                  paddingAll: 12,
                  onPressed: (String value){
                    setState(() {
                      filter = value;
                    });
                  },
                  dropdownValue: filter,
                  dropdownList: ['Include','Exclude'],
                ),
                 TextInput(
                  darkMode: false,
                  hideText: false,
                  hintText:'Add a filter...',
                  paddingTop: 0,
                  height: 46,
                  width: 404,
                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                    onChange: (val) { 
                    },
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}