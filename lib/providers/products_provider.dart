import 'package:cooperamob/providers/product_provider.dart';
import 'package:flutter/widgets.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductProvider> _products = [
    ProductProvider(
        id: 'p1',
        title: 'Planner atrevida',
        description: 'planner atrevida capa dura',
        type: TypeProduct.PLANNER,
        price: 100.0,
        imageUrl:
            'https://img.elo7.com.br/product/zoom/20A8149/planner-2019-capa-floral-planner-2019.jpg'),
    ProductProvider(
        id: 'p2',
        title: 'Planner agitada',
        description: 'planner agitada capa dura',
        type: TypeProduct.PLANNER,
        price: 100.0,
        imageUrl:
            'https://static-media.hotmart.com/E0jmq79WJQwnTM8AcyTQc9IjopE=/600x600/smart/filters:format(jpg):background_color(white)/hotmart/product_pictures/dd366b7d-2a0e-46cf-bb9e-826798dbaf4d/Semttulo31.jpg'),
    ProductProvider(
        id: 'p3',
        title: 'Planner decidida',
        description: 'planner decidida capa dura',
        type: TypeProduct.PLANNER,
        price: 100.0,
        imageUrl:
            'https://static-media.hotmart.com/E0jmq79WJQwnTM8AcyTQc9IjopE=/600x600/smart/filters:format(jpg):background_color(white)/hotmart/product_pictures/dd366b7d-2a0e-46cf-bb9e-826798dbaf4d/Semttulo31.jpg'),
    ProductProvider(
        id: 'p4',
        title: 'Planner aventureira',
        description: 'planner aventureira capa dura',
        type: TypeProduct.PLANNER,
        price: 100.0,
        imageUrl:
            'https://img.elo7.com.br/product/zoom/20A8149/planner-2019-capa-floral-planner-2019.jpg')
  ];

  List<ProductProvider> get products {
    return [..._products];
  }

  List<ProductProvider> get favProducts {
    return [..._products.where((p) => p.isFavorite == true)];
  }

  void addProduct(ProductProvider product) {
    _products.add(product);
    notifyListeners();
  }

  ProductProvider getById(String productId) {
    return _products.firstWhere((p) => p.id == productId);
  }
}
