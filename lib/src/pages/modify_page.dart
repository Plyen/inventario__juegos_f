import 'package:flutter/material.dart';

void main() => runApp(ModPage());

class ModPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ModPages();
  }
}

class ModPages extends State<ModPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: Column(children: [
          Image(
            image: NetworkImage(
                'https://image.cnbcfm.com/api/v1/image/106104857-1567163788496gettyimages-954038980.jpeg?v=1567169197&w=678&h=381'),
          ),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Console',
            ),
          ),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Developer',
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
    );
  }
}