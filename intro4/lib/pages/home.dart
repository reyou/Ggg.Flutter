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

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
    print("Build is running:");
    print(data);

    String bgImage = data["isDayTime"] ? "day.png" : "night.png";
    Color? bgColor = data["isDayTime"] ? Colors.blue : Colors.indigo[700];


    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/${bgImage}"),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB( 0,  120,  0,  0),
          child:  Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: ()=>{},
                        icon: Icon(Icons.edit_location),
                        color: Colors.grey[300]),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        dynamic result = await Navigator.pushNamed(context, "/location");
                        setState(() {
                          data = {
                            'time': result['time'],
                            'location': result['location'],
                            'isDayTime': result['isDayTime'],
                            'flag': result['flag'],
                          };
                        });
                      } ,
                      child: const Text('Edit location',
                      style: TextStyle(
                        color: Colors.grey
                      ),),
                    ),
                  ],),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data["location"],
                      style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 2
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  data["time"],
                  style: TextStyle(
                    fontSize: 66
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
