import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seus Pedidos'),
      ),
      body: Container() ,
    );
  }
}