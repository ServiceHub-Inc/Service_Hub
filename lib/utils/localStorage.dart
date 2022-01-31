import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static LocalStorageService _instance;
  static SharedPreferences _preferences;

  static Future<LocalStorageService> getInstance() async {
    if (_instance == null) {
      _instance = LocalStorageService();
    }

    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }

    return _instance;
  }

  //KEYS
  static const String HasAgreedToTNC = 'agreeTNC';
  static const String DarkModeKey = 'darkmode';
  static const String LoggedInKey = 'isLoggedIn';
  static const String RememberMe = 'rememberMe';
  static const String UsernameKey = 'username';
  static const String ProfilePicKey = 'profilePic';
  static const String UserData = 'userData';

  bool get agreeTNC => _getFromDisk(HasAgreedToTNC) ?? false;
  set agreeTNC(bool value) => _saveToDisk(HasAgreedToTNC, value);

  bool get darkMode => _getFromDisk(DarkModeKey) ?? false;
  set darkMode(bool value) => _saveToDisk(DarkModeKey, value);

  bool get isLoggedIn => _getFromDisk(LoggedInKey) ?? false;
  set isLoggedIn(bool value) => _saveToDisk(LoggedInKey, value);

  bool get rememberMe => _getFromDisk(RememberMe) ?? false;
  set rememberMe(bool value) => _saveToDisk(RememberMe, value);

  String get username => _getFromDisk(UsernameKey) ?? '';
  set username(String value) => _saveToDisk(UsernameKey, value);

  String get userData => _getFromDisk(UserData) ?? '';
  set userData(String data) => _saveToDisk(UserData, data);

  void _saveToDisk<T>(String key, T content) {
    print('(TRACE) LocalStorageService:_saveToDisk. key: $key value: $content');

    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }

  dynamic _getFromDisk(String key) {
    var value = _preferences.get(key);
    print('(TRACE) LocalStorageService:_getFromDisk. key: $key value: $value');
    return value;
  }
}
