import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Menu'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.money_off),
            title: Text('Pedidos'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/orders');
            },
          ),
        ],
      ),
    );
  }
}
