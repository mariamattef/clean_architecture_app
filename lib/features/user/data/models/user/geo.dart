import 'package:clean_arch/core/databases/api/end_points.dart';
import 'package:clean_arch/features/user/domain/entities/sub_entities/geo_entity.dart';

class Geo extends GeoEntity {

 Geo({required super.lat,required super.lng});

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json[ApiKey.lat] ,
        lng: json[ApiKey.lng] ,
      );

  Map<String, dynamic> toJson() => {
        ApiKey.lat: lat,
        ApiKey.lng: lng,
      };

  // @override
  // List<Object?> get props => [lat, lng];
}
