import 'package:flutter/widgets.dart';

class Order {

  Order({this.id, this.total, this.date});

  final String id;
  final double total;
  final DateTime date;
}

class OrdersProvider with ChangeNotifier {

  List<Order> _orders = [];

  List<Order> get orders {
    return [..._orders];
  }

  void createOrder(double total, DateTime date) {
    final String dateAsId = date.toIso8601String();

    final Order order = new Order(id: dateAsId, total:total, date:date);
    _orders.add(order);

    notifyListeners();
  }
} 