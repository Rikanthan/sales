import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/popup_cards/add_promo_codes.dart';

enum TargetPromotion{
  available, 
  exclusive
}

enum PromotionClicked{
  limit,
  promo
}

class TargetPromotionCard extends StatefulWidget {
  TargetPromotionCard({Key key}) : super(key: key);

  @override
  _TargetPromotionCardState createState() => _TargetPromotionCardState();
}

class _TargetPromotionCardState extends State<TargetPromotionCard> {
  TargetPromotion _targetPromotion = TargetPromotion.available;
  PromotionClicked _promotionClicked = PromotionClicked.limit;
  String customerGroup = 'Please choose a Customer Group';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:56),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                    child: Divider(
                      height: 1,
                      color: kAppBarColor,
                      ),
                  ), 
              SizedBox(height:32),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Target this Promotion',style: k18Black,)
                  ],
                ),
              ),       
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 232,
                          child: Text(
                            'Allow all customers to\nreceive this promotion or\ntarget specific groups.',
                            style: k15BlackNormal,
                            ),
                          ), 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        _targetPromotion = TargetPromotion.available;
                                      });
                                    },
                                    child: Container(
                                      width: 348,
                                      height: 123,
                                      decoration: BoxDecoration(
                                        color: kWhite,
                                         border: Border.all(
                                           color: _targetPromotion == TargetPromotion.available ?  
                                                                kSignInButtonColor : 
                                                                kInputBorderColor,
                                           width: 2,
                                         ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          bottomLeft: Radius.circular(4)
                                        ) 
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                                                  top:12.0 ,
                                                                  bottom:12.0 ,
                                                                  left:20.0,
                                                                  right: 20.0
                                                                  ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text('Available to Everyone',style: k18Black,),
                                            Padding(
                                              padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                                              child: Divider(
                                                height: 1,
                                                color: kAppBarColor,
                                                ),
                                            ),
                                            Text(
                                              'All customers can receive this promotion.'
                                                        ,style: k15BlackNormal,
                                                        ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            _targetPromotion = TargetPromotion.exclusive;
                                          });
                                        },
                                        child: Container(
                                          width: 348,
                                          height: 123,
                                          decoration: BoxDecoration(
                                            color: kWhite,
                                            border: Border.all(
                                              color:  _targetPromotion == TargetPromotion.exclusive ?  
                                                                  kSignInButtonColor : kInputBorderColor,
                                              width: 2,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(4),
                                              bottomRight: Radius.circular(4)
                                            ) 
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                                        top:12.0 ,
                                                                        bottom:12.0 ,
                                                                        left:20.0,
                                                                        right: 20.0
                                                                        ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                    'Exclusive to Some'
                                                    ,style: k18Black,
                                                    ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                                                  child: Divider(
                                                    height: 1,
                                                    color: kAppBarColor,
                                                    ),
                                                ),
                                                Text(
                                                  'Only customers within a customer group, or'
                                                      ,style: k15BlackNormal,
                                                      ),
                                                Text(
                                                    'with a promo code,can redeem this promotion.'
                                                    ,style: k15BlackNormal,
                                                    ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                ],
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              if(_targetPromotion == TargetPromotion.exclusive)
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Radio(
                                      activeColor: MaterialStateColor
                                                        .resolveWith(
                                                                  (states) =>  kSignInButtonColor
                                                                  ),
                                    hoverColor: MaterialStateColor
                                                        .resolveWith(
                                                                  (states) =>  kSignInButtonColor
                                                                  ),
                                    overlayColor: MaterialStateColor
                                                        .resolveWith(
                                                                  (states) => kSignInButtonColor 
                                                                  ),
                                    fillColor: MaterialStateColor
                                                        .resolveWith(
                                                                  (states) => _promotionClicked == PromotionClicked.limit 
                                                                      ? kSignInButtonColor : kAppBarColor ),
                                    value: PromotionClicked.limit,
                                    groupValue: _promotionClicked,
                                    onChanged: (PromotionClicked value)
                                    {
                                      setState(() {
                                        _promotionClicked = value;
                                      });
                                    }
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:4.0),
                                    child: Text('Limit to a Customer Group',style: k15BlackDark,),
                                  ),
                                ],
                              ),
                              if(_targetPromotion == TargetPromotion.exclusive)
                               Padding(
                                  padding: const EdgeInsets.only(left:38.0, top: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [  
                                      Text(
                                        'Only customers from the chosen group will receive this promotion.'
                                            ,style: k15BlackNormal
                                            ),
                                    ],
                                  ),
                                ),
                                if(_promotionClicked == PromotionClicked.limit 
                                                                && 
                                                                (_targetPromotion == TargetPromotion.exclusive))
                                  Padding(
                                    padding: const EdgeInsets.only(left:38.0,top: 20.0,bottom: 20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Targeted Customer Group', style: k15BlackDark,),
                                        SizedBox(height: 5,),
                                            DropDownInput(
                                                      isDarkMode: false,
                                                      width: 400,
                                                      height: 46,
                                                      paddingAll: 12,
                                                      onPressed: (String value){
                                                        setState(() {
                                                          customerGroup = value;
                                                        });
                                                      },
                                                      dropdownValue: customerGroup,
                                                      dropdownList: [
                                                                'Please choose a Customer Group',
                                                                'Select all Customer Groups'
                                                                ],
                                                    ),
                                              ],
                                            ),
                                          ),
                                  if(_targetPromotion == TargetPromotion.exclusive)
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Radio(
                                          activeColor: MaterialStateColor
                                                                  .resolveWith(
                                                                          (states) =>  kSignInButtonColor
                                                                          ),
                                        hoverColor: MaterialStateColor
                                                                  .resolveWith(
                                                                            (states) =>  kSignInButtonColor
                                                                            ),
                                        overlayColor: MaterialStateColor
                                                                  .resolveWith(
                                                                            (states) => kSignInButtonColor 
                                                                            ),
                                        fillColor: MaterialStateColor
                                                                  .resolveWith(
                                                                            (states) => 
                                                                              _promotionClicked == PromotionClicked.promo ? 
                                                                              kSignInButtonColor : kAppBarColor 
                                                                              ),
                                        value: PromotionClicked.promo,
                                        groupValue: _promotionClicked,
                                        onChanged: (PromotionClicked value)
                                        {
                                          setState(() {
                                            _promotionClicked = value;
                                          });
                                        }
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:4.0),
                                        child: Text('Apply a Promo Code',style: k15BlackDark,),
                                      ),
                                    ],
                                  ),
                                  if(_targetPromotion == TargetPromotion.exclusive)
                                  Padding(
                                    padding: const EdgeInsets.only(left:38.0, top: 8,bottom: 12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [  
                                        Text(
                                          'Only customers with a promo code can redeem this promotion.'
                                              ,style: k15BlackNormal
                                              ),
                                      ],
                                    ),
                                  ),
                                   if(_promotionClicked == PromotionClicked.promo && 
                                                (_targetPromotion == TargetPromotion.exclusive))
                                    Padding(
                                      padding: const EdgeInsets.only(top:12.0,left: 40),
                                      child: Container(
                                        width: 616,
                                        color: kWhite,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/promo-code-create-v1.png',
                                                          width: 173.33,
                                                          height:83.41,
                                                          ), 
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                        Text('Create promo codes one-',style: k15Blue2,),
                                                        Text('by-one',style: k15Blue2,)
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top:20.0),
                                                      child: Icon(
                                                        Icons.arrow_forward,
                                                        size:15,
                                                        color: kDashboardIconColor,
                                                        ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/promo-code-share-v1.png',
                                                          width: 173.33,
                                                          height:83.41,
                                                          ), 
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                        Text('Share them via emails, on',style: k15Blue2,),
                                                        Text('social media, as printed',style: k15Blue2,),
                                                        Text('coupons, and more.',style: k15Blue2,)
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top:20.0),
                                                      child: Icon(
                                                        Icons.arrow_forward,
                                                        size:15,
                                                        color: kDashboardIconColor,
                                                        ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/promo-code-track-v1.png',
                                                          width: 173.33,
                                                          height:83.41,
                                                          ), 
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                        Text('As customers redeem',style: k15Blue2,),
                                                        Text('your offer,track which',style: k15Blue2,),
                                                        Text('channel was',style: k15Blue2,),
                                                        Text('most successful.',style: k15Blue2,),
                                                      ],
                                                    )
                                                  ],
                                              ),
                                              SizedBox(
                                                height: 32,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  CustomButton(
                                                      buttonText: 'Add Promo Codes', 
                                                      onPress: (){
                                                        showDialog(
                                                          context: context, 
                                                          builder: (_) => AddPromoCodePopup()
                                                          );
                                                      },
                                                      buttonColor: kDashboardMidBarColor, 
                                                      topPadding: 20, 
                                                      leftPadding: 30
                                                    ),
                                                ],
                                              ),
                                              
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                            ],
                    ),                       
                 ] 
              ),                   
            ],
          )
        ),
      ],
    );
  }
}