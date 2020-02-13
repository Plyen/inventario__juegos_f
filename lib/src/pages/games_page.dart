import 'package:flutter/material.dart';

import 'modify_page.dart';

void main() => runApp(GamesPage());

class GamesPage extends StatefulWidget {
  GamePage createState() => GamePage();
}

class GamePage extends State<GamesPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Play Station 4',
      style: optionStyle,
    ),
    Text(
      'Index 1: Xbox One',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games'),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        _widgetOptions.elementAt(_selectedIndex),
        ListTile(
          leading: Icon(Icons.edit),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ModPage(),
              ),
            );
          },
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_parking),
            title: Text('PS4'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trip_origin),
            title: Text('Xbox'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
