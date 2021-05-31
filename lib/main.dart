import 'package:flutter/material.dart';
import 'package:sales/pages/reports/online_gift_card.dart';
import 'package:sales/pages/sell/fulfillments.dart';
import 'package:sales/pages/sell/sales_history.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sales', 
      theme: ThemeData(),  
      home: SalesHistory()
    );
  }
}

