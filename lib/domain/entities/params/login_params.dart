// To parse this JSON data, do
//
//     final loginParams = loginParamsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'login_params.g.dart';

LoginParams loginParamsFromJson(String str) => LoginParams.fromJson(json.decode(str));

String loginParamsToJson(LoginParams data) => json.encode(data.toJson());

@JsonSerializable()
class LoginParams {
  @JsonKey(name: "username")
  String username;
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "password")
  String password;

  LoginParams({
    required this.username,
    required this.email,
    required this.password,
  });

  factory LoginParams.fromJson(Map<String, dynamic> json) => _$LoginParamsFromJson(json);

  Map<String, dynamic> toJson() => _$LoginParamsToJson(this);
}
