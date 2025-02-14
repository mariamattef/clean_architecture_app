import 'package:clean_arch/core/databases/api/end_points.dart';
import 'package:clean_arch/features/user/data/models/user/geo.dart';
import 'package:clean_arch/features/user/domain/entities/sub_entities/address_entity.dart';

class Address extends AddressEntity {
  Address({
    required super.city,
    required super.street,
    required super.suite,
    required super.zipcode,
    required super.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json[ApiKey.street],
        suite: json[ApiKey.suite],
        city: json[ApiKey.city],
        zipcode: json[ApiKey.zipcode],
        geo: Geo.fromJson(json[ApiKey.geo]),
      );

  Map<String, dynamic> toJson() => {
        ApiKey.street: street,
        ApiKey.suite: suite,
        ApiKey.city: city,
        ApiKey.zipcode: zipcode,
        ApiKey.geo: geo,
      };

  // @override
  // List<Object?> get props => [street, suite, city, zipcode, geo];
}
