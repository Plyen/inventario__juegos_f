import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:games_inventory/src/pages/add_page.dart';
import 'package:games_inventory/src/pages/games_page.dart';

void main() => runApp(HomePage());

/// This Widget is the main application widget.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome()
    );
  }

}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inventario'),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.details),
                title: Text('Juegos'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamesPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.filter_tilt_shift),
                title: Text('Registrar'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: Padding(padding: EdgeInsets.fromLTRB(50, 50, 50, 40)),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Text(
            'Figueroa Salazar Oscar Rogelio',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  }
}
