import 'package:flutter/material.dart';
import 'package:sales/pages/products/brands.dart';
import 'package:sales/pages/products/product_types.dart';
import 'package:sales/pages/products/products.dart';
import 'package:sales/pages/products/price_books.dart';


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
      home: Brands()
    );
  }
}

