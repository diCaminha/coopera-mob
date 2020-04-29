import 'package:cooperamob/providers/products_provider.dart';
import 'package:cooperamob/screens/menu.dart';
import 'package:cooperamob/widgets/user_product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProductsScreen extends StatelessWidget {
  
  static const String routeName = '/userProducts';

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<ProductsProvider>(context).products;

    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciamento de Produtos'),
      ),
      drawer: Menu(),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (ctx, i) =>
              UserProductItem(productProvider: products[i])),
    );
  }
}
