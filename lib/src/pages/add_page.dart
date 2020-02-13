import 'package:flutter/material.dart';

void main() => runApp(AddPage());

class AddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddPages();
  }
}

class AddPages extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Registration'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: Column(children: [
          Image(
            image: NetworkImage(
                'https://imgix.bustle.com/uploads/image/2019/12/12/ed336be3-2ce1-4f50-9f73-967b0c9bd6d7-gettyimages-1129878609.jpg?w=1020&h=576&fit=crop&crop=faces&auto=format&q=70'),
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