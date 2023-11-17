import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
abstract class User with _$User
{
  factory User({String name, String username, String email}) = _User;

  factory User.fromJson (Map<String, dynamic> json) => _$UserFromJson(json);
}