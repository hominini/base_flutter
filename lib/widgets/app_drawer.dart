import 'package:flutter/material.dart';
import '../screens/orders_screen.dart';
import '../screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Mi negocio',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Tienda'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.of(context).pushReplacementNamed('/');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('Mis órdenes'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.of(context).pushNamed(OrdersScreen.routeName);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Administrar productos'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.of(context).pushNamed(UserProductsScreen.routeName);
              // Navigator.pop(context);
            },
          ),
          // ListTile(
          //   title: Text('Item 2'),
          //   onTap: () {
          //     // Update the state of the app.
          //     // ...
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );
  }
}
