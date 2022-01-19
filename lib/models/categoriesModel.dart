// To parse this JSON data, do
//
//     final serviceCategoriesModel = serviceCategoriesModelFromJson(jsonString);

import 'dart:convert';

ServiceCategoriesModel serviceCategoriesModelFromJson(String str) =>
    ServiceCategoriesModel.fromJson(json.decode(str));

String serviceCategoriesModelToJson(ServiceCategoriesModel data) =>
    json.encode(data.toJson());

class ServiceCategoriesModel {
  ServiceCategoriesModel({
    this.code,
    this.message,
    this.data,
  });

  String code;
  String message;
  List<CategoryDatum> data;

  ServiceCategoriesModel copyWith({
    String code,
    String message,
    List<CategoryDatum> data,
  }) =>
      ServiceCategoriesModel(
        code: code ?? this.code,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory ServiceCategoriesModel.fromJson(Map<String, dynamic> json) =>
      ServiceCategoriesModel(
        code: json["code"],
        message: json["message"],
        data: List<CategoryDatum>.from(
            json["data"].map((x) => CategoryDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class CategoryDatum {
  CategoryDatum({
    this.id,
    this.description,
    this.name,
    this.banner,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  String id;
  String description;
  String name;
  String banner;
  String createdBy;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  CategoryDatum copyWith({
    String id,
    String description,
    String name,
    String banner,
    String createdBy,
    DateTime createdAt,
    DateTime updatedAt,
    dynamic deletedAt,
  }) =>
      CategoryDatum(
        id: id ?? this.id,
        description: description ?? this.description,
        name: name ?? this.name,
        banner: banner ?? this.banner,
        createdBy: createdBy ?? this.createdBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );

  factory CategoryDatum.fromJson(Map<String, dynamic> json) => CategoryDatum(
        id: json["id"],
        description: json["description"],
        name: json["name"],
        banner: json["banner"],
        createdBy: json["created_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "name": name,
        "banner": banner,
        "created_by": createdBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
