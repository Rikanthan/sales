import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
class InventoryEditProduct extends StatelessWidget {
  const InventoryEditProduct({
    @required this.isClicked,
    @required this.supplierClicked,
    @required this.supplier,
    @required this.checkBoxClicked
  });

  final Function supplierClicked;
  final String supplier;
  final bool isClicked;
  final Function checkBoxClicked;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Inventory',style: k18Black,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 232,
                      child: Text(
                        'The type of product we\nchoose determines how we\nmanage inventory\nand reporting.',
                        style: kMediumHeightTextStyle,
                        )
                      ),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Supplier',style: k15BlackDark,),
                        DropDownInput(
                                  isDarkMode: false,
                                  width: 226.67,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: supplierClicked,
                                  dropdownValue: supplier,
                                  dropdownList: ['Flo & Frankie',''],
                                ),
                      ],
                    ),
                    SizedBox(width: 8,),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Supplier Code',style: k15BlackDark,),
                        TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Enter supplier code',
                                paddingTop: 5,
                                height: 46,
                                width: 226.67,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                      ],
                    ),
                     SizedBox(width: 8,),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Supply Price',style: k15BlackDark,),
                        TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'Rs 18.00',
                                paddingTop: 5,
                                height: 46,
                                width: 226,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                      ],
                    ), 
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 40.0,top:5),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                        activeColor: MaterialStateColor
                                                  .resolveWith(
                                                        (states) => kSignInButtonColor),
                        focusColor: MaterialStateColor
                                                  .resolveWith(
                                                        (states) => kSignInButtonColor),
                        value: isClicked,
                        onChanged: checkBoxClicked,
                        ),
                  SizedBox(
                    width:12
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height:5),
                      Text(
                        'Track Inventory for this product',
                            style: TextStyle(
                                fontFamily:'Lato',
                                fontSize: 18,
                                color: kAppBarColor,
                                  ),
                              ),
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Text(
                            'Manage orders, transfers and returns accurately,' 
                            ' and get reports and insights on this product\'s performance.',
                         style: k14Black2,
                         ),
                      ),
                    ],
                  ),      
                  ],
                ),
              ),
      ],
    );
  }
}