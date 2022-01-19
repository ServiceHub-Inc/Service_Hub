import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:servicehub/models/categoriesModel.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'package:servicehub/models/promotedServiceModel.dart';
import 'package:servicehub/pages/HomePage/model/popularServiceModel.dart';
import 'package:servicehub/utils/constants.dart';

class ServicesApi {
  static Future<List<PendingServiceDatum>> pendingServices() async {
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

  static Future<List<PromotedServiceDatum>> promotedServices() async {
    print("API called");
    final url = "${Constants.url}/promoted-services";
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
      PromotedServiceModel res = promotedServiceModelFromJson(response.body);

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

  static Future<List<CategoryDatum>> serviceCategories() async {
    print("API called");
    final url = "${Constants.url}/service-categories";
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
      ServiceCategoriesModel res =
          serviceCategoriesModelFromJson(response.body);

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

  static Future<List<PopularServiceDatum>> popularServices() async {
    print("API called");
    final url = "${Constants.url}/popular-services";
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
      PopularServicesModel res = popularServicesModelFromJson(response.body);

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
}
