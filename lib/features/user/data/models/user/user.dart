import 'package:clean_arch/core/databases/api/end_points.dart';
import 'package:clean_arch/features/user/data/models/user/address.dart';
import '../../../domain/entities/user_entity.dart';
import 'company.dart';

class User extends UserEntity {
  int? id;
  final String? username;
  final String? website;
  final Company? company;
  User({
    required this.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.address,
    this.username,
    this.website,
    this.company,
  });
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json[ApiKey.id] as int?,
        name: json[ApiKey.name],
        username: json[ApiKey.username],
        email: json[ApiKey.email],
        address:Address.fromJson(json[ApiKey.address]) ,
        phone: json[ApiKey.phone],
        website: json[ApiKey.website],
        company:Company.fromJson(json[ApiKey.company]) ,
      );

  Map<String, dynamic> toJson() => {
        ApiKey.id: id,
        ApiKey.name: name,
        ApiKey.username: username,
        ApiKey.email: email,
        ApiKey.address: address,
       ApiKey.phone: phone,
       ApiKey.website: website,
      ApiKey.company: company?.toJson(),
      };

  // @override
  // List<Object?> get props {
  //   return [
  //     id,
  //     name,
  //     username,
  //     email,
  //     address,
  //     phone,
  //     website,
  //     company,
  //   ];
  // }
}
