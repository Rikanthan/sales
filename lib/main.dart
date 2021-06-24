import 'package:flutter/material.dart';
import 'package:sales/pages/products/add_promotion.dart';
import 'package:sales/pages/products/order_stock.dart';
import 'package:sales/pages/products/products.dart';
import 'package:sales/pages/setup/edit_outlet.dart';
import 'package:sales/pages/setup/main_outlet.dart';

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
      home: EditOutlet(),
    );
  }
}

