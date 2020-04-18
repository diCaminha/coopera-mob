import 'package:cooperamob/screens/product_detail_screen.dart';
import 'package:cooperamob/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coopera Art',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.blueAccent
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()
      },
    );
  }
}
