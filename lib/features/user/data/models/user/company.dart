import 'package:clean_arch/core/databases/api/end_points.dart';
import 'package:equatable/equatable.dart';

class Company {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  const Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json[ApiKey.name],
        catchPhrase: json[ApiKey.catchPhrase] ,
        bs: json[ApiKey.bs] ,
      );

  Map<String, dynamic> toJson() => {
       ApiKey.name : name,
        ApiKey.catchPhrase: catchPhrase,
        ApiKey.bs: bs,
      };

  // @override
  // List<Object?> get props => [name, catchPhrase, bs];
}
