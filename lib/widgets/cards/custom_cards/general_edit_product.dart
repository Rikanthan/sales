import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/TextInput/transparent_text_input.dart';
import 'package:sales/widgets/buttons/delete_icon_button.dart';
import 'package:sales/widgets/buttons/toggle_button.dart';
import 'package:sales/widgets/cards/custom_cards/description.dart';
import 'package:sales/widgets/cards/custom_cards/image_upload.dart';

class GeneralEditProduct extends StatelessWidget {
  const GeneralEditProduct({ 
    @required this.onToggle,
    @required this.isToggle,
    @required this.brand,
    @required this.brandOnClick,
    @required this.productType,
    @required this.productTypeOnClick
   });
    final String brand;
    final Function onToggle;
    final bool isToggle;
    final Function brandOnClick;
    final String productType;
    final Function productTypeOnClick;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('General',style: k18Black,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 232,
                      child: Text(
                        'Change general information\nfor this product.',
                        style: kMediumTextNormalStyle,
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Name',style: kMediumTextStyle,),
                        TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Audhild Tee',
                                paddingTop: 5,
                                height: 46,
                                width: 338,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Brand',style: kMediumTextStyle,),
                        DropDownInput(
                                  isDarkMode: false,
                                  width: 338,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: brandOnClick,
                                  dropdownValue: brand,
                                  dropdownList: ['Cluse','Lilya','Nude Lacy','Quay'],
                                ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,top:20,right: 48.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text('Description',style: kMediumTextStyle,),
                      SizedBox(height: 5,),
                      DescriptionCard(),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0,bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Tags',style: kMediumTextStyle,),
                            SizedBox(width: 8,),
                            Text('Describe the product using relevant keywords for easy filtering.',style: kMediumTextNormalStyle,)
                          ],
                        ),
                      ),
                      Container(
                        width: 696,
                        height: 46,
                        decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.7,
                          color:  kBlackOpacity.withOpacity(0.2),
                                ),
                          color:Colors.white
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 4,),
                            DeleteIconButton(
                              buttonText: 'shirt', onPress: ()
                              {
                              }
                            ),
                             TransparentTextInput(
                                hideText: false,
                                hintText:'Enter a tag name',
                                paddingTop: 5,
                                height: 46,
                                width: 608,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  }, 
                                ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top:20.0,bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Product Type',style: kMediumTextStyle,),
                            SizedBox(width: 8,),
                            Text('Categorise your products with types that can be used to filter sales and inventory reports.',style: kMediumTextNormalStyle,)
                          ],
                        ),
                      ),
                       DropDownInput(
                                  isDarkMode: false,
                                  width: 696,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: productTypeOnClick,
                                  dropdownValue: productType,
                                  dropdownList: ['Choose a product type','Add new product type','Fashion'],
                                ),
                        SizedBox(
                          height: 20,
                        ),
                        ToggleButton(
                            isSwitch: isToggle, 
                            height: 36, 
                            width: 68, 
                            onToggle: onToggle,
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top:12.0,bottom: 5),
                            child: Text(
                              'Sell on Point-of-Sale',
                              style:kMediumTextStyle
                              ),
                          ),
                          Text(
                            'Make this product active and available\nfor sale in-store',
                            style:kMediumTextNormalStyle
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,bottom: 5),
                            child: Text(
                              'Upload Images',
                              style:kMediumTextStyle
                              ),
                          ),
                          Text(
                            'Drag to rearrange. Drop an image outside of the upload area to delete.',
                            style:kMediumTextNormalStyle
                            ),
                          ImageUpload(),
                  ],
                ),
              ),
      ],
    );
  }
}