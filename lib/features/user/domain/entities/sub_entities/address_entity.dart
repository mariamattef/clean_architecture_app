import 'package:clean_arch/features/user/domain/entities/sub_entities/geo_entity.dart';

class AddressEntity {
  final String street;
  final String zipcode;
  final String suite;
  final String city;
  final GeoEntity geo;
  AddressEntity(
      {required this.city,
      required this.street,
      required this.suite,
      required this.zipcode,
      required this.geo});
}
