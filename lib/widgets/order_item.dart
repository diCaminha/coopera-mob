import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  OrderItem(
      {@required this.id,
      @required this.date,
      @required this.total});

  final String id;
  final DateTime date;
  final double total;
  
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            title: Text(date.toString()),
            subtitle: Text('Total: R\$$total'),
          ),
        ),
      ),
    );
  }
}
