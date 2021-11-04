import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servicehub/models/loginModel.dart';

class Globals with ChangeNotifier {
  bool _isLoading = false;
  bool _hasInternet = false;
  String _profilePic;
  UserData user;

  String get getProfilePic => _profilePic;
  bool get getLoading => _isLoading;
  bool get getInternet => _hasInternet;
  UserData get getUser => user;

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
}
