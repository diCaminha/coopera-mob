import 'package:cooperamob/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String url;

  ProductItem({@required this.id, @required this.title, @required this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed("/product-detail", arguments: id);
        },
        child: GridTile(
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            leading: IconButton(
                color: Theme.of(context).accentColor,
                icon: Icon(Icons.favorite),
                onPressed: () {}),
            trailing: IconButton(
                color: Theme.of(context).accentColor,
                icon: Icon(Icons.shopping_cart),
                onPressed: () {}),
          ),
        ),
      ),
    );
  }
}
