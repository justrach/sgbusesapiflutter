import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class BusVroom {
  BusVroom({
    this.data,
  });

  factory BusVroom.fromJson(Map<String, dynamic> json) => BusVroom(
        data: json['data'] == null
            ? null
            : Data.fromJson(asT<Map<String, dynamic>>(json['data'])!),
      );

  Data? data;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
      };
}

class Data {
  Data({
    this.services,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    final List<Services>? services =
        json['services'] is List ? <Services>[] : null;
    if (services != null) {
      for (final dynamic item in json['services']!) {
        if (item != null) {
          services.add(Services.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }
    return Data(
      services: services,
    );
  }

  List<Services>? services;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'services': services,
      };
}

class Services {
  Services({
    this.no,
    this.operator1669391226589797,
    this.next,
    this.subsequent,
    this.next2,
    this.next3,
  });

  factory Services.fromJson(Map<String, dynamic> json) => Services(
        no: asT<String?>(json['no']),
        operator1669391226589797: asT<String?>(json['operator']),
        next: json['next'] == null
            ? null
            : Next.fromJson(asT<Map<String, dynamic>>(json['next'])!),
        subsequent: json['subsequent'] == null
            ? null
            : Subsequent.fromJson(
                asT<Map<String, dynamic>>(json['subsequent'])!),
        next2: json['next2'] == null
            ? null
            : Next2.fromJson(asT<Map<String, dynamic>>(json['next2'])!),
        next3: asT<Object?>(json['next3']),
      );

  String? no;
  String? operator1669391226589797;
  Next? next;
  Subsequent? subsequent;
  Next2? next2;
  Object? next3;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'no': no,
        'operator': operator1669391226589797,
        'next': next,
        'subsequent': subsequent,
        'next2': next2,
        'next3': next3,
      };
}

class Next {
  Next({
    this.time,
    this.durationMs,
    this.lat,
    this.lng,
    this.load,
    this.feature,
    this.type,
    this.visitNumber,
    this.originCode,
    this.destinationCode,
  });

  factory Next.fromJson(Map<String, dynamic> json) => Next(
        time: asT<String?>(json['time']),
        durationMs: asT<int?>(json['duration_ms']),
        lat: asT<double?>(json['lat']),
        lng: asT<double?>(json['lng']),
        load: asT<String?>(json['load']),
        feature: asT<String?>(json['feature']),
        type: asT<String?>(json['type']),
        visitNumber: asT<int?>(json['visit_number']),
        originCode: asT<String?>(json['origin_code']),
        destinationCode: asT<String?>(json['destination_code']),
      );

  String? time;
  int? durationMs;
  double? lat;
  double? lng;
  String? load;
  String? feature;
  String? type;
  int? visitNumber;
  String? originCode;
  String? destinationCode;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'time': time,
        'duration_ms': durationMs,
        'lat': lat,
        'lng': lng,
        'load': load,
        'feature': feature,
        'type': type,
        'visit_number': visitNumber,
        'origin_code': originCode,
        'destination_code': destinationCode,
      };
}

class Subsequent {
  Subsequent({
    this.time,
    this.durationMs,
    this.lat,
    this.lng,
    this.load,
    this.feature,
    this.type,
    this.visitNumber,
    this.originCode,
    this.destinationCode,
  });

  factory Subsequent.fromJson(Map<String, dynamic> json) => Subsequent(
        time: asT<String?>(json['time']),
        durationMs: asT<int?>(json['duration_ms']),
        lat: asT<int?>(json['lat']),
        lng: asT<int?>(json['lng']),
        load: asT<String?>(json['load']),
        feature: asT<String?>(json['feature']),
        type: asT<String?>(json['type']),
        visitNumber: asT<int?>(json['visit_number']),
        originCode: asT<String?>(json['origin_code']),
        destinationCode: asT<String?>(json['destination_code']),
      );

  String? time;
  int? durationMs;
  int? lat;
  int? lng;
  String? load;
  String? feature;
  String? type;
  int? visitNumber;
  String? originCode;
  String? destinationCode;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'time': time,
        'duration_ms': durationMs,
        'lat': lat,
        'lng': lng,
        'load': load,
        'feature': feature,
        'type': type,
        'visit_number': visitNumber,
        'origin_code': originCode,
        'destination_code': destinationCode,
      };
}

class Next2 {
  Next2({
    this.time,
    this.durationMs,
    this.lat,
    this.lng,
    this.load,
    this.feature,
    this.type,
    this.visitNumber,
    this.originCode,
    this.destinationCode,
  });

  factory Next2.fromJson(Map<String, dynamic> json) => Next2(
        time: asT<String?>(json['time']),
        durationMs: asT<int?>(json['duration_ms']),
        lat: asT<int?>(json['lat']),
        lng: asT<int?>(json['lng']),
        load: asT<String?>(json['load']),
        feature: asT<String?>(json['feature']),
        type: asT<String?>(json['type']),
        visitNumber: asT<int?>(json['visit_number']),
        originCode: asT<String?>(json['origin_code']),
        destinationCode: asT<String?>(json['destination_code']),
      );

  String? time;
  int? durationMs;
  int? lat;
  int? lng;
  String? load;
  String? feature;
  String? type;
  int? visitNumber;
  String? originCode;
  String? destinationCode;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'time': time,
        'duration_ms': durationMs,
        'lat': lat,
        'lng': lng,
        'load': load,
        'feature': feature,
        'type': type,
        'visit_number': visitNumber,
        'origin_code': originCode,
        'destination_code': destinationCode,
      };
}
