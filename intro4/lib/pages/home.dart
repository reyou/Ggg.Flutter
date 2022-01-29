import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    return Scaffold(
      body: SafeArea(child: Column(
        children: [
           Container(
             color: Colors.transparent,
             child: Row(
               children: [
                 IconButton(
                     onPressed: ()=>{},
                     icon: Icon(Icons.edit_location)),
                 TextButton(
                   style: TextButton.styleFrom(
                     textStyle: const TextStyle(fontSize: 20),
                   ),
                   onPressed: () =>{
                     Navigator.pushNamed(context, "/location")
                   } ,
                   child: const Text('Edit location'),
                 ),
               ],
             ),
           )
        ],
      )),
    );
  }
}
