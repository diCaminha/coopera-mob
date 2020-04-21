import 'package:cooperamob/providers/orders_provider.dart';
import 'package:cooperamob/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final orders = Provider.of<OrdersProvider>(context).orders;

    return Scaffold(
      appBar: AppBar(
        title: Text('Seus Pedidos'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (ctx, i) => OrderItem(
          id: orders[i].id,
          date: orders[i].date,
          total: orders[i].total,
        ),
      ),
    );
  }
}
