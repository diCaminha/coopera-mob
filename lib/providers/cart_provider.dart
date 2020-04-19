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
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItems(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
      _items.update(productId, (existingItem) => CartItem(id: existingItem.id, title: existingItem.title, price:existingItem.price, quantity: existingItem.quantity + 1));
    } else {
      _items.putIfAbsent(productId, () => CartItem(id: productId, title: title, quantity: 1, price: price));
    }
  }

  int getQntItems() {
    return _items.length;
  }
}
