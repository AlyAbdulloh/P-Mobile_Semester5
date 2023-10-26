import 'package:flutter/material.dart';
import 'package:belanja/shop/pages/home_page.dart';

void main() => runApp(const ShopApp());

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping Smart",
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
