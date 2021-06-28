import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/bars/tab_bar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/buttons/toggle_button.dart';
import 'package:sales/widgets/divider/custom_divider.dart';
import 'package:sales/widgets/listviews/customer_details_listview.dart';

enum CustomerDetails{
  contact,
  details
}

class AddCustomerDetails extends StatefulWidget {

  @override
  _AddCustomerDetailsState createState() => _AddCustomerDetailsState();
}

class _AddCustomerDetailsState extends State<AddCustomerDetails> {
  String customer = 'All Customers';
  String contact = 'Mobile';
  bool isSwitch = false;
  double height = 637;
  CustomerDetails _customerDetails = CustomerDetails.contact;
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:860,
      height: height,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kWhite,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 800,
            height: height,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Add Customer',
                    style: TextStyle(
                      color: kAppBarColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato' 
                      )
                    ),
                    SizedBox( height:32), 
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TabBarItem(
                          darkMode: false,
                          width: 68, 
                          height: 48,
                          isClicked: _customerDetails == CustomerDetails.contact,
                          onClicked: (){
                            setState(() {
                               _customerDetails = CustomerDetails.contact;
                            });
                          },
                          text: 'Contact'
                          ),
                          CustomDivider(
                            topPadding: 49, 
                            width: 30, 
                            bottomPadding: 0, 
                            color: kAppBarColor.withOpacity(0.5),
                            thickness: 1,
                            ),
                          TabBarItem(
                          darkMode: false,
                          width: 60, 
                          height: 48,
                          isClicked: _customerDetails == CustomerDetails.details,
                          onClicked: (){
                            setState(() {
                               _customerDetails = CustomerDetails.details;
                               height = 674;
                            });
                          },
                          text: 'Details'
                          ),
                          CustomDivider(
                            topPadding: 49, 
                            width: 578, 
                            bottomPadding: 0, 
                            color: kAppBarColor.withOpacity(0.5),
                            thickness: 1,
                            ),
                      ],
                    ),
                    if(_customerDetails == CustomerDetails.contact)
                    SizedBox( height:32),
                    if(_customerDetails == CustomerDetails.contact)                  
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Name',
                          style: k15BlackDark
                          ),
                          TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter first name',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Email',
                            style: k15BlackDark
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
                            hintText: 'Enter email',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Customer Group',
                            style: k15BlackDark
                              ),
                            ),
                          DropDownInput(
                            isDarkMode: false,
                            width: 356,
                            height: 46,
                            paddingAll: 12,
                            onPressed: (String value){
                              setState(() {
                                customer = value;
                              });
                            },
                            dropdownValue: customer,
                            dropdownList: ['All Customers',''],
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
                            'Last Name',
                          style: k15BlackDark
                          ),
                          TextInput(
                            darkMode: false,
                            validate:(value){},
                            onChange: (value){},
                            paddingTop: 5,
                            hideText: false,
                            height: 46,
                            width:356,
                            hintText: 'Enter last name',
                            ),
                            Padding(
                            padding: const EdgeInsets.only(top:20.0, bottom: 5),
                            child: Text('Contact Number',
                            style: k15BlackDark
                              ),
                            ),
                            Row(
                              children: [
                                DropDownInput(
                                    isDarkMode: false,
                                    width: 99,
                                    height: 46,
                                    paddingAll: 6,
                                    onPressed: (String value){
                                      setState(() {
                                        contact = value;
                                      });
                                    },
                                    dropdownValue: contact,
                                    dropdownList: ['Mobile','Phone','Fax'],
                                  ),
                                TextInput(
                                  darkMode: false,
                                  validate:(value){},
                                  onChange: (value){},
                                  paddingTop: 0,
                                  hideText: false,
                                  height: 46,
                                  width:259,
                                  hintText: 'Enter $contact number',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 52,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ToggleButton(
                                        height: 35,
                                        width: 63,
                                        isSwitch: isSwitch,
                                        onToggle: (val) {
                                              setState(() {
                                                isSwitch = val;
                                              });
                                            },
                                        ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text('Opt-In to Marketing and\nPromotional Emails',style: k15BlackNormal,)
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                  if(_customerDetails == CustomerDetails.contact)
                  SizedBox(
                    height: 20,
                  ),
                  if(_customerDetails == CustomerDetails.contact)
                      Container(
                             width: 736,
                             height: 78,
                             color: Color(0xFFE5EAED),
                             child: Padding(
                               padding: const EdgeInsets.all(20.0),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Icon(
                                     Icons.play_circle_fill,
                                     size: 32,
                                     color: kSignInButtonColor,
                                   ),
                                   SizedBox(
                                     width: 16,
                                   ),
                                   Text('Add an email address to this customer so that you can email their receipts or send them\npromotional emails.'
                                    , style: k15BlackDark,)
                                 ],
                               ),
                             ),
                           ) ,
                    if(_customerDetails == CustomerDetails.details)
                      CustomerDetailsListview(),
                  SizedBox( height:30),    
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        buttonText: 'Create New Customer',
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
          EscButton(
            isDarkMode: false,
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






