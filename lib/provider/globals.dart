import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servicehub/models/loginModel.dart';
import 'package:servicehub/models/popularServiceModel.dart';
import 'package:servicehub/utils/localStorage.dart';
import 'package:servicehub/utils/serviceLocator.dart';

LocalStorageService storageService = locator<LocalStorageService>();
class Globals with ChangeNotifier {
  
  bool _isLoading = false;
  bool _hasInternet = false;
  String _profilePic;
  UserData user = userDataFromList(storageService.userData);
  List<PopularServiceDatum> _services = [];

  String get getProfilePic => _profilePic;
  bool get getLoading => _isLoading;
  bool get getInternet => _hasInternet;
  UserData get getUser => user;
  List<PopularServiceDatum> get getServices => _services;

  setInternet(bool load) {
    print("____ setting internet");
    _hasInternet = load;
    notifyListeners();
  }

  setLoading(bool load) {
    _isLoading = load;
    notifyListeners();
  }

  setUser(UserData _user) {
    user = _user;
    notifyListeners();
  }

  setProfilePic(String data) {
    print("setting profile pic");
    _profilePic = data;
    // notifyListeners();
  }

  setServices(List<PopularServiceDatum> services) {
    print("setting popular services in provider");
    _services = services;
    notifyListeners();
  }
}
