// To parse this JSON data, do
//
//     final promotedServiceModel = promotedServiceModelFromJson(jsonString);

import 'dart:convert';

PromotedServiceModel promotedServiceModelFromJson(String str) =>
    PromotedServiceModel.fromJson(json.decode(str));

String promotedServiceModelToJson(PromotedServiceModel data) =>
    json.encode(data.toJson());

class PromotedServiceModel {
  PromotedServiceModel({
    this.code,
    this.message,
    this.data,
  });

  String code;
  String message;
  List<PromotedServiceDatum> data;

  PromotedServiceModel copyWith({
    String code,
    String message,
    List<PromotedServiceDatum> data,
  }) =>
      PromotedServiceModel(
        code: code ?? this.code,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory PromotedServiceModel.fromJson(Map<String, dynamic> json) =>
      PromotedServiceModel(
        code: json["code"],
        message: json["message"],
        data: List<PromotedServiceDatum>.from(
            json["data"].map((x) => PromotedServiceDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class PromotedServiceDatum {
  PromotedServiceDatum({
    this.id,
    this.providerId,
    this.price,
    this.discount,
    this.title,
    this.description,
    this.banner,
    this.attachment,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.isPromoted,
    this.promotionDetail,
    this.promotionServiceFee,
    this.promotionStartDate,
    this.promotionStartTime,
    this.promotionEndDate,
    this.promotionEndTime,
    this.promotionAmountPaid,
    this.promotionServiceBanner,
    this.promotionCreatedAt,
    this.promotionUpdatedAt,
    this.providerFirstname,
    this.providerLastname,
    this.providerPhoto,
  });

  String id;
  String providerId;
  String price;
  String discount;
  String title;
  String description;
  String banner;
  dynamic attachment;
  String createdBy;
  DateTime createdAt;
  DateTime updatedAt;
  String isPromoted;
  String promotionDetail;
  String promotionServiceFee;
  String promotionStartDate;
  String promotionStartTime;
  String promotionEndDate;
  String promotionEndTime;
  String promotionAmountPaid;
  String promotionServiceBanner;
  String promotionCreatedAt;
  String promotionUpdatedAt;
  String providerFirstname;
  String providerLastname;
  dynamic providerPhoto;

  PromotedServiceDatum copyWith({
    String id,
    String providerId,
    String price,
    String discount,
    String title,
    String description,
    String banner,
    dynamic attachment,
    String createdBy,
    DateTime createdAt,
    DateTime updatedAt,
    String isPromoted,
    String promotionDetail,
    String promotionServiceFee,
    String promotionStartDate,
    String promotionStartTime,
    String promotionEndDate,
    String promotionEndTime,
    String promotionAmountPaid,
    String promotionServiceBanner,
    String promotionCreatedAt,
    String promotionUpdatedAt,
    String providerFirstname,
    String providerLastname,
    dynamic providerPhoto,
  }) =>
      PromotedServiceDatum(
        id: id ?? this.id,
        providerId: providerId ?? this.providerId,
        price: price ?? this.price,
        discount: discount ?? this.discount,
        title: title ?? this.title,
        description: description ?? this.description,
        banner: banner ?? this.banner,
        attachment: attachment ?? this.attachment,
        createdBy: createdBy ?? this.createdBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isPromoted: isPromoted ?? this.isPromoted,
        promotionDetail: promotionDetail ?? this.promotionDetail,
        promotionServiceFee: promotionServiceFee ?? this.promotionServiceFee,
        promotionStartDate: promotionStartDate ?? this.promotionStartDate,
        promotionStartTime: promotionStartTime ?? this.promotionStartTime,
        promotionEndDate: promotionEndDate ?? this.promotionEndDate,
        promotionEndTime: promotionEndTime ?? this.promotionEndTime,
        promotionAmountPaid: promotionAmountPaid ?? this.promotionAmountPaid,
        promotionServiceBanner:
            promotionServiceBanner ?? this.promotionServiceBanner,
        promotionCreatedAt: promotionCreatedAt ?? this.promotionCreatedAt,
        promotionUpdatedAt: promotionUpdatedAt ?? this.promotionUpdatedAt,
        providerFirstname: providerFirstname ?? this.providerFirstname,
        providerLastname: providerLastname ?? this.providerLastname,
        providerPhoto: providerPhoto ?? this.providerPhoto,
      );

  factory PromotedServiceDatum.fromJson(Map<String, dynamic> json) =>
      PromotedServiceDatum(
        id: json["id"],
        providerId: json["provider_id"],
        price: json["price"],
        discount: json["discount"],
        title: json["title"],
        description: json["description"],
        banner: json["banner"],
        attachment: json["attachment"],
        createdBy: json["created_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        isPromoted: json["is_promoted"],
        promotionDetail: json["promotion_detail"],
        promotionServiceFee: json["promotion_service_fee"],
        promotionStartDate: json["promotion_start_date"],
        promotionStartTime: json["promotion_start_time"],
        promotionEndDate: json["promotion_end_date"],
        promotionEndTime: json["promotion_end_time"],
        promotionAmountPaid: json["promotion_amount_paid"],
        promotionServiceBanner: json["promotion_service_banner"],
        promotionCreatedAt: json["promotion_created_at"],
        promotionUpdatedAt: json["promotion_updated_at"],
        providerFirstname: json["provider_firstname"],
        providerLastname: json["provider_lastname"],
        providerPhoto: json["provider_photo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "provider_id": providerId,
        "price": price,
        "discount": discount,
        "title": title,
        "description": description,
        "banner": banner,
        "attachment": attachment,
        "created_by": createdBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "is_promoted": isPromoted,
        "promotion_detail": promotionDetail,
        "promotion_service_fee": promotionServiceFee,
        "promotion_start_date": promotionStartDate,
        "promotion_start_time": promotionStartTime,
        "promotion_end_date": promotionEndDate,
        "promotion_end_time": promotionEndTime,
        "promotion_amount_paid": promotionAmountPaid,
        "promotion_service_banner": promotionServiceBanner,
        "promotion_created_at": promotionCreatedAt,
        "promotion_updated_at": promotionUpdatedAt,
        "provider_firstname": providerFirstname,
        "provider_lastname": providerLastname,
        "provider_photo": providerPhoto,
      };
}
