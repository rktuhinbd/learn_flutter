import 'dart:convert';

import 'package:http/http.dart';

class WorldTime {
  String flag;
  String url;
  String dateTime;
  String location;
  int gmtOffset;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(
          'https://timezone.abstractapi.com/v1/current_time/?api_key=d4406ab81f8143d4994c0c472c48bece&location=$location');
      Map data = jsonDecode(response.body);

      dateTime = data['datetime'];
      gmtOffset = data['gmt_offset'];
    } catch (e) {
      print("Error: $e");
    }
  }
}
