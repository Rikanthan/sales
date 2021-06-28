import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';

class PriceVarient extends StatefulWidget {
  PriceVarient({Key key}) : super(key: key);

  @override
  _PriceVarientState createState() => _PriceVarientState();
}

class _PriceVarientState extends State<PriceVarient> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(
             height:20
           ),
           Padding(
             padding: const EdgeInsets.only(top:16.0,bottom:4,right:12),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Supply Price',style: k15BlackDark),
                 Text('Rs18.00',style: k15BlackNormal,)
               ],
             ),
           ),
           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Supply Price',style: k15BlackDark),
                TextInput(
                    darkMode: false,
                    hideText: false,
                    hintText:'177.22 %',
                    paddingTop: 0,
                    height: 46,
                    width: 300,
                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                      onChange: (val) { 
                      },
                    ),
             ],
           ),
           Divider(
             height: 1,
             color: kInputBorderColor,
           ),
           SizedBox(
             height: 20,
           ),
           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Retail Price',style: k15BlackDark),
                  Text('Excluding Tax',style: k15BlackDark),
                 ],
               ),
                TextInput(
                    darkMode: false,
                    hideText: false,
                    hintText:'Rs 49.90',
                    paddingTop: 0,
                    height: 46,
                    width: 300,
                    validate: (String val) => val.isEmpty? 'This field is required' : null,
                      onChange: (val) { 
                      },
                    ),
             ],
           )
         ],
       )
    );
  }
}