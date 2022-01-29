import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> setupWorldTime() async {
    WorldTime instance = WorldTime("Berlin", "germany.png", "Europe/Berlin");
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text('Loading...'),
      ),
    );
  }
}
