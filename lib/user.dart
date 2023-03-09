import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
    int id,
    String name,
    String username,
    String email,
    String avatar,
  ) = _User;

  factory User.fromJson(Map<String, Object?> json)
      => _$UserFromJson(json);
}