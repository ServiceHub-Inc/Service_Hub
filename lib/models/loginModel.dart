// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

List<String> userDataListFromMap(UserData user) {
  Map<String, dynamic> userMap = user.toJson();
  return userMap.entries.map((entry) => entry.value.toString()).toList();
}

UserData userDataFromList(List<String> userDataList) {
  if (userDataList == null || userDataList.isEmpty) {
    return null;
  } else {
    return UserData(
      userId: userDataList[0],
      firstName: userDataList[1],
      lastName: userDataList[2],
      phone: userDataList[3],
      email: userDataList[4],
      userRole: userDataList[5],
      photo: userDataList[6]);
  }
  
}

class LoginModel {
  LoginModel({
    this.code,
    this.message,
    this.data,
  });

  String code;
  String message;
  UserData data;

  LoginModel copyWith({
    String code,
    String message,
    UserData data,
  }) =>
      LoginModel(
        code: code ?? this.code,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        code: json["code"],
        message: json["message"],
        data: UserData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data.toJson(),
      };
}

class UserData {
  UserData({
    this.userId,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.userRole,
    this.photo,
  });

  String userId;
  String firstName;
  String lastName;
  String phone;
  String email;
  dynamic userRole;
  dynamic photo;

  UserData copyWith({
    String userId,
    String firstName,
    String lastName,
    String phone,
    String email,
    dynamic userRole,
    dynamic photo,
  }) =>
      UserData(
        userId: userId ?? this.userId,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        userRole: userRole ?? this.userRole,
        photo: photo ?? this.photo,
      );

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        userId: json["user_id"].toString(),
        firstName: json["first_name"],
        lastName: json["last_name"],
        phone: json["phone"],
        email: json["email"],
        userRole: json["user_role"],
        photo: json["photo"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "first_name": firstName,
        "last_name": lastName,
        "phone": phone,
        "email": email,
        "user_role": userRole,
        "photo": photo,
      };
}
