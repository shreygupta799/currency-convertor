import 'package:currency_convertor2/currency_convertot_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Types of widget
//1.Stateless Wiget
//2.Statefull Widget
//3.

//1.MAterial Design
//2.Cupertino Design
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertorMaterialPage(),
    );
  }
}
