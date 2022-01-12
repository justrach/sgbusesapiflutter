library bus_api;

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:sg_bus_api/src/bus_model.dart';


class SGBusAPI{
  //INPUT: Bus Stop 
  //returns a Future With a List of Services that the Bus Stop has
 static Future<List<Services>> getBusStopInformation(String busStopID) async {

   Dio dio = Dio();
    final response = await dio.get(
 
            "https://www.rach.codes/api/bustiming?id==$busStopID",
        );


    var x = json
        .decode(response.data)["Services"]
        .map((data) => Services.fromJson(data))
        .toList();
    List<Services> streetsList = List<Services>.from(x);
    return streetsList;
  }

}
