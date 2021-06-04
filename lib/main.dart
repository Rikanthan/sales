import 'package:flutter/material.dart';
import 'package:sales/pages/setup/general.dart';
import 'package:sales/pages/setup/outlet_registers.dart';
import 'package:sales/widgets/check.dart';

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
      home: OutletRegisters()
    );
  }
}

