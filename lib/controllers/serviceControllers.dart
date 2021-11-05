import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/apis/auth_api.dart';
import 'package:servicehub/apis/services_api.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'package:servicehub/pages/HomePage/widgets/BottomNavigationBar.dart';
import 'package:servicehub/provider/globals.dart';
import 'package:servicehub/utils/internet_check.dart';
import 'package:servicehub/utils/localStorage.dart';
import 'package:servicehub/utils/serviceLocator.dart';
import 'package:servicehub/utils/widgets/errorWidget.dart';

class ServiceController {
  static Future<List<PendingServiceDatum>> pendingServices(
    BuildContext context,
  ) async {
    final _def = Provider.of<Globals>(context, listen: false);

    try {
      bool checkinternet = await internetCheck();
      _def.setLoading(true);
      if (checkinternet) {
        var res = await ServicesApi.pendingServices();

        if (res != null) {
          print("res is not null");
          return res;
        }
      } else {
        showNetworkMessage(context, "Please check your internet");
      }
    } on PlatformException catch (e) {
      showErrorMessage(context, e.message ?? "An Error Occured");
      return null;
    } on SocketException catch (_) {
      showErrorMessage(context, "Error connecting to service");
      return null;
    } finally {
      print('finished');
      _def.setLoading(false);
    }
  }

  static signup(
    Map<String, dynamic> details,
  ) async {
    BuildContext context = details["context"];
    final _def = Provider.of<Globals>(context, listen: false);

    try {
      LocalStorageService storageService = locator<LocalStorageService>();
      bool checkinternet = await internetCheck();
      String firstName = details["firstName"] ?? "";
      String lastName = details["lastName"] ?? "";
      String phone = details["phone"] ?? "";
      String email = details["email"] ?? "";
      String refCode = details["refCode"] ?? "";
      String password = details["password"] ?? "";
      String confirmPassword = details["confirmPassword"] ?? "";

      _def.setLoading(true);

      if (checkinternet) {
        var res = await AuthApi.signup(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          email: email,
          password: password,
          confirmPassword: confirmPassword,
          refCode: refCode,
        );

        if (res != null) {
          _def.setUser(res);
          storageService.isLoggedIn = true;
          storageService.username = res.userId;

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => MyBottomNaigationBar(),
            ),
            (route) => false,
          );
        }
      } else {
        showNetworkMessage(context, "Please check your internet");
      }
    } on PlatformException catch (e) {
      showErrorMessage(context, e.message ?? "An Error Occured");
    } on SocketException catch (_) {
      showErrorMessage(context, "Error connecting to service");
    } finally {
      print('finished');
      _def.setLoading(false);
    }
  }
}
