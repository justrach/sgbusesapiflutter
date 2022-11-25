library bus_api;

import 'dart:convert';
import 'package:sg_bus_api/src/bus_model.dart';
import 'package:http/http.dart' as http;

class SGBusAPI {
  //INPUT: Bus Stop
  //returns a Future With a List of Services that the Bus Stop has
  static Future<List<Services>> getBusStopInformation(String busStopID) async {
    final response = await http.get(
      Uri.parse("https://www.rach.codes/api/bustiming?id=${busStopID}"),
      // headers: {"AccountKey": "bkGxFUZWTkSpnymtSGJdJQ=="}
    );
    // print(response.body);
    var x = json.decode(response.body)['data']['services']
    .map((data) => Services.fromJson(data))
    .toList();
    print(x);
    List<Services> streetsList = List<Services>.from(x);
    return streetsList;
  }
}
