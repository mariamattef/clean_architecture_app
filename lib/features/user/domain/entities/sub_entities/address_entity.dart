
import 'package:clean_arch/features/user/domain/entities/sub_entities/geo_entity.dart';

class AddressEntity{
   final String street;
  final String zipcode;
  final String suite;
  final String city;
  final GeoEntity geo;
  AddressEntity(this.city, this.street, this.suite, this.zipcode, this.geo);
}
