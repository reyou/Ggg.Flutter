import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;
  bool isDayTime = false;
  WorldTime(this.location, this.flag, this.url);

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/${url}"));
      Map data = jsonDecode(response.body);
      String dateTime = data["datetime"];
      DateTime now = DateTime.parse(dateTime);
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch(e) {
      print("Caught error: ${e}.");
    }
  }
}


