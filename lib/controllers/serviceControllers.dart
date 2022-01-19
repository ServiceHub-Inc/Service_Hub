// ignore_for_file: missing_return

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/apis/services_api.dart';
import 'package:servicehub/models/categoriesModel.dart';
import 'package:servicehub/models/pendingServiceModel.dart';
import 'package:servicehub/models/promotedServiceModel.dart';
import 'package:servicehub/provider/globals.dart';
import 'package:servicehub/utils/internet_check.dart';
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

  static Future<List<PromotedServiceDatum>> promotedServices(
    BuildContext context,
  ) async {
    final _def = Provider.of<Globals>(context, listen: false);

    try {
      bool checkinternet = await internetCheck();
      _def.setLoading(true);
      if (checkinternet) {
        var res = await ServicesApi.promotedServices();

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

  static Future<List<CategoryDatum>> serviceCategories(
    BuildContext context,
  ) async {
    final _def = Provider.of<Globals>(context, listen: false);

    try {
      bool checkinternet = await internetCheck();
      _def.setLoading(true);
      if (checkinternet) {
        var res = await ServicesApi.serviceCategories();

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
}
