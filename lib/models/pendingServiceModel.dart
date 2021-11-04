// To parse this JSON data, do
//
//     final pendingServiceModel = pendingServiceModelFromJson(jsonString);

import 'dart:convert';

PendingServiceModel pendingServiceModelFromJson(String str) =>
    PendingServiceModel.fromJson(json.decode(str));

String pendingServiceModelToJson(PendingServiceModel data) =>
    json.encode(data.toJson());

class PendingServiceModel {
  PendingServiceModel({
    this.code,
    this.message,
    this.data,
  });

  String code;
  String message;
  List<PendingServiceDatum> data;

  PendingServiceModel copyWith({
    String code,
    String message,
    List<PendingServiceDatum> data,
  }) =>
      PendingServiceModel(
        code: code ?? this.code,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory PendingServiceModel.fromJson(Map<String, dynamic> json) =>
      PendingServiceModel(
        code: json["code"],
        message: json["message"],
        data: List<PendingServiceDatum>.from(
            json["data"].map((x) => PendingServiceDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class PendingServiceDatum {
  PendingServiceDatum({
    this.id,
    this.nameOfPerson,
    this.contactOfPerson,
    this.requester,
    this.geo,
    this.location,
    this.startDate,
    this.startTime,
    this.endTime,
    this.endDate,
    this.expectedDuration,
    this.requestDescription,
    this.feesCharged,
    this.requestType,
    this.serviceId,
    this.serviceProviderId,
    this.status,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  String id;
  String nameOfPerson;
  String contactOfPerson;
  String requester;
  String geo;
  String location;
  DateTime startDate;
  String startTime;
  String endTime;
  DateTime endDate;
  String expectedDuration;
  String requestDescription;
  String feesCharged;
  String requestType;
  List<ServiceId> serviceId;
  List<ServiceProviderId> serviceProviderId;
  String status;
  String createdBy;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  PendingServiceDatum copyWith({
    String id,
    String nameOfPerson,
    String contactOfPerson,
    String requester,
    String geo,
    String location,
    DateTime startDate,
    String startTime,
    String endTime,
    DateTime endDate,
    String expectedDuration,
    String requestDescription,
    String feesCharged,
    String requestType,
    List<ServiceId> serviceId,
    List<ServiceProviderId> serviceProviderId,
    String status,
    String createdBy,
    DateTime createdAt,
    DateTime updatedAt,
    dynamic deletedAt,
  }) =>
      PendingServiceDatum(
        id: id ?? this.id,
        nameOfPerson: nameOfPerson ?? this.nameOfPerson,
        contactOfPerson: contactOfPerson ?? this.contactOfPerson,
        requester: requester ?? this.requester,
        geo: geo ?? this.geo,
        location: location ?? this.location,
        startDate: startDate ?? this.startDate,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        endDate: endDate ?? this.endDate,
        expectedDuration: expectedDuration ?? this.expectedDuration,
        requestDescription: requestDescription ?? this.requestDescription,
        feesCharged: feesCharged ?? this.feesCharged,
        requestType: requestType ?? this.requestType,
        serviceId: serviceId ?? this.serviceId,
        serviceProviderId: serviceProviderId ?? this.serviceProviderId,
        status: status ?? this.status,
        createdBy: createdBy ?? this.createdBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );

  factory PendingServiceDatum.fromJson(Map<String, dynamic> json) =>
      PendingServiceDatum(
        id: json["id"],
        nameOfPerson: json["name_of_person"],
        contactOfPerson: json["contact_of_person"],
        requester: json["requester"] == null ? null : json["requester"],
        geo: json["geo_"],
        location: json["location_"],
        startDate: DateTime.parse(json["start_date"]),
        startTime: json["start_time"],
        endTime: json["end_time"],
        endDate: DateTime.parse(json["end_date"]),
        expectedDuration: json["expected_duration"],
        requestDescription: json["request_description"],
        feesCharged: json["fees_charged"],
        requestType: json["request_type"],
        serviceId: List<ServiceId>.from(
            json["service_id"].map((x) => ServiceId.fromJson(x))),
        serviceProviderId: List<ServiceProviderId>.from(
            json["service_provider_id"]
                .map((x) => ServiceProviderId.fromJson(x))),
        status: json["status"],
        createdBy: json["created_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name_of_person": nameOfPerson,
        "contact_of_person": contactOfPerson,
        "requester": requester == null ? null : requester,
        "geo_": geo,
        "location_": location,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "start_time": startTime,
        "end_time": endTime,
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "expected_duration": expectedDuration,
        "request_description": requestDescription,
        "fees_charged": feesCharged,
        "request_type": requestType,
        "service_id": List<dynamic>.from(serviceId.map((x) => x.toJson())),
        "service_provider_id":
            List<dynamic>.from(serviceProviderId.map((x) => x.toJson())),
        "status": status,
        "created_by": createdBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

class ServiceId {
  ServiceId({
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

  ServiceId copyWith({
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
  }) =>
      ServiceId(
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
      );

  factory ServiceId.fromJson(Map<String, dynamic> json) => ServiceId(
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
      };
}

class ServiceProviderId {
  ServiceProviderId({
    this.id,
    this.userId,
    this.image,
    this.providerType,
    this.idType,
    this.idNumber,
    this.highestEducation,
    this.skills,
    this.offerDescription,
    this.refereeName,
    this.refereeContact,
    this.relationshipOfReferee,
    this.corporateName,
    this.corporateEmail,
    this.corporateDateOfIncorporation,
    this.corporatePhoneNo,
    this.corporateLiasing,
    this.corporateLiasingContact,
    this.location,
    this.attachment,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  String id;
  List<Map<String, String>> userId;
  String image;
  String providerType;
  String idType;
  String idNumber;
  String highestEducation;
  String skills;
  String offerDescription;
  String refereeName;
  String refereeContact;
  String relationshipOfReferee;
  dynamic corporateName;
  dynamic corporateEmail;
  dynamic corporateDateOfIncorporation;
  dynamic corporatePhoneNo;
  dynamic corporateLiasing;
  dynamic corporateLiasingContact;
  String location;
  dynamic attachment;
  String createdBy;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  ServiceProviderId copyWith({
    String id,
    List<Map<String, String>> userId,
    String image,
    String providerType,
    String idType,
    String idNumber,
    String highestEducation,
    String skills,
    String offerDescription,
    String refereeName,
    String refereeContact,
    String relationshipOfReferee,
    dynamic corporateName,
    dynamic corporateEmail,
    dynamic corporateDateOfIncorporation,
    dynamic corporatePhoneNo,
    dynamic corporateLiasing,
    dynamic corporateLiasingContact,
    String location,
    dynamic attachment,
    String createdBy,
    DateTime createdAt,
    DateTime updatedAt,
    dynamic deletedAt,
  }) =>
      ServiceProviderId(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        image: image ?? this.image,
        providerType: providerType ?? this.providerType,
        idType: idType ?? this.idType,
        idNumber: idNumber ?? this.idNumber,
        highestEducation: highestEducation ?? this.highestEducation,
        skills: skills ?? this.skills,
        offerDescription: offerDescription ?? this.offerDescription,
        refereeName: refereeName ?? this.refereeName,
        refereeContact: refereeContact ?? this.refereeContact,
        relationshipOfReferee:
            relationshipOfReferee ?? this.relationshipOfReferee,
        corporateName: corporateName ?? this.corporateName,
        corporateEmail: corporateEmail ?? this.corporateEmail,
        corporateDateOfIncorporation:
            corporateDateOfIncorporation ?? this.corporateDateOfIncorporation,
        corporatePhoneNo: corporatePhoneNo ?? this.corporatePhoneNo,
        corporateLiasing: corporateLiasing ?? this.corporateLiasing,
        corporateLiasingContact:
            corporateLiasingContact ?? this.corporateLiasingContact,
        location: location ?? this.location,
        attachment: attachment ?? this.attachment,
        createdBy: createdBy ?? this.createdBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );

  factory ServiceProviderId.fromJson(Map<String, dynamic> json) =>
      ServiceProviderId(
        id: json["id"],
        userId: List<Map<String, String>>.from(json["user_id"].map((x) =>
            Map.from(x).map(
                (k, v) => MapEntry<String, String>(k, v == null ? null : v)))),
        image: json["image"],
        providerType: json["provider_type"],
        idType: json["id_type"],
        idNumber: json["id_number"],
        highestEducation: json["highest_education"],
        skills: json["skills"],
        offerDescription: json["offer_description"],
        refereeName: json["referee_name"],
        refereeContact: json["referee_contact"],
        relationshipOfReferee: json["relationship_of_referee"],
        corporateName: json["corporate_name"],
        corporateEmail: json["corporate_email"],
        corporateDateOfIncorporation: json["corporate_date_of_incorporation"],
        corporatePhoneNo: json["corporate_phone_no"],
        corporateLiasing: json["corporate_liasing"],
        corporateLiasingContact: json["corporate_liasing_contact"],
        location: json["location"],
        attachment: json["attachment"],
        createdBy: json["created_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": List<dynamic>.from(userId.map((x) => Map.from(x).map(
            (k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)))),
        "image": image,
        "provider_type": providerType,
        "id_type": idType,
        "id_number": idNumber,
        "highest_education": highestEducation,
        "skills": skills,
        "offer_description": offerDescription,
        "referee_name": refereeName,
        "referee_contact": refereeContact,
        "relationship_of_referee": relationshipOfReferee,
        "corporate_name": corporateName,
        "corporate_email": corporateEmail,
        "corporate_date_of_incorporation": corporateDateOfIncorporation,
        "corporate_phone_no": corporatePhoneNo,
        "corporate_liasing": corporateLiasing,
        "corporate_liasing_contact": corporateLiasingContact,
        "location": location,
        "attachment": attachment,
        "created_by": createdBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
