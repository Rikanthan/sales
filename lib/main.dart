import 'package:flutter/material.dart';
import 'package:sales/pages/sell/add_layout.dart';
import 'package:sales/pages/sell/cash_management.dart';
import 'package:sales/pages/sell/settings.dart';
import 'package:sales/widgets/cards/edit_product.dart';

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
      home: EditProduct(),
    );
  }
}

