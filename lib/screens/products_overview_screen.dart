import 'package:cooperamob/providers/cart_provider.dart';
import 'package:cooperamob/screens/menu.dart';
import 'package:cooperamob/widgets/badge.dart';
import 'package:cooperamob/widgets/products_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum FilterChoice { TODOS, FAVORITOS }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var showFavorites = false;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
        actions: <Widget>[
          PopupMenuButton(
              icon: Icon(Icons.filter),
              onSelected: (FilterChoice choice) {
                setState(() {
                  if (choice == FilterChoice.FAVORITOS) {
                    showFavorites = true;
                  } else {
                    showFavorites = false;
                  }
                });
              },
              itemBuilder: (_) => [
                    PopupMenuItem(
                        value: FilterChoice.TODOS, 
                        child: Text('todos')),
                    PopupMenuItem(
                        value: FilterChoice.FAVORITOS,
                        child: Text('favoritos')),
                  ]),
          Badge(
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed("/cart");
                },
              ),
              value: cartProvider.getQntItems())
        ],
      ),
      drawer: Menu(),
      body: ProductsGrid(showFavorites),
    );
  }
}
