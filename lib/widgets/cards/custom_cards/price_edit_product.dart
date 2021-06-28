import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';

class PriceEditProduct extends StatelessWidget {
  const PriceEditProduct({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 232,
                      child: Text(
                        'Price',
                        style: k18Black,
                        )
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 4.0),
                          child: Text('Supply Price',style:k15BlackDark),
                        ),
                        SizedBox(width: 550,),
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 4.0),
                          child: Text('Rs 18.00',style:k15BlackNormal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Markup',style:k15BlackDark),
                          TextInput(
                              darkMode: false,
                              hideText: false,
                              hintText:'177.22%',
                              paddingTop: 5,
                              height: 46,
                              width: 308,
                              validate: (String val) => val.isEmpty? 'This field is required' : null,
                                onChange: (val) { 
                                },
                              ),
                        ],
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0,bottom: 20,top:4),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Retail Price',style:k15BlackDark),
                               Text('Excluding Tax',style:k15BlackNormal),
                            ],
                          ),
                          TextInput(
                              darkMode: false,
                              hideText: false,
                              hintText:'Rs 49.90',
                              paddingTop: 5,
                              height: 46,
                              width: 308,
                              validate: (String val) => val.isEmpty? 'This field is required' : null,
                                onChange: (val) { 
                                },
                              ),
                        ],
                      ),
              ),
      ],
    );
  }
}