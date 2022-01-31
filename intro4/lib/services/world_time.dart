import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for UI
  String? time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool? isDaytime; // true or false if daytime or not
  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {
    try {
      print("Start getTime()");
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/${url}"));
      print("Response: ${response.body}");
      Map data = jsonDecode(response.body);
      String dateTime = data["datetime"];
      DateTime now = DateTime.parse(dateTime);
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      print("now: ${now}");
      print("time: ${time}");
      print("End getTime()");
    }
    catch(e) {
      print("Caught error: ${e}.");
    }
  }

  printString() {
    String buildString = "";
    buildString += "time: ${this.time}";
    buildString += " flag: ${this.flag}";
    buildString += " isDaytime: ${this.isDaytime}";
    buildString += " location: ${this.location}";
    buildString += " url: ${this.url}";
    return buildString;
  }
}


