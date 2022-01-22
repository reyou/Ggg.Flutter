import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(
    appBar: AppBar(
      title: Text("ReadEndless"),
      centerTitle: true,
    ),
    body: Center(child: Text("Read books!"),),
    floatingActionButton: FloatingActionButton(
      child: Text("Crypto"),
      onPressed: () {

      },
    ),
  )));
}
