import 'package:cooperamob/providers/cart_provider.dart';
import 'package:cooperamob/widgets/cart_item.dart' as ci;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Seu Carrinho de Compras'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total: '),
                  SizedBox(width: 10),
                  Chip(
                    label: Text(
                      'R\$${cartProvider.totalAmount}',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).accentColor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: cartProvider.items.length,
            itemBuilder: (ctx, i) => ci.CartItem(
              id: cartProvider.items.values.toList()[i].id,
              productId: cartProvider.items.keys.toList()[i],
              price: cartProvider.items.values.toList()[i].price,
              quantity: cartProvider.items.values.toList()[i].quantity,
              title: cartProvider.items.values.toList()[i].title,
            ),
          ))
        ],
      ),
    );
  }
}
