import 'package:cooperamob/widgets/products_grid.dart';
import 'package:flutter/material.dart';

enum FilterChoice { TODOS, FAVORITOS }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var showFavorites = false;

  @override
  Widget build(BuildContext context) {
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
                        value: FilterChoice.TODOS, child: Text('todos')),
                    PopupMenuItem(
                        value: FilterChoice.FAVORITOS,
                        child: Text('favoritos')),
                  ]),
          PopupMenuButton(
            icon: Icon(Icons.shopping_cart),
            )
        ],
      ),
      body: ProductsGrid(showFavorites),
    );
  }
}
