
import 'dart:convert';
T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}
 

class BusVroom {

    BusVroom({
this.busStopCode,
this.odatametadata,
this.services,
    });

  factory BusVroom.fromJson(Map<String, dynamic> jsonRes){


 final  List<Services>? services = jsonRes['Services'] is List ? <Services>[]: null; 
    if(services!=null) {
 for (final dynamic item in jsonRes['Services']!) { if (item != null) { services.add(Services.fromJson(asT<Map<String,dynamic>>(item)!));  }}
    }
return BusVroom(
    busStopCode : asT<String?>(jsonRes['BusStopCode']),
    odatametadata : asT<String?>(jsonRes['odata.metadata']),
 services:services,);}

  final String? busStopCode;
  final String? odatametadata;
  final List<Services>? services;
  
@override
String  toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'BusStopCode': busStopCode,
        'odata.metadata': odatametadata,
        'Services': services,
};

BusVroom clone() => BusVroom.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);

}

class Services {

    Services({
this.nextBus,
this.nextBus2,
this.nextBus3,
this.operator,
this.serviceNo,
    });

  factory Services.fromJson(Map<String, dynamic> jsonRes)=>Services(
    nextBus :jsonRes['NextBus']==null?null: NextBus.fromJson(asT<Map<String, dynamic>>(jsonRes['NextBus'])!),
    nextBus2 :jsonRes['NextBus2']==null?null: NextBus2.fromJson(asT<Map<String, dynamic>>(jsonRes['NextBus2'])!),
    nextBus3 :jsonRes['NextBus3']==null?null: NextBus3.fromJson(asT<Map<String, dynamic>>(jsonRes['NextBus3'])!),
    operator : asT<String?>(jsonRes['Operator']),
    serviceNo : asT<String?>(jsonRes['ServiceNo']),);

  final NextBus? nextBus;
  final NextBus2? nextBus2;
  final NextBus3? nextBus3;
  final String? operator;
  final String? serviceNo;
  
@override
String  toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'NextBus': nextBus,
        'NextBus2': nextBus2,
        'NextBus3': nextBus3,
        'Operator': operator,
        'ServiceNo': serviceNo,
};

Services clone() => Services.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);

}

class NextBus {

    NextBus({
this.destinationCode,
this.estimatedArrival,
this.feature,
this.latitude,
this.load,
this.longitude,
this.originCode,
this.type,
this.visitNumber,
    });

  factory NextBus.fromJson(Map<String, dynamic> jsonRes)=>NextBus(
    destinationCode : asT<String?>(jsonRes['DestinationCode']),
    estimatedArrival : asT<String?>(jsonRes['EstimatedArrival']),
    feature : asT<String?>(jsonRes['Feature']),
    latitude : asT<String?>(jsonRes['Latitude']),
    load : asT<String?>(jsonRes['Load']),
    longitude : asT<String?>(jsonRes['Longitude']),
    originCode : asT<String?>(jsonRes['OriginCode']),
    type : asT<String?>(jsonRes['Type']),
    visitNumber : asT<String?>(jsonRes['VisitNumber']),);

  final String? destinationCode;
  final String? estimatedArrival;
  final String? feature;
  final String? latitude;
  final String? load;
  final String? longitude;
  final String? originCode;
  final String? type;
  final String? visitNumber;
  
@override
String  toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'DestinationCode': destinationCode,
        'EstimatedArrival': estimatedArrival,
        'Feature': feature,
        'Latitude': latitude,
        'Load': load,
        'Longitude': longitude,
        'OriginCode': originCode,
        'Type': type,
        'VisitNumber': visitNumber,
};

NextBus clone() => NextBus.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);

}

class NextBus2 {

    NextBus2({
this.destinationCode,
this.estimatedArrival,
this.feature,
this.latitude,
this.load,
this.longitude,
this.originCode,
this.type,
this.visitNumber,
    });

  factory NextBus2.fromJson(Map<String, dynamic> jsonRes)=>NextBus2(
    destinationCode : asT<String?>(jsonRes['DestinationCode']),
    estimatedArrival : asT<String?>(jsonRes['EstimatedArrival']),
    feature : asT<String?>(jsonRes['Feature']),
    latitude : asT<String?>(jsonRes['Latitude']),
    load : asT<String?>(jsonRes['Load']),
    longitude : asT<String?>(jsonRes['Longitude']),
    originCode : asT<String?>(jsonRes['OriginCode']),
    type : asT<String?>(jsonRes['Type']),
    visitNumber : asT<String?>(jsonRes['VisitNumber']),);

  final String? destinationCode;
  final String? estimatedArrival;
  final String? feature;
  final String? latitude;
  final String? load;
  final String? longitude;
  final String? originCode;
  final String? type;
  final String? visitNumber;
  
@override
String  toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'DestinationCode': destinationCode,
        'EstimatedArrival': estimatedArrival,
        'Feature': feature,
        'Latitude': latitude,
        'Load': load,
        'Longitude': longitude,
        'OriginCode': originCode,
        'Type': type,
        'VisitNumber': visitNumber,
};

NextBus2 clone() => NextBus2.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);

}

class NextBus3 {

    NextBus3({
this.destinationCode,
this.estimatedArrival,
this.feature,
this.latitude,
this.load,
this.longitude,
this.originCode,
this.type,
this.visitNumber,
    });

  factory NextBus3.fromJson(Map<String, dynamic> jsonRes)=>NextBus3(
    destinationCode : asT<String?>(jsonRes['DestinationCode']),
    estimatedArrival : asT<String?>(jsonRes['EstimatedArrival']),
    feature : asT<String?>(jsonRes['Feature']),
    latitude : asT<String?>(jsonRes['Latitude']),
    load : asT<String?>(jsonRes['Load']),
    longitude : asT<String?>(jsonRes['Longitude']),
    originCode : asT<String?>(jsonRes['OriginCode']),
    type : asT<String?>(jsonRes['Type']),
    visitNumber : asT<String?>(jsonRes['VisitNumber']),);

  final String? destinationCode;
  final String? estimatedArrival;
  final String? feature;
  final String? latitude;
  final String? load;
  final String? longitude;
  final String? originCode;
  final String? type;
  final String? visitNumber;


  //to change the encodings
@override
String  toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'DestinationCode': destinationCode,
        'EstimatedArrival': estimatedArrival,
        'Feature': feature,
        'Latitude': latitude,
        'Load': load,
        'Longitude': longitude,
        'OriginCode': originCode,
        'Type': type,
        'VisitNumber': visitNumber,
};

NextBus3 clone() => NextBus3.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);

}