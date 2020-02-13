import 'package:flutter/material.dart';
import 'package:games_inventory/routes/routes_name.dart';
import 'package:games_inventory/src/pages/games_page.dart';
import 'package:games_inventory/src/pages/add_page.dart';
import 'package:games_inventory/src/pages/modify_page.dart';
import '../main.dart';

Route<dynamic> GenerarRuta(RouteSettings settings){
  switch(settings.name){
    case home:
      return MaterialPageRoute(builder: (context) => HomePage());
    break;
    case invent:
      return MaterialPageRoute(builder: (context) => GamesPage());
    break;
    case add:
      return MaterialPageRoute(builder: (context) => AddPage());
    break;
    case mod:
      return MaterialPageRoute(builder: (context) => ModPage());
    break;
  }
}
