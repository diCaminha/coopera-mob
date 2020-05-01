import 'package:cooperamob/models/Product.dart';
import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  static const String routeName = '/edit-product';

  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _form = GlobalKey<FormState>();
  var _savedProduct = Product(
      id: null,
      title: '',
      description: '',
      type: TypeProduct.PLANNER,
      price: 0.0,
      imageUrl: '');

  void _saveForm() {
    _form.currentState.save();
    print(_savedProduct.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Produto'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.save), onPressed: _saveForm)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _form,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome do Produto'),
                textInputAction: TextInputAction.next,
                onSaved: (value) {
                  setState(() {
                    _savedProduct = Product(
                      id: _savedProduct.id,
                      title: value,
                      description: _savedProduct.description,
                      type: _savedProduct.type,
                      price: _savedProduct.price,
                      imageUrl: _savedProduct.imageUrl,
                    );
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Preço'),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                onSaved: (value) {
                  setState(() {
                    _savedProduct = Product(
                      id: _savedProduct.id,
                      title: _savedProduct.title,
                      description: _savedProduct.description,
                      type: _savedProduct.type,
                      price: double.parse(value),
                      imageUrl: _savedProduct.imageUrl,
                    );
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Descrição'),
                maxLines: 3,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onSaved: (value) {
                  setState(() {
                    _savedProduct = Product(
                      id: _savedProduct.id,
                      title: _savedProduct.title,
                      description: value,
                      type: _savedProduct.type,
                      price: _savedProduct.price,
                      imageUrl: _savedProduct.imageUrl,
                    );
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
