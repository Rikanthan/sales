import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/chec_box_text.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_maxlines.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/bars/tab_bar.dart';
import 'package:sales/widgets/buttons/choose_date_button.dart';
import 'package:sales/widgets/cards/popup_cards/add_customer_details.dart';
import 'package:sales/widgets/divider/custom_divider.dart';

class CustomerDetailsListview extends StatefulWidget {
  CustomerDetailsListview({Key key}) : super(key: key);

  @override
  _CustomerDetailsListviewState createState() => _CustomerDetailsListviewState();
}

class _CustomerDetailsListviewState extends State<CustomerDetailsListview> {
  CustomerDetails _customerDetails = CustomerDetails.details;
  String country = 'Please select a country';
  String gender = 'Choose a gender...';
  @override
  Widget build(BuildContext context) {
    return Container(
      height:419.594,
       child: ListView(
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                // Row(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         TabBarItem(
                //           darkMode: false,
                //           width: 68, 
                //           height: 48,
                //           isClicked: _customerDetails == CustomerDetails.contact,
                //           onClicked: (){
                //             setState(() {
                //                _customerDetails = CustomerDetails.contact;
                //             });
                //           },
                //           text: 'Contact'
                //           ),
                //           CustomDivider(
                //             topPadding: 49, 
                //             width: 30, 
                //             bottomPadding: 0, 
                //             color: kAppBarColor.withOpacity(0.5),
                //             thickness: 1,
                //             ),
                //           TabBarItem(
                //           darkMode: false,
                //           width: 60, 
                //           height: 48,
                //           isClicked: _customerDetails == CustomerDetails.details,
                //           onClicked: (){
                //             setState(() {
                //                _customerDetails = CustomerDetails.details;
                //             });
                //           },
                //           text: 'Details'
                //           ),
                //           CustomDivider(
                //             topPadding: 49, 
                //             width: 578, 
                //             bottomPadding: 0, 
                //             color: kAppBarColor.withOpacity(0.5),
                //             thickness: 1,
                //             ),
                //       ],
                //     ),
                    SizedBox(
                              height: 20,
                            ),
                            Text(
                            'POSTAL ADDRESS',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: kAppBarColor,
                            letterSpacing: 2.4
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kAppBarColor,
                                height: 1,
                              ),
                            ),
                    SizedBox( height:12),                  
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Street',
                          style: kMediumTextStyle
                          ),
                          TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter street',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Suburb',
                            style: kMediumTextStyle
                              ),
                            ),
                            TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 0,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter suburb',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Postcode',
                            style: kMediumTextStyle
                              ),
                            ),
                            TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 0,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter postcode',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Country',
                            style: kMediumTextStyle
                              ),
                            ),
                          DropDownInput(
                            isDarkMode: false,
                            width: 356,
                            height: 46,
                            paddingAll: 12,
                            onPressed: (String value){
                              setState(() {
                                country = value;
                              });
                            },
                            dropdownValue: country,
                            dropdownList: ['Please select a country','Sri Lanka','India'],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Street',
                          style: kMediumTextStyle
                          ),
                          TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter street',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('City',
                            style: kMediumTextStyle
                              ),
                            ),
                           TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter city',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('State',
                            style: kMediumTextStyle
                              ),
                            ),
                            TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter state',
                            ),
                            SizedBox(
                              height: 52,
                            ),
                            CheckBoxText(header: 'Use different address for\nphysical address', width:246 ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                              height: 20,
                            ),
                            Text(
                            'ADDITIONAL INFORMATION',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: kAppBarColor,
                            letterSpacing: 2.4
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kAppBarColor,
                                height: 1,
                              ),
                            ),
                    SizedBox( height:12), 
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Customer Code',
                          style: kMediumTextStyle
                          ),
                          TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter customer code',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Date of Birth',
                            style: kMediumTextStyle
                              ),
                            ),
                            ChooseDate(width: 356),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Website',
                            style: kMediumTextStyle
                              ),
                            ),
                            TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 0,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter website',
                            ),                       
                        ],
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Company Name',
                          style: kMediumTextStyle
                          ),
                          TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter company name',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Gender',
                            style: kMediumTextStyle
                              ),
                            ),
                           DropDownInput(
                            isDarkMode: false,
                            width: 356,
                            height: 46,
                            paddingAll: 12,
                            onPressed: (String value){
                              setState(() {
                                gender = value;
                              });
                            },
                            dropdownValue: gender,
                            dropdownList: ['Choose a gender...','Man','Woman','Non-binary'],
                          ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Twitter',
                            style: kMediumTextStyle
                              ),
                            ),
                            TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter twitter',
                            ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Note',
                            style: kMediumTextStyle
                              ),
                            ),
                   TextInputMaxLines(
                            maxLines: 4,
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 0,
                            hideText: false,
                            height: 80,
                            width:736,
                            hintText: 'Enter a note for this customer',
                            ),
                      SizedBox(
                              height: 20,
                            ),
                            Text(
                            'CUSTOM FIELDS',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: kAppBarColor,
                            letterSpacing: 2.4
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kAppBarColor,
                                height: 1,
                              ),
                            ),
                    SizedBox( height:12), 
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Custom Field 1',
                          style: kMediumTextStyle
                          ),
                          TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter custom value',
                            ),    
                          Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Custom Field 3',
                            style: kMediumTextStyle
                              ),
                            ),
                            TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter custom value',
                            ),
                        ],
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Custom Field 2',
                          style: kMediumTextStyle
                          ),
                          TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter custom value',
                            ),    
                          Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Custom Field 4',
                            style: kMediumTextStyle
                              ),
                            ),
                            TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter custom value',
                            ),
                        ],
                      ),
                    ],
                  ),       
             ],
            )
         ],
        ),
    );
  }
}


