import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/apis/auth_api.dart';
import 'package:servicehub/provider/globals.dart';
import 'package:servicehub/utils/internet_check.dart';
import 'package:servicehub/utils/localStorage.dart';
import 'package:servicehub/utils/serviceLocator.dart';
import 'package:servicehub/utils/widgets/errorWidget.dart';

class AuthController {
  static login(
    BuildContext context,
    String email,
    String password,
  ) async {
    final _def = Provider.of<Globals>(context, listen: false);

    try {
      LocalStorageService storageService = locator<LocalStorageService>();
      bool checkinternet = await internetCheck();
      _def.setLoading(true);
      if (checkinternet) {
        var res = await AuthApi.login(email: email, password: password);

        if (res != null) {
          storageService.isLoggedIn = true;
          return res;
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
        );

        if (res != null) {
          storageService.isLoggedIn = true;
          return res;
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
