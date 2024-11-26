// To parse this JSON data, do
//
//     final userResponseModel = userResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_response_model.g.dart';

UserResponseModel userResponseModelFromJson(String str) => UserResponseModel.fromJson(json.decode(str));

String userResponseModelToJson(UserResponseModel data) => json.encode(data.toJson());

@JsonSerializable()
class UserResponseModel {
  @JsonKey(name: "page")
  int page;
  @JsonKey(name: "per_page")
  int perPage;
  @JsonKey(name: "total")
  int total;
  @JsonKey(name: "total_pages")
  int totalPages;
  @JsonKey(name: "data")
  List<Datum> data;

  UserResponseModel({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) => _$UserResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "first_name")
  String firstName;
  @JsonKey(name: "last_name")
  String lastName;
  @JsonKey(name: "avatar")
  String avatar;

  Datum({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
