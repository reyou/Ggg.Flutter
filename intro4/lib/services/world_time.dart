import 'dart:convert';

import 'package:http/http.dart';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;
  WorldTime(this.location, this.flag, this.url);

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/${url}"));
      Map data = jsonDecode(response.body);
      String dateTime = data["datetime"];
      DateTime now = DateTime.parse(dateTime);
      time = now.toString();
    }
    catch(e) {
      print("Caught error: ${e}.");
    }
  }
}


