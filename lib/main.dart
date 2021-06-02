import 'package:flutter/material.dart';
import 'package:sales/pages/customer/customer.dart';
import 'package:sales/pages/sell/close_register.dart';
import 'package:sales/pages/sell/settings.dart';
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
      home: Customer()
    );
  }
}

