import 'package:cooperamob/models/Product.dart';
import 'package:cooperamob/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
        id: 'p1',
        title: 'Planner atrevida',
        description: 'planner atrevida capa dura',
        type: TypeProduct.PLANNER,
        price: 100.0,
        imageUrl:
            'https://img.elo7.com.br/product/zoom/20A8149/planner-2019-capa-floral-planner-2019.jpg'),
    Product(
        id: 'p2',
        title: 'Planner agitada',
        description: 'planner agitada capa dura',
        type: TypeProduct.PLANNER,
        price: 100.0,
        imageUrl:
            'https://static-media.hotmart.com/E0jmq79WJQwnTM8AcyTQc9IjopE=/600x600/smart/filters:format(jpg):background_color(white)/hotmart/product_pictures/dd366b7d-2a0e-46cf-bb9e-826798dbaf4d/Semttulo31.jpg'),
    Product(
        id: 'p3',
        title: 'Planner decidida',
        description: 'planner decidida capa dura',
        type: TypeProduct.PLANNER,
        price: 100.0,
        imageUrl:
            'https://static-media.hotmart.com/E0jmq79WJQwnTM8AcyTQc9IjopE=/600x600/smart/filters:format(jpg):background_color(white)/hotmart/product_pictures/dd366b7d-2a0e-46cf-bb9e-826798dbaf4d/Semttulo31.jpg'),
    Product(
        id: 'p4',
        title: 'Planner aventureira',
        description: 'planner aventureira capa dura',
        type: TypeProduct.PLANNER,
        price: 100.0,
        imageUrl:
            'https://img.elo7.com.br/product/zoom/20A8149/planner-2019-capa-floral-planner-2019.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: products.length,
          itemBuilder: (ctx, i) => ProductItem(
              id: products[i].id,
              title: products[i].title,
              url: products[i].imageUrl)),
    );
  }
}
