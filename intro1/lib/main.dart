import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30));
    return Scaffold(
      appBar: AppBar(
        title: Text("ReadEndless",),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
       children: [
         Expanded(child: Container(
           padding: EdgeInsets.all(30.0),
           color: Colors.cyan,
           child: Text('1'),
         ),),
         Container(
           padding: EdgeInsets.all(30.0),
           color: Colors.pinkAccent,
           child: Text('2'),
         ),
         Container(
           padding: EdgeInsets.all(30.0),
           color: Colors.amber,
           child: Text('3'),
         ),
       ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("PDF"),
        onPressed: () {

        },
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
