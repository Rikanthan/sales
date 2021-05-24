import 'package:flutter/material.dart';
import 'package:sales/pages/products/products.dart';
import 'package:sales/pages/products/promotions.dart';


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
      home: Promotions()
    );
  }
}

