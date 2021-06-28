import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';

class ProductDetailsCard extends StatefulWidget {
  const ProductDetailsCard({
    Key key,
   @required this.price,
    @required this.product,
  }) : super(key: key);

  final String price;
  final String product;

  @override
  _ProductDetailsCardState createState() => _ProductDetailsCardState();
}

class _ProductDetailsCardState extends State<ProductDetailsCard> {
  bool isExpansion = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        setState(() {
          isExpansion = !isExpansion;
        });
      },
      child: Container(
                      width: 438,          
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: kDashboardSearchBarFillColor,
                        border: !isExpansion ? Border.all(
                          color: kAppBarColor,
                          width:1
                          ) :
                          Border(
                          left: BorderSide(color: kSignInButtonColor,
                              width:4
                            )
                          )
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(16.0),
                        child:Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                  Icon(
                                      !isExpansion ? Icons.keyboard_arrow_right :
                                                   Icons.keyboard_arrow_down,
                                      color: kDashboardMidBarColor,
                                      size: 15,
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:16.0,right: 16.0),
                                    child: Text(
                                          '1',
                                          style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Lato',
                                          color: kHelpTextColor, 
                                        ),
                                    ),
                                  ),
                                     Expanded(
                                         flex:2,
                                        child: Text(
                                          widget.product,
                                          style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Lato',
                                          color: kHelpTextColor, 
                                        ),
                                          ),
                                      ),
                                      
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                               Text(
                                              widget.price,
                                              style: TextStyle(
                                              fontSize: 15,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Lato',
                                              color: kHelpTextColor, 
                                            ),
                                        ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:14,right:12),
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.delete,
                                                size: 15.0,
                                                color: kDashboardMidBarColor,
                                                ),
                                                onPressed: (){},
                                              ),
                                          )
                                        ],
                                      )
                                ],
                              ),
                              if(isExpansion)
                              Container(
                                color:Colors.transparent,
                                child:Column(
                                  children: [
                                    Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Quantity',style: kMediumTextDarkStyle,),
                                      TextInput(
                                          darkMode: true,
                                          validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                                          onChange: (val) {
                                                },
                                          paddingTop: 4, 
                                          hideText: false, 
                                          height: 46,
                                          width:124.27,
                                          hintText: '1',
                                          )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Price',style: kMediumTextDarkStyle,),
                                      TextInput(
                                          darkMode: true,
                                          validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                                          onChange: (val) {
                                                },
                                          paddingTop: 4, 
                                          hideText: false, 
                                          height: 46,
                                          width:124.27,
                                          hintText: '269.90',
                                          )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Discount (%)',style: kMediumTextDarkStyle,),
                                      TextInput(
                                          darkMode: true,
                                          validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                                          onChange: (val) {
                                                },
                                          paddingTop: 4, 
                                          hideText: false, 
                                          height: 46,
                                          width:124.27,
                                          hintText: '0.00',
                                          )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Notes',style: kMediumTextDarkStyle,),
                                      TextInput(
                                          darkMode: true,
                                          validate: (val) => val.length == 0 ? 'Enter the Number' : null,
                                          onChange: (val) {
                                                },
                                          paddingTop: 4, 
                                          hideText: false, 
                                          height: 46,
                                          width:403,
                                          hintText: 'Type to add note...',
                                          )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.report,
                                    size:14,
                                    color: Color(0xFF24A1F5)
                                  ),
                                  Text(
                                    '  Show Inventory & Details',
                                  style: TextStyle(
                                      color: Color(0xFF24A1F5),
                                      fontFamily: 'Lato',
                                      fontSize: 14
                                    ),
                                  ),
                                  
                                ],
                              )
                                  ],
                                )
                              )
                          ],
                        )
                      )
                    ),
    );
  }
}