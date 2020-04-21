import 'package:flutter/widgets.dart';

class CartItem {
  CartItem(
      {@required this.id,
      @required this.title,
      @required this.quantity,
      @required this.price});

  final String id;
  final String title;
  final int quantity;
  final double price;
}

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItems(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingItem) => CartItem(
              id: existingItem.id,
              title: existingItem.title,
              price: existingItem.price,
              quantity: existingItem.quantity + 1));
    } else {
      _items.putIfAbsent(
          productId,
          () =>
              CartItem(id: productId, title: title, quantity: 1, price: price));
    }
    notifyListeners();
  }

  String getQntItems() {
    int qnt = 0;
    if (_items == null) return qnt.toString();
    
    _items.forEach((key, cartItem) {
      qnt += cartItem.quantity;
    });
    return qnt.toString();
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key,cartItem) {
      total += cartItem.quantity * cartItem.price;
    });
    return total;
  }

  void  deleteItems(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
