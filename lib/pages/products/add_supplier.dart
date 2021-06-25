import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/suppliers.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';
import 'package:sales/widgets/TextInput/text_input_maxlines.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';


class AddSupplier extends StatefulWidget {
  const AddSupplier({
    @required this.header,
    @required this.isEdit
  });
  final String header;
  final bool isEdit;
  @override
  _AddSupplierState createState() => _AddSupplierState();
}

class _AddSupplierState extends State<AddSupplier> {
  bool isSwitch = true;
  String country = 'Select a country';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ProductDrawer(productsClicked: ProductsClicked.products),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(top:24.0,bottom: 24.0),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: !isSwitch ? kSignInButtonColor: kInputBorderColor,
                        ), 
                      onTap: (){
                        setState(() {
                          isSwitch = false;
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Suppliers()));
                      }
                    ),
                    Text( widget.isEdit ?'Edit Supplier ${widget.header}' : 'Add Supplier',style: k32Black,)
                  ],
                ),
              ),
              Container(
                color: kInputBorderColor,
                height: 93,
                child: Padding(
                  padding: const EdgeInsets.only(left:48.0,right: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.isEdit ? 'Edit supplier\'s details.' :
                        'Create a new supplier',
                        style: kMediumTextNormalStyle,
                        ),
                        Spacer(),
                      CustomButton(
                        buttonText: 'Cancel', 
                        onPress: (){},
                        buttonColor: kDashboardMidBarColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
                      SizedBox(
                        width: 16,
                        ),
                      CustomButton(
                        buttonText: 'Save', 
                        onPress: (){
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
                      
                    ],
                  ),
                ),
              ),
             Column(
          children: [
           SizedBox(height:64),
              Padding(
                padding: const EdgeInsets.only(left:48.0,bottom: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Details',style: k30Black,)
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
                        'How your supplier is identified\nand described in Vend. Yor can\nalso choose to set a default\nmarkup, making setting up\nproducts easier',
                        style: kMediumTextNormalStyle,
                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Supplier name',style: k15BlackDark,),
                                TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText: widget.header,
                                paddingTop: 5,
                                height: 34,
                                width: 335,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Default Markup',style: k15BlackDark,),
                                TextInput(
                                darkMode: false,
                                hideText: false,
                                hintText:'0',
                                paddingTop: 5,
                                height: 34,
                                width: 335,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                         SizedBox(
                              height: 20,
                            ),
                        Text('Description',style: k15BlackDark,),
                        TextInputMaxLines(
                                darkMode: false,
                                hideText: false,
                                hintText:'',
                                paddingTop: 5,
                                height: 84,
                                width: 690,
                                maxLines: 4,
                                validate: (String val) => val.isEmpty? 'This field is required' : null,
                                  onChange: (val) { 
                                  },
                                ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                    Text('Contact Info',style: k30Black,)
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
                        'The official name and contact\ndetails for your supplier',
                        style: kMediumTextNormalStyle,
                        ),
                      ), 
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('First name',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Company',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText: widget.header,
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Phone',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Fax',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Twitter',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                       ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Last name',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Email',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'name@domain.com',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Mobile',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Website',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),                       
                       ],
                      )
                    ] 
                  )
                ),
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
                    Text('Addresses',style: k30Black,)
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
                      ), 
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Physical Address',style: k18Black,),
                         SizedBox(
                            height: 20,
                          ),
                         Text('Street',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Suburb',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('State',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                       ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(' ',style: k18Black,),
                         SizedBox(
                            height: 20,
                          ),
                         Text('Street',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Postcode',style: k15BlackDark,),
                          TextInput(
                          darkMode: false,
                          hideText: false,
                          hintText:'name@domain.com',
                          paddingTop: 5,
                          height: 34,
                          width: 335,
                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                            onChange: (val) { 
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Country',style: k15BlackDark,),
                          SizedBox(
                            height: 5,
                          ),
                           DropDownInput(
                                  isDarkMode: false,
                                  width: 200,
                                  height: 34,
                                  paddingAll: 4,
                                  onPressed: (String newValue) 
                                                  {
                                                    setState(() {
                                                    country = newValue;
                                                    }
                                                  );
                                                },
                                  dropdownValue: country,
                                  dropdownList: ['Select a country','India','Sri Lanka','US','UK'],
                            )              
                       ],
                      )
                    ] 
                  )
                ),
                ]
              )
            ]
          )
        )
      )
    );
  }
}

          
  