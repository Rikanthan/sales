import 'package:flutter/material.dart';
import 'package:sales/pages/products/suppliers.dart';
import 'package:sales/pages/reports/retail_dashboard.dart';
import 'package:sales/pages/reports/sales_report.dart';
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
      home: SalesReport()
    );
  }
}

