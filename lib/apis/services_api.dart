import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:servicehub/models/loginModel.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'package:servicehub/utils/constants.dart';

class ServicesApi {
  static Future pendingServices({String email, String password}) async {
    print("API called");
    final url = "${Constants.url}/pending-services";
    print(url);

    final response = await http.get(
      Uri.parse(url),
      headers: Constants.header,
    );

    print("======");
    print(response.body);
    print("======");

    if (response.statusCode == 200) {
      Map<String, dynamic> result = json.decode(response.body);
      PendingServiceModel res = pendingServiceModelFromJson(response.body);

      if (res.code == "000") {
        print("00000000");
        return res.data;
      } else {
        throw PlatformException(
          code: result["code"].toString(),
          message: result["message"].toString(),
        );
      }
      // return responds;
    } else {
      // return null;
      print(response.statusCode);
      throw PlatformException(
        code: response.statusCode.toString(),
        message: "Error connecting to server",
      );
    }
  }

  static Future<UserData> signup({
    String firstName,
    String lastName,
    String phone,
    String email,
    String password,
    String confirmPassword,
    String refCode,
  }) async {
    print("API called");
    final url = "${Constants.url}/signup";
    print(url);

    final response = await http.post(
      Uri.parse(url),
      headers: Constants.header,
      body: jsonEncode({
        'firstName': firstName,
        'lastName': lastName,
        'phone': phone,
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'referralCode': refCode,
      }),
    );

    print("======");
    print(response.body);
    print("======");

    if (response.statusCode == 200) {
      Map<String, dynamic> result = json.decode(response.body);
      LoginModel res = loginModelFromJson(response.body.toString());

      if (res.code == "000") {
        return res.data;
      } else {
        throw PlatformException(
          code: result["code"].toString(),
          message: result["message"].toString(),
        );
      }
      // return responds;
    } else {
      // return null;
      print(response.statusCode);
      throw PlatformException(
        code: response.statusCode.toString(),
        message: "Error connecting to server",
      );
    }
  }
}
