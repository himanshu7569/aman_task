const String tableLocation = 'location';

class LocationFields {
  static const String id = '_id';
  static const String long = 'long';
  static const String lat = 'lat';
}

class Location {
  int? id;
  String? long;
  String? lat;

  Location({this.id, required this.long, required this.lat});

  Map<String, Object?> toJson() => {
        LocationFields.id: id,
        LocationFields.lat: lat,
        LocationFields.long: long,
      };

  Location copy({int? id, String? long, String? lat}) => Location(
      id: id ?? this.id, long: long ?? this.long, lat: lat ?? this.lat);

  Location.fromMap(Map<String, Object?> map) {
    id = 1;
    long = map[long].toString();
    lat = map[lat].toString();
  }
}
