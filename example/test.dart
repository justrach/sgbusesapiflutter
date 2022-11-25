import 'package:sg_bus_api/sg_bus_api.dart';

Future<void> main(List<String> args) async {
  var x = await SGBusAPI.getBusStopInformation("19081");
  print(x);
}
