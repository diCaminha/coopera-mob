import 'package:cooperamob/providers/product_provider.dart';
import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  UserProductItem({this.productProvider});

  final ProductProvider productProvider;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productProvider.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(productProvider.imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.edit,
                color: Theme.of(context).indicatorColor,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/edit-product');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.delete,
                color: Theme.of(context).errorColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
