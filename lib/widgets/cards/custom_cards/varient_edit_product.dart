import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/transparent_text_input.dart';
import 'package:sales/widgets/TextInput/user_table_header.dart';
import 'package:sales/widgets/buttons/delete_icon_button.dart';
import 'package:sales/widgets/cards/popup_cards/edit_value_names.dart';
import 'package:sales/widgets/listviews/variants_expansion_card.dart';

class VariantsEditProduct extends StatelessWidget {
  const VariantsEditProduct({ Key key ,
   @required this.color,
   @required this.colorClicked,
   @required this.size,
   @required this.sizeOnClicked
   }) : super(key: key);
  final String size;
  final String color;
  final Function sizeOnClicked;
  final Function colorClicked;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Variants',style: k18Black,)
                  ],
                ),
              ),
        Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose up to three variable\nattributes for this product to\ncreate and manage SKUs and\ntheir inventory levels.',
                      style: kMediumTextNormalStyle,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Attribute (e.g. Colour)',style: k15BlackDark,),
                        SizedBox(height: 5,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.drag_indicator,
                              size: 15,
                              color: kAppBarColor
                              ),
                              SizedBox(
                                width: 12,
                              ),
                            DropDownInput(
                                      isDarkMode: false,
                                      width: 197,
                                      height: 46,
                                      paddingAll: 12,
                                      onPressed: sizeOnClicked,
                                      dropdownValue: size,
                                      dropdownList: ['Size','Colour','Material'],
                                    ),
                          ],
                        ),
                        SizedBox(height:12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.drag_indicator,
                              size: 15,
                              color: kAppBarColor
                              ),
                              SizedBox(
                                width: 12,
                              ),
                            DropDownInput(
                                      isDarkMode: false,
                                      width: 197,
                                      height: 46,
                                      paddingAll: 12,
                                      onPressed: colorClicked,
                                      dropdownValue: color,
                                      dropdownList: ['Size','Colour','Material'],
                                    ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:56.0,left: 20),
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
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Value (e.g. Red,Blue,Green)',style: k15BlackDark,),
                         SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                            width: 470,
                            height: 46,
                            decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.7,
                              color: kBlackOpacity.withOpacity(0.2),
                                    ),
                              color:Colors.white
                                  ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 4,),
                                DeleteIconButton(
                                  buttonText: '8', onPress: ()
                                  {
                                  }
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: DeleteIconButton(
                                    buttonText: '10', onPress: ()
                                    {
                                    }
                                  ),
                                ),
                                DeleteIconButton(
                                  buttonText: '12', onPress: ()
                                  {
                                  }
                                ),
                                 TransparentTextInput(
                                    hideText: false,
                                    hintText:'',
                                    paddingTop: 5,
                                    height: 46,
                                    width: 265,
                                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                                      onChange: (val) { 
                                      }, 
                                    ),   
                                ],
                              ),
                            ),
                          ],
                        ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 424.2,
                            height: 86,
                            decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.7,
                              color:  kBlackOpacity.withOpacity(0.2),
                                    ),
                              color:Colors.white
                                  ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 4,),
                                    DeleteIconButton(
                                      buttonText: 'Blush', onPress: ()
                                      {
                                      }
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: DeleteIconButton(
                                        buttonText: 'Black and White Stripe', onPress: ()
                                        {
                                        }
                                      ),
                                    ),
                                  ],
                                ),
                                TransparentTextInput(
                                    hideText: false,
                                    hintText:'',
                                    paddingTop: 0,
                                    height: 46,
                                    width: 424,
                                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                                      onChange: (val) { 
                                      }, 
                                    ),   
                              ],
                            ),
                          ),
                          IconButton(
                          icon: Icon(
                            Icons.delete,
                            size: 18,
                            color: kDashboardMidBarColor,
                            ),
                          onPressed: (){}
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top:12.0,left: 20),
                          child: TextButton.icon(
                            onPressed: (){
                               showDialog(
                                context: context,
                                builder: (BuildContext context) => EditValueNamesPopup(),
                              );
                            },
                             icon: Icon(
                               Icons.edit,
                               size: 15,
                               color: kDashboardIconColor,
                               ),
                              label: Text(
                                  'Edit Value Names',
                                  style: k15BlueDark,
                                ) 
                              ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:52.0,left: 280, right: 48.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('This product has 6 variants.',style: k18Black,),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [          
                        UserHeader(
                          text: 'Variant Name',
                          padding: 0,
                          width: 208.8,
                          alignment: MainAxisAlignment.start,
                          height: 108
                        ),
                        UserHeader(
                          text: 'SKU',
                          padding: 8,
                          width: 116,
                          alignment: MainAxisAlignment.start,
                          height: 108
                        ),
                        UserHeader(
                          text: 'Supplie\nr Code',
                          padding: 8,
                          width: 68.27,
                          alignment: MainAxisAlignment.start,
                          height: 108
                        ),
                        UserHeader(
                          text: 'Supply\nPrice',
                          padding: 8,
                          width: 91.06,
                          alignment: MainAxisAlignment.start,
                          height: 108
                        ),
                        UserHeader(
                          text: 'Retail\nPrice\nExcluding\nTax',
                          padding: 8,
                          width: 91.08,
                          alignment: MainAxisAlignment.start,
                          height: 108
                        ),
                        UserHeader(
                          text: 'Enabled',
                          padding: 8,
                          width: 71,
                          alignment: MainAxisAlignment.start,
                          height: 108
                        )
                       ],
                     )     
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
             VariantExpansion(
               deleteButtonClick: (){},
                text: '8 / Blush'
                ),
              VariantExpansion(
               deleteButtonClick: (){},
                text: '10 / Blush'
                )
      ],
    );
  }
}