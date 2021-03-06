import 'package:cooperamob/providers/cart_provider.dart';
import 'package:cooperamob/providers/orders_provider.dart';
import 'package:cooperamob/providers/products_provider.dart';
import 'package:cooperamob/screens/cart_screen.dart';
import 'package:cooperamob/screens/edit_product_screen.dart';
import 'package:cooperamob/screens/orders_screen.dart';
import 'package:cooperamob/screens/product_detail_screen.dart';
import 'package:cooperamob/screens/products_overview_screen.dart';
import 'package:cooperamob/screens/user_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: ProductsProvider(),
        ),
        ChangeNotifierProvider.value(
          value: CartProvider(),
        ),
        ChangeNotifierProvider.value(
          value: OrdersProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Coopera Art',
        theme: ThemeData(
            primarySwatch: Colors.pink, accentColor: Colors.blueAccent),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}
