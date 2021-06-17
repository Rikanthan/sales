import 'package:flutter/material.dart';
import 'package:sales/pages/products/order_stock.dart';
import 'package:sales/widgets/cards/custom_cards/edit_product.dart';
//import 'package:sales/widgets/cards/edit_product.dart';

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
      home: OrderStock(),
    );
  }
}

